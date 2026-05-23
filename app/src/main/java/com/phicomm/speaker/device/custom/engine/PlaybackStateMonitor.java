package com.phicomm.speaker.device.custom.engine;

import android.os.Handler;
import android.os.Looper;

import com.unisound.vui.util.LogMgr;

import java.util.concurrent.atomic.AtomicBoolean;

/**
 * 系统播放状态监控
 * 跟踪 TTS 与音乐播放状态,供插嘴引擎判断"系统正在出声时不监听其他事情"。
 *
 * 用户需求: 系统播放音乐/TTS 时,只监听系统命令(JSGF 唤醒词),
 * 插嘴模式必须暂停, 让出 MIC 给系统唤醒引擎。
 */
public final class PlaybackStateMonitor {

    private static final String TAG = "PlaybackStateMonitor";

    /** 兜底超时: 一次 TTS 最长 30 秒,超时强制复位为非播放 */
    private static final long TTS_AUTO_RESET_MS = 30_000L;
    /** 兜底超时: 音乐没有上限,但事件丢失也要兜底,这里用 5 分钟 */
    private static final long MUSIC_AUTO_RESET_MS = 5 * 60_000L;

    private static final AtomicBoolean ttsPlaying = new AtomicBoolean(false);
    private static final AtomicBoolean musicPlaying = new AtomicBoolean(false);

    /** 主线程 Handler,用于延迟自动复位 */
    private static final Handler mainHandler = new Handler(Looper.getMainLooper());

    /** TTS 自动复位 Runnable,用于在 setTTSPlaying 反复调用时取消旧的 */
    private static final Runnable ttsAutoResetRunnable = new Runnable() {
        @Override
        public void run() {
            if (ttsPlaying.get()) {
                LogMgr.w(TAG, "TTS auto-reset fired (no playingEnd received in " + TTS_AUTO_RESET_MS + "ms)");
                setTTSPlaying(false);
            }
        }
    };

    private static final Runnable musicAutoResetRunnable = new Runnable() {
        @Override
        public void run() {
            if (musicPlaying.get()) {
                LogMgr.w(TAG, "Music auto-reset fired (no stop received in " + MUSIC_AUTO_RESET_MS + "ms)");
                setMusicPlaying(false);
            }
        }
    };

    private PlaybackStateMonitor() {}

    public static void setTTSPlaying(boolean playing) {
        boolean changed = ttsPlaying.getAndSet(playing) != playing;
        if (changed) {
            LogMgr.d(TAG, "TTS playing -> " + playing);
            if (playing) {
                EavesdropperEngine.notifyInteraction();
                mainHandler.removeCallbacks(ttsAutoResetRunnable);
                mainHandler.postDelayed(ttsAutoResetRunnable, TTS_AUTO_RESET_MS);
                LogMgr.d(TAG, "TTS auto-reset scheduled in " + TTS_AUTO_RESET_MS + "ms");
            } else {
                mainHandler.removeCallbacks(ttsAutoResetRunnable);
                // ⭐ TTS 播完后,如果 EavesdropperEngine 在跑(休眠模式),
                // 立即让主引擎 stopWakeup,防止状态自动切到 Speech 触发死锁
                EavesdropperEngine.notifyTTSEnded();
            }
        }
    }

    public static void setMusicPlaying(boolean playing) {
        boolean changed = musicPlaying.getAndSet(playing) != playing;
        if (changed) {
            LogMgr.d(TAG, "Music playing -> " + playing);
            if (playing) {
                EavesdropperEngine.notifyInteraction();
                mainHandler.removeCallbacks(musicAutoResetRunnable);
                mainHandler.postDelayed(musicAutoResetRunnable, MUSIC_AUTO_RESET_MS);
            } else {
                mainHandler.removeCallbacks(musicAutoResetRunnable);
            }
        }
    }

    public static boolean isTTSPlaying() {
        return ttsPlaying.get();
    }

    public static boolean isMusicPlaying() {
        return musicPlaying.get();
    }

    /** 系统是否正在出声(TTS 或音乐) */
    public static boolean isAnyPlaying() {
        return ttsPlaying.get() || musicPlaying.get();
    }
}
