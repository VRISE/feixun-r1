package com.phicomm.speaker.device.custom.handler;

import android.content.Context;
import android.os.SysPrivateManager;
import android.util.Log;
import com.phicomm.speaker.device.R;
import com.phicomm.speaker.device.Receiver.MessageReceiver;
import com.phicomm.speaker.device.custom.ipc.PhicommLightController;
import com.phicomm.speaker.device.custom.keyevent.PhicommKeyEventController;
import com.phicomm.speaker.device.custom.keyevent.PhicommKeyEventProcessor;
import com.phicomm.speaker.device.custom.match.MatchProcessor;
import com.phicomm.speaker.device.custom.speech.SpeechManager;
import com.phicomm.speaker.device.custom.status.PhicommDeviceStatusProcessor;
import com.phicomm.speaker.device.custom.udid.UDIDProcessor;
import com.phicomm.speaker.device.utils.LogUtils;
import com.unisound.ant.device.bean.DstServiceName;
import com.unisound.ant.device.bean.SelfDefinationRequestInfo;
import com.unisound.ant.device.bean.SelfDefinationResponseInfo;
import com.unisound.ant.device.sessionlayer.SessionRegister;
import com.unisound.vui.common.media.IMediaPlayerStateListener;
import com.unisound.vui.common.media.UniMediaPlayer;
import com.unisound.vui.common.network.NetUtil;
import com.unisound.vui.engine.ANTEngine;
import com.unisound.vui.engine.ANTHandlerContext;
import com.unisound.vui.handler.ANTEventDispatcher;
import com.phicomm.speaker.device.custom.persona.PersonaConfig;
import com.phicomm.speaker.device.custom.persona.PersonaManager;
import com.phicomm.speaker.device.custom.engine.EavesdropperEngine;
import com.phicomm.speaker.device.custom.engine.PlaybackStateMonitor;
import com.unisound.vui.engine.ANTPipeline;
import com.unisound.vui.transport.out.ChangeWakeupWordEvent;
import com.unisound.vui.util.UserPerferenceUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PhicommInitializeHandler extends ANTEventDispatcher implements PhicommDeviceStatusProcessor.OnDeviceStatusChangedListener {
    private static final String FX_KEY_OTA_MODE = "fxotamode";
    private static final String FX_OTA_MODE_VALUE_SILENT = "silent";
    private static final String FX_SYSTEM_PRIVATE = "FXSystemPrivate";
    private static final String TAG = PhicommInitializeHandler.class.getSimpleName();
    private boolean isFristBoot = false;
    private ANTEngine mANTEngine;
    private Context mContext;
    private PhicommDeviceStatusProcessor mDeviceStatusProcessor;
    private PhicommKeyEventProcessor mKeyEventProcessor;
    private PhicommLightController mLightController;
    private SpeechManager mSpeechManager;
    private SysPrivateManager mSysPrivateManager = null;
    private MatchProcessor matchProcessor;
    private UDIDProcessor udidProcessor;
    private EavesdropperEngine mEavesdropperEngine;

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onASREventEngineInitDone(ANTHandlerContext ctx) {
        this.mContext = ctx.androidContext();
        this.mANTEngine = ctx.engine();
        this.mSpeechManager = new SpeechManager(this.mANTEngine);
        this.mLightController = new PhicommLightController(this.mContext);
        playInitDoneTips();
        return super.onASREventEngineInitDone(ctx);
    }

    private void playInitDoneTips() {
        try {
            this.mSysPrivateManager = (SysPrivateManager) this.mContext.getSystemService(FX_SYSTEM_PRIVATE);
            if (this.mSysPrivateManager != null && FX_OTA_MODE_VALUE_SILENT.equals(this.mSysPrivateManager.getBootProp(FX_KEY_OTA_MODE))) {
                Log.d(TAG, "playInitDoneTips, silent update");
                this.mSysPrivateManager.setBootProp(FX_KEY_OTA_MODE, "");
                initPhicommBusiness();
                return;
            }
        } catch (Throwable e) {
            LogUtils.e(TAG, "查询静默升级状态出错: ", e);
        }
        if (!NetUtil.isNetworkConnected(this.mContext)) {
            UniMediaPlayer.getInstance().playBeepSound("", R.raw.bootloader_completed, new IMediaPlayerStateListener() {
                /* class com.phicomm.speaker.device.custom.handler.PhicommInitializeHandler.AnonymousClass1 */

                @Override // com.unisound.vui.common.media.IMediaPlayerStateListener
                public void onPlayerState(int state, String tag) {
                    if (state == 4) {
                        PhicommInitializeHandler.this.isFristBoot = true;
                        if (UserPerferenceUtil.getDeviceBindState(PhicommInitializeHandler.this.mContext)) {
                            PhicommInitializeHandler.this.mANTEngine.playTTS(PhicommInitializeHandler.this.mContext.getString(R.string.tts_net_is_weak));
                        } else {
                            PhicommInitializeHandler.this.mANTEngine.playTTS(PhicommInitializeHandler.this.mContext.getString(R.string.tts_bootloader_welcome));
                        }
                        UniMediaPlayer.getInstance().removeIMediaPlayerStateListener(this);
                    } else if (state == 3) {
                        UniMediaPlayer.getInstance().removeIMediaPlayerStateListener(this);
                    }
                }
            }, false);
            return;
        }
        UniMediaPlayer.getInstance().playBeepSound(R.raw.bootloader_completed);
        initPhicommBusiness();
    }

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onTTSEventPlayingStart(ANTHandlerContext ctx) {
        Log.d(TAG, "onTTSEventPlayingStart, isFristBoot : " + this.isFristBoot);
        // TTS 开始: 通知插嘴引擎暂停, 释放 MIC 给系统
        PlaybackStateMonitor.setTTSPlaying(true);
        if (this.isFristBoot) {
            this.mSpeechManager.stopWakeup();
        }
        return super.onTTSEventPlayingStart(ctx);
    }

    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.handler.ANTEventDispatcher
    public boolean onTTSEventPlayingEnd(ANTHandlerContext ctx) {
        Log.d(TAG, "onTTSEventPlayingEnd, isFristBoot : " + this.isFristBoot);
        PlaybackStateMonitor.setTTSPlaying(false);
        if (this.isFristBoot) {
            this.isFristBoot = false;
            this.mSpeechManager.startWakeup();
            initPhicommBusiness();
        }

        // ⭐ 插嘴 session 期间播 TTS 完成后,主引擎会自动转 Speech 状态.
        // 强制 stopWakeup 保持 MIC 给我们的 EavesdropperSession,避免死锁.
        if (mEavesdropperEngine != null && mEavesdropperEngine.isRunning()) {
            Log.d(TAG, "Eavesdropper running, force stopWakeup after TTS to keep dormant");
            this.mSpeechManager.stopWakeup();
        }

        return super.onTTSEventPlayingEnd(ctx);
    }

    @Override // com.phicomm.speaker.device.custom.status.PhicommDeviceStatusProcessor.OnDeviceStatusChangedListener
    public void onDeviceStatusChanged(int prevStatus, int status) {
        if (prevStatus == 5 && status != 5) {
            this.mLightController.turnOffDormantLight();
            UserPerferenceUtil.setDormantLightState(this.mContext, false);
            onDormantStatusChanged(false);
        }
        if (prevStatus != 5 && status == 5) {
            UserPerferenceUtil.setDormantLightState(this.mContext, true);
            onDormantStatusChanged(true);
        }
        if (MessageReceiver.isSystemBootloader(this.mContext)) {
            LogUtils.d(TAG, "system boot finish, ignore");
            MessageReceiver.setSystemBootloader(this.mContext, false);
            return;
        }
        if (status == 0 && prevStatus == 2) {
            this.mSpeechManager.playTTS(R.string.tts_stop_match_net);
        } else if (status == 0 && prevStatus == 3) {
            this.mSpeechManager.playTTS(R.string.tts_close_bluetooth_for_phicomm);
        }
        if (prevStatus != 3 && status == 3) {
            LogUtils.d(TAG, "-----已切换成蓝牙模式, ASR 换成 local 模式-----");
            switchASRModeType(2);
        } else if (prevStatus == 3 && status != 3) {
            LogUtils.d(TAG, "-----已切换成非蓝牙模式, ASR 换成 mix 模式-----");
            switchASRModeType(0);
        }
        if (prevStatus == 5 && status != 2 && status != 5) {
            UserPerferenceUtil.setStartWakeupAfterSetWakeupWord(this.mContext, true);
        } else if (prevStatus == 2 && status != 5 && status != 2) {
            UserPerferenceUtil.setStartWakeupAfterSetWakeupWord(this.mContext, true);
        }
    }

    private void switchASRModeType(int type) {
        this.mANTEngine.unsafe().setASROption(1001, Integer.valueOf(type));
    }

    private void initPhicommBusiness() {
        initDeviceStatusListener();
        initKeyEventProcess();
        initCustomUDIDProcess();
        initCustomMatchProcess();
        PhicommDeviceStatusProcessor.getInstance().startMonitorStatus();
        // 初始化自定义唤醒词 "二师兄"
        initCustomWakeupWord();
        
        // ⭐ 初始化多人格唤醒词
        initMultiPersonaWakeupWords();
        
        // ⭐ 初始化 PersonaManager Context
        PersonaManager.setContext(this.mContext);
        
        // ⭐ 恢复人格状态
        PersonaManager.restorePersonaState(this.mContext);
        
        // ⭐ 仅初始化 EavesdropperEngine,不立即启动
        // 启动时机改为"双击进入休眠"事件 (onDormantStatusChanged(true))
        initEavesdropperEngine();
    }

    /**
     * 设置自定义唤醒词 "二师兄"
     * 原理: 通过 JSGF 词槽本地编译,无需云端训练,即时生效
     */
    private void initCustomWakeupWord() {
        String customWakeupWord = "二师兄";
        
        // 检查是否已经设置过,避免重复设置
        List<String> currentWords = UserPerferenceUtil.getMainWakeupWord(this.mContext);
        if (currentWords != null && currentWords.contains(customWakeupWord)) {
            Log.d(TAG, "Custom wakeup word already set: " + customWakeupWord);
            return;
        }
        
        Log.d(TAG, "Setting custom wakeup word: " + customWakeupWord);
        
        // 构建新的唤醒词列表: 保留原有默认唤醒词 + 添加自定义唤醒词
        List<String> newWakeupWords = new ArrayList<>();
        newWakeupWords.add(customWakeupWord);
        // 保留原有唤醒词(如"小讯小讯")
        newWakeupWords.addAll(UserPerferenceUtil.getDefaultWakeupWord(this.mContext));
        
        try {
            // 1. 保存到 SharedPreferences
            UserPerferenceUtil.setWakeupWord(this.mContext, newWakeupWords);
            
            // 2. 调用引擎更新唤醒词(会触发本地 JSGF 编译)
            this.mANTEngine.stopWakeup();
            this.mANTEngine.updateWakeupWord(newWakeupWords);
            
            // 3. 触发唤醒词变更事件 - 这里可能抛 NoSuchMethodError(smali/Java 字节码不匹配),
            //    用 Throwable 兜底确保 init 流程不被打断
            try {
                this.mANTEngine.pipeline().fireUserEventTriggered(new ChangeWakeupWordEvent(customWakeupWord));
            } catch (Throwable t) {
                Log.w(TAG, "fireUserEventTriggered(ChangeWakeupWordEvent) failed, ignoring: " + t);
            }

            Log.d(TAG, "Custom wakeup word set successfully: " + newWakeupWords);
        } catch (Throwable e) {
            Log.e(TAG, "Failed to set custom wakeup word: " + customWakeupWord, e);
        }
    }

    /**
     * 初始化多人格唤醒词
     */
    private void initMultiPersonaWakeupWords() {
        List<String> newWakeupWords = new ArrayList<>();
        
        // 添加所有被动人格的唤醒词
        List<PersonaConfig> passivePersonas = PersonaConfig.getPassivePersonas();
        for (PersonaConfig config : passivePersonas) {
            if (config.getWakeupWord() != null) {
                newWakeupWords.add(config.getWakeupWord());
            }
        }
        
        // 去重
        newWakeupWords = new ArrayList<>(new java.util.HashSet<>(newWakeupWords));
        
        try {
            // 1. 保存到 SharedPreferences
            UserPerferenceUtil.setWakeupWord(this.mContext, newWakeupWords);
            
            // 2. 停止唤醒并更新引擎(触发本地 JSGF 编译)
            this.mANTEngine.stopWakeup();
            this.mANTEngine.updateWakeupWord(newWakeupWords);
            
            // 3. 触发唤醒词变更事件 - 同样兜底 Throwable, 防止 NoSuchMethodError 阻塞 init
            String firstWakeupWord = newWakeupWords.isEmpty() ? "" : newWakeupWords.get(0);
            try {
                this.mANTEngine.pipeline().fireUserEventTriggered(new ChangeWakeupWordEvent(firstWakeupWord));
            } catch (Throwable t) {
                Log.w(TAG, "fireUserEventTriggered(ChangeWakeupWordEvent) failed, ignoring: " + t);
            }

            Log.d(TAG, "Multi-persona wakeup words initialized: " + newWakeupWords);
        } catch (Throwable e) {
            Log.e(TAG, "Failed to initialize multi-persona wakeup words", e);
        }
    }
    
    /**
     * 初始化 EavesdropperEngine 实例(不立即启动)
     * 启动时机由 onDormantStatusChanged(true) 触发
     */
    private void initEavesdropperEngine() {
        ANTPipeline pipeline = this.mANTEngine.pipeline();
        mEavesdropperEngine = new EavesdropperEngine(this.mContext, pipeline, this.mANTEngine);
        Log.d(TAG, "Eavesdropper engine initialized (will start on dormant)");
    }

    private void initDeviceStatusListener() {
        this.mDeviceStatusProcessor = PhicommDeviceStatusProcessor.getInstance();
        this.mDeviceStatusProcessor.addDeviceStatusChangedListener(this);
    }

    private void initCustomUDIDProcess() {
        this.udidProcessor = new UDIDProcessor(this.mContext, this.mANTEngine);
        this.udidProcessor.register();
    }

    private void initCustomMatchProcess() {
        this.matchProcessor = new MatchProcessor(this.mContext, this.mANTEngine);
        this.matchProcessor.register();
    }

    private void initKeyEventProcess() {
        this.mKeyEventProcessor = new PhicommKeyEventProcessor(new PhicommKeyEventController(this.mANTEngine, this.mContext), this.mContext);
        this.mKeyEventProcessor.register();
    }

    private void onDormantStatusChanged(boolean isDormant) {
        Map<String, String> content = new HashMap<>();
        content.put(SelfDefinationRequestInfo.CURRENT_DORMANT_STATUS, isDormant ? "1" : "0");
        SessionRegister.getUpDownMessageManager().onReportStatus(DstServiceName.DST_SERVICE_SELF_DEFINATION, null, DstServiceName.DST_SERVICE_SELF_DEFINATION, DstServiceName.DST_SERVICE_SELF_DEFINATION, new SelfDefinationResponseInfo(SelfDefinationRequestInfo.MODIFY_DORMANT_STATUS, 0, content));

        // ⭐ 休眠模式 = 插嘴模式: 主引擎已被双击 stopWakeup, MIC 给我们用
        if (mEavesdropperEngine != null) {
            if (isDormant) {
                Log.d(TAG, "Dormant entered → start Eavesdropper");
                mEavesdropperEngine.start();
            } else {
                Log.d(TAG, "Dormant exited → stop Eavesdropper");
                mEavesdropperEngine.stop();
            }
        }
    }
}
