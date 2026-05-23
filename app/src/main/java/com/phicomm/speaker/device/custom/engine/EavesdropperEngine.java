package com.phicomm.speaker.device.custom.engine;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.phicomm.speaker.device.custom.persona.PersonaConfig;
import com.phicomm.speaker.device.custom.persona.PersonaManager;
import com.unisound.vui.engine.ANTEngine;
import com.unisound.vui.engine.ANTPipeline;
import com.unisound.vui.util.LogMgr;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 空闲插嘴引擎
 * 后台持续监听空闲状态,触发插嘴会话
 *
 * 工作模式:
 * 1. 定时器每 5 秒检查是否空闲超过阈值(30秒)
 * 2. 空闲达标 → 启动 EavesdropperSession 进行音频采集
 * 3. 唤醒词/命令命中 → 立即取消当前会话
 * 4. 插嘴完成 → 重置空闲计时,等待下次空闲
 */
public class EavesdropperEngine {

    private static final String TAG = EavesdropperEngine.class.getSimpleName();

    /** 休眠模式下持续监听,trigger 后立即重启,无需冷却 */
    private static final long SESSION_COOLDOWN_MS = 0;

    /** 全局单例,供 NLUDispatcher 等非 Handler 组件调用 */
    private static EavesdropperEngine instance;

    private Context context;
    private ANTPipeline pipeline;
    private ANTEngine antEngine;

    /** 定时检查空闲状态 */
    private ScheduledExecutorService scheduler;

    /** 插嘴会话 */
    private EavesdropperSession session;

    /** 引擎运行状态 */
    private volatile boolean isRunning = false;

    /** scheduler 是否已启动(避免重复 schedule)*/
    private volatile boolean schedulerStarted = false;

    /** 监听开始时间 */
    private volatile long listeningStartTime = 0;

    /** 唤醒词正在处理中(优先级高于VAD监听) - 使用计数器避免多次覆盖 */
    private volatile boolean isWakeupProcessing = false;
    private final AtomicInteger wakeupProcessingCount = new AtomicInteger(0);

    /** 上次会话结束时间(用于冷却控制) */
    private volatile long lastSessionEndTime = 0;

    /** 最近一次诊断日志时间戳, 用于限频(每 10s 最多打一次) */
    private volatile long lastDiagLogTime = 0;
    private volatile String lastDiagReason = "";

    public EavesdropperEngine(Context context, ANTPipeline pipeline, ANTEngine antEngine) {
        this.context = context;
        this.pipeline = pipeline;
        this.antEngine = antEngine;
        this.scheduler = Executors.newSingleThreadScheduledExecutor();
        this.session = new EavesdropperSession(context, pipeline, antEngine);
        instance = this;
    }

    /**
     * 通知: 唤醒词检测到(供 NLUDispatcher 调用)
     */
    public static void notifyWakeupDetected() {
        if (instance != null) {
            instance.onWakeupDetected();
        }
    }

    /**
     * 通知: 任意交互发生(供 NLUDispatcher/NLU 处理时调用)
     */
    public static void notifyInteraction() {
        if (instance != null) {
            instance.onInteractionDetected();
        }
    }

    /**
     * 通知: TTS 播完(由 PlaybackStateMonitor.setTTSPlaying(false) 调用)
     * 休眠模式下我们的回复 TTS 播完后,主引擎会自动状态切换到 Speech 触发 stopDormant。
     * 这里立即 stopWakeup 抢回 MIC,保持休眠状态,避免死锁。
     */
    public static void notifyTTSEnded() {
        if (instance != null && instance.isRunning && instance.antEngine != null) {
            try {
                LogMgr.d(TAG, "TTS ended, force stopWakeup to keep dormant alive");
                instance.antEngine.stopWakeup();
            } catch (Throwable t) {
                LogMgr.e(TAG, "stopWakeup after TTS failed: " + t);
            }
        }
    }

    /**
     * 通知: 插嘴会话已自然结束(VAD idle 超时, ASR 完成, 等等)
     * 用于刷新冷却时间, 避免无限循环抢占 MIC
     */
    public static void notifySessionEnded() {
        if (instance != null) {
            instance.lastSessionEndTime = System.currentTimeMillis();
            LogMgr.d(TAG, "Session ended, cooldown started");
        }
    }

    /**
     * 启动引擎(休眠模式触发)
     * 立即启动 session 持续监听,trigger 后自动重启
     */
    public void start() {
        if (isRunning) {
            LogMgr.d(TAG, "Engine already running");
            return;
        }

        // ⭐ 启动前清理：确保 PersonaManager 状态正确
        // 如果上次异常退出导致 isListening=true，先重置
        if (PersonaManager.isListening()) {
            PersonaManager.stopActiveListening();
            LogMgr.d(TAG, "Cleaned up stale active listening state before start");
        }

        isRunning = true;
        listeningStartTime = System.currentTimeMillis();

        LogMgr.d(TAG, "Eavesdropper engine started (dormant mode)");

        // 立即启动 session
        if (!session.isActive()) {
            session.startListening();
        }

        // 定期检查 session 状态,trigger 后自动重启(只 schedule 一次)
        if (!schedulerStarted) {
            schedulerStarted = true;
            scheduler.scheduleAtFixedRate(new Runnable() {
                @Override
                public void run() {
                    if (!isRunning) return;
                    // ⭐ TTS/音乐播放期间不抢 MIC, 避免和我们自己的回复 TTS 死锁
                    if (PlaybackStateMonitor.isAnyPlaying()) return;
                    if (session.isActive()) return;
                    LogMgr.d(TAG, "[GO] dormant session restart");
                    session.startListening();
                }
            }, 1, 1, TimeUnit.SECONDS);
        }
    }

