package com.phicomm.speaker.device.custom.handler;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

import com.phicomm.speaker.device.custom.ai.ConversationHistory;
import com.phicomm.speaker.device.custom.ai.OpenAIClient;
import com.phicomm.speaker.device.custom.ai.PersonaConversationManager;
import com.phicomm.speaker.device.custom.config.AIConfig;
import com.phicomm.speaker.device.custom.engine.PlaybackStateMonitor;
import com.phicomm.speaker.device.custom.util.EventLog;
import com.phicomm.speaker.device.custom.event.EavesdropperTriggerEvent;
import com.phicomm.speaker.device.custom.persona.PersonaConfig;
import com.phicomm.speaker.device.custom.persona.PersonaManager;
import com.phicomm.speaker.device.custom.tts.XfyunTtsClient;
import com.unisound.vui.engine.ANTHandlerContext;
import com.unisound.vui.handler.SimpleUserEventInboundHandler;
import com.unisound.vui.util.LogMgr;
import com.unisound.vui.util.ThreadUtils;

import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * 插嘴处理器
 * 处理主动监听到用户说话后的插嘴逻辑
 */
public class EavesdropperHandler extends SimpleUserEventInboundHandler<EavesdropperTriggerEvent> {

    private static final String TAG = EavesdropperHandler.class.getSimpleName();
    private static final String LOG_FILE = "/sdcard/eav_event.log";
    
    /**
     * 写入日志到文件
     */
    private static void writeLog(String message) {
        try {
            FileWriter fw = new FileWriter(LOG_FILE, true);
            String timestamp = new SimpleDateFormat("HH:mm:ss.SSS", Locale.US).format(new Date());
            fw.append(timestamp).append(" [").append(TAG).append("] ").append(message).append("\n");
            fw.close();
        } catch (Exception e) {
            LogMgr.e(TAG, "写入日志失败: " + e);
        }
    }

    private OpenAIClient openAIClient;
    private XfyunTtsClient xfyunTtsClient;
    private Context context;

    @Override
    public boolean onASREventEngineInitDone(ANTHandlerContext ctx) {
        this.context = ctx.androidContext();
        AIConfig config = AIConfig.load(this.context);
        this.openAIClient = new OpenAIClient(config);
        
        // 初始化讯飞 TTS 客户端
        this.xfyunTtsClient = new XfyunTtsClient();
        
        LogMgr.d(TAG, "EavesdropperHandler initialized with model: " + config.getModel());
        writeLog("EavesdropperHandler 初始化完成");
        return super.onASREventEngineInitDone(ctx);
    }

    @Override
    public boolean acceptInboundEvent0(EavesdropperTriggerEvent evt) throws Exception {
        return evt != null && evt.getUserSpeech() != null;
    }

    @Override
    public void eventReceived(EavesdropperTriggerEvent evt, ANTHandlerContext ctx) throws Exception {
        String userSpeech = evt.getUserSpeech();
        float confidence = evt.getConfidence();

        EventLog.log(TAG, "Handler triggered: \"" + userSpeech + "\" conf=" + confidence);

        // 1. 检查是否在其他模式工作
        if (isOtherModeWorking(ctx)) {
            LogMgr.d(TAG, "Other mode is working, skip eavesdropping");
            return;
        }

        // 2. 激活插嘴人格
        PersonaManager.activatePersona(PersonaConfig.EAVESDROPPER);

        // 3. 获取插嘴人格配置
        PersonaConfig config = PersonaConfig.getActivePersona();

        // 4. 延迟响应(模拟思考时间)+ 子线程做 LLM 网络调用
        // (Android 5.1 主线程不能做网络请求, NetworkOnMainThreadException)
        final long delay = config.getEavesdropResponseDelayMs();
        ThreadUtils.execute(new Runnable() {
            @Override
            public void run() {
                if (delay > 0) {
                    try { Thread.sleep(delay); } catch (InterruptedException ignored) {}
                }
                generateAndPlayEavesdropResponse(ctx, userSpeech, config);
            }
        });
    }

