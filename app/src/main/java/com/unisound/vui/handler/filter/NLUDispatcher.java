package com.unisound.vui.handler.filter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.text.TextUtils;
import com.google.gson.reflect.TypeToken;
import com.phicomm.speaker.device.R;
import com.phicomm.speaker.device.utils.PhicommUtils;
import com.unisound.vui.common.config.ANTConfigPreference;
import com.unisound.vui.common.network.NetUtil;
import com.unisound.vui.engine.ANTHandlerContext;
import com.unisound.vui.handler.ANTEventDispatcher;
import com.unisound.vui.util.*;

import java.util.List;
import nluparser.MixtureProcessor;
import nluparser.NluProcessor;
import nluparser.scheme.Intent;
import nluparser.scheme.LocalASR;
import nluparser.scheme.Mixture;
import nluparser.scheme.NLU;
import com.phicomm.speaker.device.custom.event.PersonaActivationEvent;
import com.phicomm.speaker.device.custom.persona.PersonaConfig;
import com.phicomm.speaker.device.custom.persona.PersonaManager;

import com.unisound.vui.engine.ANTPipeline;
import nluparser.scheme.Result;
import nluparser.scheme.SName;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class NLUDispatcher extends ANTEventDispatcher {

    /* renamed from: a  reason: collision with root package name */
    private boolean f423a;
    private boolean b;
    private final MixtureProcessor c;

    // ⭐ v82: 识别卡死看门狗。
    // 实测(15:55): 唤醒成功→本地识别"打开蓝牙"成功→VAD 超时停录音→管线等待云端最终结果,
    // 而云 ASR/NLU 服务器已死 → 永远等不到 → 设备卡在"识别中"(蓝灯闪) = 用户说的"死机"。
    // 录音停止后 8 秒内没有最终结果就强制 cancelEngine 回到待唤醒状态。
    private static final long RECOG_STALL_TIMEOUT_MS = 8000;
    private final Handler watchdogHandler = new Handler(Looper.getMainLooper());
    private Runnable recogStallWatchdog;

    private void cancelRecogStallWatchdog() {
        if (recogStallWatchdog != null) {
            watchdogHandler.removeCallbacks(recogStallWatchdog);
            recogStallWatchdog = null;
        }
    }

    private void scheduleRecogStallWatchdog(final ANTHandlerContext ctx) {
        cancelRecogStallWatchdog();
        recogStallWatchdog = new Runnable() {
            @Override
            public void run() {
                LogMgr.e("NLUDispatcher", "[WATCHDOG] recognition stalled > "
                        + RECOG_STALL_TIMEOUT_MS + "ms (dead cloud ASR?), force cancelEngine to recover");
                try {
                    ctx.cancelEngine();
                } catch (Throwable t) {
                    LogMgr.e("NLUDispatcher", "[WATCHDOG] cancelEngine failed: " + t);
                }
                recogStallWatchdog = null;
            }
        };
        watchdogHandler.postDelayed(recogStallWatchdog, RECOG_STALL_TIMEOUT_MS);
    }
    private NluProcessor d;
    private Handler e = new Handler();
    private Runnable f;

    public NLUDispatcher(MixtureProcessor mixtureProcessor) {
        this.c = mixtureProcessor;
        this.d = new NluProcessor.Builder().registerTypeMapper(SName.ERROR_REPORT, new TypeToken<NLU<Intent.NullIntent, Result.NullResult>>() {
            /* class com.unisound.vui.handler.filter.NLUDispatcher.AnonymousClass1 */
        }.getType()).build();
    }

    private void a() {
        if (this.f != null) {
            LogMgr.d("NLUDispatcher", "stop asr or nlu result timeout task");
            this.e.removeCallbacks(this.f);
            this.f = null;
        }
    }

    private void a(ANTHandlerContext aNTHandlerContext, boolean z) {
        aNTHandlerContext.engine().attr(AttributeKey.valueOf(NLUDispatcher.class, "RECOGNITION_HANDLED")).set(Boolean.valueOf(z));
    }

    private boolean a(float f2) {
        return f2 > ANTConfigPreference.FUNCTION_WAKEUP_BENCHMARK;
    }

    private boolean a(Context context, String str) {
        return UserPerferenceUtil.getCmopetitionWord(context).contains(str);
    }

    private boolean a(ANTHandlerContext aNTHandlerContext) {
        if (b(aNTHandlerContext)) {
            this.f423a = true;
            NLU c2 = c("bluetooth_error");
            c2.setText(aNTHandlerContext.androidContext().getString(R.string.tts_music_change_no_supported));
            c(aNTHandlerContext, c2);
            return true;
        } else if (c(aNTHandlerContext) && !this.b) {
            return false;
        } else {
            this.f423a = true;
            NLU c3 = c("-90002");
            c3.setText("no network");
            c(aNTHandlerContext, c3);
            return true;
        }
    }

    private boolean a(ANTHandlerContext aNTHandlerContext, String str, Mixture<Intent, Result> mixture) {
        NLU<Intent, Result> nlu = mixture.getNluList().get(0);
        if (a(mixture, nlu)) {
            LogMgr.d("NLUDispatcher", "handleNetFilterService return filter service ...");
            return false;
        }
        this.f423a = true;
        nlu.setLocalNLU(false);
        nlu.setAsrResult(str);
        b(aNTHandlerContext, nlu);
        return true;
    }

    private boolean a(ANTHandlerContext aNTHandlerContext, String str, NLU nlu) {
        if (a(aNTHandlerContext, nlu)) {
            return false;
        }
        this.f423a = true;
        nlu.setLocalNLU(true);
        nlu.setAsrResult(str);
        c(aNTHandlerContext, nlu);
        return true;
    }

    private boolean a(ANTHandlerContext aNTHandlerContext, LocalASR localASR) {
        aNTHandlerContext.fireUserEventTriggered(localASR);
        return true;
    }

    private boolean a(ANTHandlerContext aNTHandlerContext, NLU nlu) {
        return a(nlu.getService()) && !this.b && !b(aNTHandlerContext);
    }

    private boolean a(String str) {
        return a.a(str);
    }

    private boolean a(LocalASR localASR, NLU nlu) {
        return nlu.getResponseCode() == 0 && localASR.getScore() > ANTConfigPreference.recognizerScore;
    }

    private boolean a(Mixture<Intent, Result> mixture) {
        return mixture.getNetASRList() != null && "full".equals(mixture.getNetASRList().get(0).getResultType());
    }

    private boolean a(Mixture<Intent, Result> mixture, NLU nlu) {
        return a(nlu.getService()) && !a(mixture);
    }

    private void b(ANTHandlerContext aNTHandlerContext, NLU nlu) {
        LogMgr.d("NLUDispatcher", "preHandleNetNlu nlu :" + nlu);
        if (TextUtils.isEmpty(nlu.getText())) {
            c(aNTHandlerContext, c("-63551"));
        } else {
            c(aNTHandlerContext, nlu);
        }
    }

    private boolean b(float f2) {
        return f2 > ANTConfigPreference.effectWakeupBenchmark;
    }

    private boolean b(Context context, String str) {
        return !UserPerferenceUtil.getMainWakeupWord(context).contains(str);
    }

    private boolean b(ANTHandlerContext aNTHandlerContext) {
        return ((Integer) aNTHandlerContext.engine().unsafe().getOption(1001)).intValue() == 2;
    }

    private boolean b(String str) {
        return a(str);
    }

    private boolean b(Mixture<Intent, Result> mixture) {
        List<NLU<Intent, Result>> nluList = mixture.getNluList();
        return (nluList == null || nluList.size() == 0) ? false : true;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private NLU c(String str) {
        NLU nlu = new NLU();
        nlu.setService(SName.ERROR_REPORT);
        nlu.setCode(str);
        return nlu;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void c(ANTHandlerContext aNTHandlerContext, NLU nlu) {
        a();
        aNTHandlerContext.pipeline().fireASREvent(1102);
        a(aNTHandlerContext, true);
        aNTHandlerContext.cancelEngine();
        aNTHandlerContext.fireUserEventTriggered(nlu);
        this.b = false;
        this.f423a = false;
    }

    private boolean c(Context context, String str) {
        return UserPerferenceUtil.getMainWakeupWord(context).contains(str);
    }

    private boolean c(ANTHandlerContext aNTHandlerContext) {
        return NetUtil.isNetworkConnected(aNTHandlerContext.androidContext());
    }

    private void d(final ANTHandlerContext aNTHandlerContext) {
        if (this.f == null) {
            LogMgr.d("NLUDispatcher", "start asr or nlu result timeout task");
            this.f = new Runnable() {
                /* class com.unisound.vui.handler.filter.NLUDispatcher.AnonymousClass2 */

                @Override
                public void run() {
                    LogMgr.d("NLUDispatcher", "process asr or nlu result timeout, dispatch network error nlu ");
                    NLU c =    c("-90002");
                    c.setText("no network");
                       c(aNTHandlerContext, c);
                }
            };
            this.e.postDelayed(this.f, 15000);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onASRError(ANTHandlerContext ctx, String error) {
        d(ctx);
        LogMgr.i("NLUDispatcher", "-onASRError-" + error);
        JSONObject parseToJSONObject = JsonTool.parseToJSONObject(error);
        String jsonValue = JsonTool.getJsonValue(parseToJSONObject, "errorCode");
        String jsonValue2 = JsonTool.getJsonValue(parseToJSONObject, "errorMsg");
        if (b(jsonValue)) {
            this.b = true;
            return false;
        }
        this.f423a = true;
        NLU c2 = c(jsonValue);
        c2.setText(jsonValue2);
        c(ctx, c2);
        return false;
    }

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onASREventCancel(ANTHandlerContext ctx) {
        a();
        cancelRecogStallWatchdog();
        return false;
    }

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onASREventRecordingStart(ANTHandlerContext ctx) {
        LogMgr.i("NLUDispatcher", "onASREventRecordingStart");
        a();
        cancelRecogStallWatchdog();
        a(ctx, false);
        return super.onASREventRecordingStart(ctx);
    }

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onASREventRecordingStop(ANTHandlerContext ctx) {
        LogMgr.i("NLUDispatcher", "onASREventRecordingStop -> schedule recog-stall watchdog");
        // ⭐ v82: 录音停止 = 等最终识别结果, 云端死了就会卡死, 挂看门狗兜底
        scheduleRecogStallWatchdog(ctx);
        return super.onASREventRecordingStop(ctx);
    }

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onASREventRecognitionEnd(ANTHandlerContext ctx) {
        LogMgr.i("NLUDispatcher", "onASREventRecognitionEnd -> cancel recog-stall watchdog");
        cancelRecogStallWatchdog();
        return super.onASREventRecognitionEnd(ctx);
    }

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onASREventEnd(ANTHandlerContext ctx) {
        cancelRecogStallWatchdog();
        return super.onASREventEnd(ctx);
    }

    /**
     * 从原厂 ASR 结果 JSON 里提取识别文本。
     * 兼容已知结构: local_asr / net_asr / net_nlu / asr_recongize(asr_recognize) / text
     */
    private String extractRecognitionText(String result) {
        if (result == null) {
            return null;
        }
        String trimmed = result.trim();
        if (trimmed.isEmpty()) {
            return null;
        }
        try {
            // USC 流式返回可能是多段拼接 "{seg1}{seg2}", 整体解析不了时取最后一段
            if (trimmed.contains("}{")) {
                trimmed = trimmed.substring(trimmed.lastIndexOf("}{") + 1);
            }
            JSONObject root = new JSONObject(trimmed);
            JSONArray arr = null;
            if (root.has("local_asr")) {
                arr = root.getJSONArray("local_asr");
            } else if (root.has("net_asr")) {
                arr = root.getJSONArray("net_asr");
            } else if (root.has("net_nlu")) {
                arr = root.getJSONArray("net_nlu");
            }
            if (arr != null && arr.length() > 0) {
                JSONObject first = arr.getJSONObject(0);
                String t = first.optString("recognition_result", "");
                if (t.isEmpty()) {
                    t = first.optString("text", "");
                }
                if (!t.isEmpty()) {
                    return t.trim();
                }
            }
            String plain = root.optString("asr_recongize", "");
            if (plain.isEmpty()) {
                plain = root.optString("asr_recognize", "");
            }
            if (plain.isEmpty()) {
                plain = root.optString("text", "");
            }
            return plain.trim();
        } catch (Exception e) {
            LogMgr.e("NLUDispatcher", "[EAVES] extractRecognitionText failed: " + e.getMessage());
            return null;
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onASRResultLocal(ANTHandlerContext ctx, String result) {
        LogMgr.d("NLUDispatcher", "onASRResultLocal:" + result);

        if (this.f423a) {
            LogMgr.e("NLUDispatcher", "result has handled, local nlu handle return");
            return true;
        }

        d(ctx);
        LocalASR localASR = this.c.from(result).getLocalASRList().get(0);
        NLU from = this.d.from(localASR.getRecognitionResult());
        if (!a(localASR, from)) {
            return a(ctx);
        }
        if (a(ctx.androidContext(), from.getText())) {
            return false;
        }
        return a(ctx, result, from);
    }

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onASRResultNet(ANTHandlerContext ctx, String result) {
        String str;
        LogMgr.d("NLUDispatcher", "onASRResultNet:" + result);

        if (this.f423a) {
            LogMgr.e("NLUDispatcher", "result has handled, net nlu handle return");
            return true;
        }

        d(ctx);
        Mixture<Intent, Result> from = this.c.from(result);
        if (from == null) {
            try {
                str = (String) ((JSONObject) JsonTool.parseToJSONObject(result).getJSONArray("net_nlu").get(0)).get("text");
            } catch (JSONException e2) {
                LogMgr.e("NLUDispatcher", "unsupported domain 解析用户说的话出错 : " + e2.getMessage());
                str = result;
            }
            LogMgr.w("NLUDispatcher", "unsupported domain " + result);
            this.f423a = true;
            NLU c2 = c("unsupportedDomain");
            c2.setText(str);
            b(ctx, c2);
            return true;
        } else if (b(from)) {
            return a(ctx, result, from);
        } else {
            // hook

//            try {
//                if (android.os.Build.VERSION.SDK_INT > 9) {
//                    StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
//                    StrictMode.setThreadPolicy(policy);
//                }
//
//                if(!com.unisound.b.s.c(ctx.androidContext())){
//                    return false;
//                }
//
//                String word = from.getNetASRList().get(0).getRecognitionResult();
//
//                LogMgr.d("PPP HOOK", "Recognition: " + word);
//
//
//                if("".equals(word) || word.contains("returnCode")){
//                    return false;
//                }
//
//
//
//                String newResult = PhicommUtils.byNewApi(word);
//
//                Mixture<Intent, Result> newForm = this.c.from(newResult);
//                if(b(newForm)) {
//                    return a(ctx, newResult, newForm);
//                }
//
//
//            }catch (Exception e){
//                e.printStackTrace();
//            }



            return false;
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onWakeupResult(ANTHandlerContext ctx, String result) {
        LogMgr.d("NLUDispatcher", "onWakeupResult:" + result);
        // ⭐ v82: 新一轮唤醒, 上一轮的卡死看门狗作废
        cancelRecogStallWatchdog();
        LocalASR localASR = this.c.from(result).getLocalASRList().get(0);
        String trim = localASR.getRecognitionResult().trim();
        
        LogMgr.d("NLUDispatcher", "[DEBUG] Recognized wakeup word: '" + trim + "'");

        if (a(ctx.androidContext(), trim)) {
            LogMgr.d("NLUDispatcher", trim + " is CompetitionWord, return");
            return true;
        } else if (b(ctx.androidContext(), trim) && a(localASR.getScore())) {
            LogMgr.d("NLUDispatcher", "isFunctionWakeupWord : wakeupResult:" + trim + ";success core:" + localASR.getScore());
            return a(ctx, localASR);
        } else if (!c(ctx.androidContext(), trim) || !b(localASR.getScore())) {
            LogMgr.d("NLUDispatcher", "[DEBUG] Not a main wakeup word, score=" + localASR.getScore());
            return true;
        } else {
            LogMgr.d("NLUDispatcher", "isMainWakeupWord : wakeupResult:" + trim + ";success core:" + localASR.getScore());
            
            // ⭐ 检查是否是"闭嘴"命令
            if (isShutUpCommand(trim)) {
                LogMgr.d("NLUDispatcher", "Shut-up command detected: " + trim);
                
                // 启用闭嘴模式(1小时)
                PersonaManager.enableShutUpMode();
                
                // 播放确认提示
                ctx.playTTS("好的,我闭嘴一小时");
                
                // 记录交互时间
                PersonaManager.recordInteraction();
                
                return true;  // 拦截,不进入对话
            }
            
            // 查找对应的人格配置
            LogMgr.d("NLUDispatcher", "[DEBUG] Looking up persona for wakeup word: '" + trim + "'");
            PersonaConfig personaConfig = PersonaConfig.findByWakeupWord(trim);
            
            if (personaConfig != null) {
                LogMgr.d("NLUDispatcher", "[DEBUG] Found persona: " + personaConfig.getPersonaName() + " (" + personaConfig.getPersonaId() + ")");
                // 发布人格激活事件
                ctx.pipeline().fireUserEventTriggered(
                    new PersonaActivationEvent(trim, personaConfig.getPersonaId())
                );
                LogMgr.d("NLUDispatcher", "Published PersonaActivationEvent for: " + trim);
            } else {
                LogMgr.w("NLUDispatcher", "[DEBUG] No persona found for wakeup word: '" + trim + "'");
                LogMgr.w("NLUDispatcher", "[DEBUG] Available wakeup words: 你好小迪, 小讯小讯, 交接手续, 捣蛋鬼, 英语陪练师, 成语接龙");
            }
            
            return false;  // 放行,进入语音识别
        }
    }
    
    /**
     * 检查是否是"闭嘴"命令
     */
    private boolean isShutUpCommand(String text) {
        return text.contains("给我闭嘴") || 
               text.contains("闭嘴") || 
               text.contains("别听了") || 
               text.contains("别监听了") ||
               text.contains("安静一小时");
    }

    @Override // com.unisound.vui.engine.ANTInboundHandler, com.unisound.vui.engine.ANTInboundHandlerAdapter
    public void userEventTriggered(Object evt, ANTHandlerContext ctx) throws Exception {
        ctx.fireUserEventTriggered(evt);
    }

    public static void main(String[] args) {
        MixtureProcessor mixtureProcessor = new MixtureProcessor.Builder().build();
        String hook_res = "{'net_nlu':[{'semantic':{'intent':{'tag':'相声','category':'相声评书','keyword':'相声'}},'code':'SEARCH_CATEGORY','data':{'result':{'total':'1','playlist':[{'url_m4a_high':'http://aod.cos.tx.xmcdn.com/group31/M02/2B/C3/wKgJSVmT_JSz0FGhAI6Is9Fjw-g605.m4a','episode':691,'urlm4a':'http://aod.cos.tx.xmcdn.com/group31/M02/2B/C6/wKgJSVmT_Jeim-uMADZpM86L_MY216.m4a','play_count':122077,'title':'2014新年相声喜乐会  郭德纲 于谦《学评书》','url':'http://aod.cos.tx.xmcdn.com/group31/M02/2B/BE/wKgJSVmT_IWTn7j3AEZ_fjTItf0356.mp3','tags':','cover':'http://imgopen.xmcdn.com/group31/M09/20/BD/wKgJX1mBiHCR9cbqAAApsFjA_e4605.jpg!op_type=3&columns=100&rows=100','duration':1154,'update_time':'2017-08-16 16:04:57','url_high':'http://aod.cos.tx.xmcdn.com/group31/M02/2B/BF/wKgJSVmT_IvTQy78AIz-buUQbS8364.mp3','id':47545988,'cover_large':'http://imgopen.xmcdn.com/group31/M09/20/BD/wKgJX1mBiHCR9cbqAAApsFjA_e4605.jpg!op_type=3&columns=640&rows=640'}]'originIntent':{'nluSlotInfos':[]},'history':'cn.yunzhisheng.audio','source':'nlu','uniCarRet':{'result':{},'returnCode':609,'message':'aios-home.hivoice.cn'},'rc':0,'general':{'actionAble':'true','quitDialog':'true','text':'为您播放相声:','type':'T'},'returnCode':0,'audioUrl':'http://asrv3.hivoice.cn/trafficRouter/r/OVAVOb','service':'cn.yunzhisheng.audio','nluProcessTime':'98','text':'播放相声','responseId':'2a9be6f6b605411b83149795a3591b59'}]}";
        hook_res = hook_res.replace('\'','"');

        Mixture<Intent, Result> from2  = mixtureProcessor.from(hook_res);
        System.out.println(from2);
    }
}