    /**
     * 唤醒词检测通知(优先级高于VAD监听)
     */
    public void onWakeupDetected() {
        int count = wakeupProcessingCount.incrementAndGet();
        isWakeupProcessing = true;

        // 立即取消当前插嘴会话
        if (session != null && session.isActive()) {
            session.cancel();
            lastSessionEndTime = System.currentTimeMillis();
        }

        LogMgr.d(TAG, "Wakeup detected, cancelling eavesdropper session (active count: " + count + ")");

        // 2秒后重置(唤醒词处理完成)
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                if (wakeupProcessingCount.decrementAndGet() == 0) {
                    isWakeupProcessing = false;
                    LogMgr.d(TAG, "Wakeup processing completed, resuming");
                }
            }
        }, 2000);
    }

    /**
     * 任意交互通知(命令处理/TTS 播放等)
     */
    public void onInteractionDetected() {
        // 取消当前插嘴会话
        if (session != null && session.isActive()) {
            session.cancel();
            lastSessionEndTime = System.currentTimeMillis();
        }

        isWakeupProcessing = true;
        LogMgr.d(TAG, "Interaction detected, cancelling eavesdropper session");

        // 2秒后重置,允许下次空闲检测
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                isWakeupProcessing = false;
            }
        }, 2000);
    }

    /**
     * 停止引擎(仅停止会话,不杀定时器)
     */
    public void stop() {
        if (!isRunning) {
            return;
        }

        // 取消当前插嘴会话
        if (session != null) {
            session.cancel();
        }

        // ⭐ 关键修复：停止主动监听模式，重置 PersonaManager 状态
        // 否则 currentMode 会停留在 ACTIVE，导致下次休眠模式无法触发插嘴
        if (PersonaManager.isListening()) {
            PersonaManager.stopActiveListening();
            LogMgr.d(TAG, "Stopped active listening mode on engine stop");
        }

        isRunning = false;

        LogMgr.d(TAG, "Eavesdropper engine session stopped (scheduler kept alive)");
    }

    /**
     * 彻底销毁引擎(应用退出时调用)
     */
    public void destroy() {
        if (scheduler != null && !scheduler.isShutdown()) {
            scheduler.shutdown();
        }
        if (session != null) {
            session.destroy();
        }
        isRunning = false;
        instance = null;

        LogMgr.d(TAG, "Eavesdropper engine destroyed");
    }

    /**
     * 检查空闲阈值
     */
    private void checkIdleThreshold() {
        if (!PersonaManager.shouldTriggerActiveListening(context)) {
            diagLog("not_idle_enough");
            return;
        }

        // 如果唤醒词正在处理中,不启动会话
        if (isWakeupProcessing) {
            diagLog("wakeup_processing");
            return;
        }

        // 系统正在出声(TTS/音乐): 让出 MIC 给唤醒引擎,不启动插嘴
        if (PlaybackStateMonitor.isAnyPlaying()) {
            diagLog("playing tts=" + PlaybackStateMonitor.isTTSPlaying()
                    + " music=" + PlaybackStateMonitor.isMusicPlaying());
            return;
        }

        // 上次会话结束后的冷却期内不启动新会话
        // 让 USC 唤醒引擎有时间识别 "捣蛋鬼/小讯小讯" 等
        long sinceLastEnd = System.currentTimeMillis() - lastSessionEndTime;
        if (lastSessionEndTime > 0 && sinceLastEnd < SESSION_COOLDOWN_MS) {
            diagLog("cooldown remaining=" + (SESSION_COOLDOWN_MS - sinceLastEnd) + "ms");
            return;
        }

        if (session.isActive()) {
            diagLog("session_already_active");
            return;
        }

        PersonaManager.startActiveListening(context);
        session.startListening();
        listeningStartTime = System.currentTimeMillis();
        LogMgr.d(TAG, "[GO] Idle threshold reached, started eavesdropper session");
    }

    /**
     * 限频诊断日志: 同一个原因 10 秒内只输出一次, 切换原因时立即输出
     */
    private void diagLog(String reason) {
        long now = System.currentTimeMillis();
        boolean reasonChanged = !reason.equals(lastDiagReason);
        if (reasonChanged || now - lastDiagLogTime >= 10_000) {
            LogMgr.d(TAG, "[SKIP] " + reason);
            lastDiagLogTime = now;
            lastDiagReason = reason;
        }
    }

    /**
     * 检查监听时长
     */
    private void checkListeningDuration() {
        if (!PersonaManager.isListening()) {
            return;
        }

        PersonaConfig activeConfig = PersonaConfig.getActivePersona();
        long elapsed = System.currentTimeMillis() - listeningStartTime;

        if (elapsed >= activeConfig.getMaxListeningDurationMs()) {
            LogMgr.d(TAG, "Max listening duration reached, cancelling session");
            if (session != null) {
                session.cancel();
            }
            lastSessionEndTime = System.currentTimeMillis();
            PersonaManager.stopActiveListening();
            // 不杀定时器,保持空闲检测继续运行
        }
    }

    /**
     * 检查引擎状态
     */
    public boolean isRunning() {
        return isRunning;
    }
}