    /**
     * 生成并播放插嘴回复
     */
    private void generateAndPlayEavesdropResponse(ANTHandlerContext ctx,
                                                   String userSpeech,
                                                   PersonaConfig config) {
        try {
            String systemPrompt = config.getSystemPrompt();

            // ⭐ 用 EAVESDROPPER 独立的对话历史(20 轮 / 10 分钟惰性清理)
            ConversationHistory history = PersonaConversationManager.getHistory(PersonaConfig.EAVESDROPPER);
            String historyText = history.getFormattedHistory();
            LogMgr.d(TAG, "Eavesdropper history turns: " + history.size());

            // 1. 调用大模型(带历史 + 嘴贱 systemPrompt)
            EventLog.log(TAG, "LLM call: \"" + userSpeech + "\" hist_turns=" + history.size());
            writeLog("插嘴模式 LLM 调用: " + userSpeech);
            
            String response = null;
            if (openAIClient != null) {
                response = openAIClient.chatWithHistory(userSpeech, historyText, systemPrompt);
            } else {
                EventLog.log(TAG, "openAIClient not initialized!");
                writeLog("openAIClient 未初始化");
            }

            if (response == null || response.isEmpty()) {
                EventLog.log(TAG, "LLM null/empty response, using fallback");
                writeLog("LLM 返回为空,使用 fallback");
                response = "嗯? 听到啥了, 你刚才嘀咕啥呢?";
            } else {
                EventLog.log(TAG, "LLM response: \"" + response + "\"");
                writeLog("LLM 返回: " + response);
                history.addTurn(userSpeech, response);
            }

            // ⭐ 休眠模式下不调 stopWakeup/stopASR
            EventLog.log(TAG, "playTTS: \"" + response + "\"");
            writeLog("准备播放 TTS: " + response);
            
            // 主动 mark TTS playing(不依赖 onTTSEventPlayingStart 事件传递)
            PlaybackStateMonitor.setTTSPlaying(true);
            
            // ⭐ 使用讯飞 TTS 合成播放
            final String finalResponse = response;
            final boolean[] ttsPlayed = {false};  // 标记是否成功调用讯飞 TTS
            
            if (xfyunTtsClient == null) {
                writeLog("错误: xfyunTtsClient 为 null,降级到原厂 TTS");
                ctx.playTTS(finalResponse);
                ttsPlayed[0] = false;
            } else {
                writeLog("调用讯飞 TTS: synthesizeAndPlay");
                xfyunTtsClient.synthesizeAndPlay(context, response, new XfyunTtsClient.TtsCallback() {
                    @Override
                    public void onSuccess(String audioPath) {
                        writeLog("插嘴 TTS 播放成功: " + audioPath);
                        LogMgr.d(TAG, "插嘴 TTS 播放成功: " + audioPath);
                        PlaybackStateMonitor.setTTSPlaying(false);
                        // 4. 记录交互时间(重置空闲计时)
                        PersonaManager.recordInteraction();
                    }
                    
                    @Override
                    public void onError(String error) {
                        writeLog("插嘴 TTS 失败: " + error + ",降级到原厂 TTS");
                        LogMgr.e(TAG, "插嘴 TTS 失败: " + error);
                        ctx.playTTS(finalResponse);
                        ttsPlayed[0] = false;
                        
                        // 估计原厂 TTS 时间
                        int estimatedMs = Math.max(2500, finalResponse.length() * 250 + 1500);
                        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                PlaybackStateMonitor.setTTSPlaying(false);
                                PersonaManager.recordInteraction();
                            }
                        }, estimatedMs);
                    }
                });
                ttsPlayed[0] = true;
                writeLog("讯飞 TTS 调用已发起 (异步执行中)");
            }
            
            // 如果成功调用讯飞 TTS,不需要估计时间(回调中会处理)
            // 如果降级到原厂 TTS 或 xfyunTtsClient 为 null,才需要估计时间
            if (!ttsPlayed[0]) {
                int estimatedMs = Math.max(2500, finalResponse.length() * 250 + 1500);
                writeLog("使用估计时间: " + estimatedMs + "ms");
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        EventLog.log(TAG, "TTS estimated done after "
                                + finalResponse.length() + " chars,trigger setTTSPlaying(false)");
                        writeLog("TTS 估计播放完成");
                        PlaybackStateMonitor.setTTSPlaying(false);
                        // 4. 记录交互时间(重置空闲计时)
                        PersonaManager.recordInteraction();
                    }
                }, estimatedMs);
            }

        } catch (Exception e) {
            LogMgr.e(TAG, "Failed to generate eavesdrop response", e);
            writeLog("生成插嘴回复失败: " + e.getMessage());
        }
    }

    /**
     * 检查是否在其他模式工作
     */
    private boolean isOtherModeWorking(ANTHandlerContext ctx) {
        // 检查闭嘴模式
        if (PersonaManager.isShutUpDisabled()) {
            return true;
        }
        return false;
    }

    @Override
    public void initPriority() {
        // 优先级低于 PersonaRouterHandler, 但高于普通聊天Handler
        setPriority(350);
    }
}
