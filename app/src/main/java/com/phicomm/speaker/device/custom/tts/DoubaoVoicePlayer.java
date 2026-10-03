package com.phicomm.speaker.device.custom.tts;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;

import com.phicomm.speaker.device.custom.engine.PlaybackStateMonitor;
import com.unisound.vui.util.LogMgr;

import java.io.File;
import java.io.FileOutputStream;

/**
 * 豆包自己的声音播放器。
 *
 * 豆包链(那道门 :7790)在 chat/completions 的回复里会顺带给出这条回答的语音——
 * 豆包网页端的 frontier VoiceGenie 朗读接口, 按 message_id 去会话库里取"豆包刚答过的
 * 那条"来读, 所以它能且只能读豆包自己生成的内容, 正好是音箱要的(音色就是豆包女声)。
 *
 * 跟讯飞那条路的差别: 音频是服务端合成好直接给的字节(mp3), 本机不合成, 只落盘 + MediaPlayer。
 *
 * ⚠️ Android 5.1 上 MediaPlayer.onCompletion 会偶发丢失(约一半概率), 所以照抄
 *    XfyunTtsClient 的看门狗: prepare 后取实际时长, 超时没回调就强制按完成处理。
 *    否则上层"TTS 播放中"状态会挂住 30 秒, 表现为"说完就卡住不动"。
 */
public class DoubaoVoicePlayer {
    private static final String TAG = "DoubaoVoice";

    /** 播放回调 */
    public interface PlayCallback {
        void onComplete();
        void onError(String error);
    }

    /**
     * 播放一段服务端给回来的音频字节。
     * 可以在任意线程调用(内部会切到主线程, MediaPlayer 的回调需要 Looper)。
     */
    public static void play(final Context ctx, final byte[] audio, final String format,
                            final PlayCallback cb) {
        if (ctx == null || audio == null || audio.length == 0) {
            LogMgr.e(TAG, "play 参数不合法: ctx=" + ctx + " audio="
                    + (audio == null ? "null" : audio.length + "B"));
            if (cb != null) cb.onError("音频为空");
            return;
        }

        if (Looper.myLooper() != Looper.getMainLooper()) {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public void run() {
                    play(ctx, audio, format, cb);
                }
            });
            return;
        }

        MediaPlayer player = null;
        try {
            String ext = (format != null && format.toLowerCase().contains("ogg")) ? ".ogg" : ".mp3";
            File out = new File(ctx.getFilesDir(), "doubao_voice" + ext);
            FileOutputStream fos = new FileOutputStream(out);
            fos.write(audio);
            fos.flush();
            fos.close();
            LogMgr.d(TAG, "落盘 " + out.getAbsolutePath() + " (" + audio.length + " 字节)");

            player = new MediaPlayer();
            player.setDataSource(out.getAbsolutePath());
            player.prepare();

            final MediaPlayer finalPlayer = player;
            final boolean[] done = {false};
            final int durationMs = player.getDuration();

            // ⭐ 看门狗: onCompletion 丢失时强制收尾
            final Handler watchdog = new Handler(Looper.getMainLooper());
            final Runnable[] watchdogTask = new Runnable[1];
            watchdogTask[0] = new Runnable() {
                @Override
                public void run() {
                    if (done[0]) return;
                    done[0] = true;
                    LogMgr.e(TAG, "[WATCHDOG] onCompletion lost (duration=" + durationMs
                            + "ms), force complete");
                    PlaybackStateMonitor.setTTSPlaying(false);
                    try { finalPlayer.release(); } catch (Throwable t) { }
                    if (cb != null) cb.onComplete();
                }
            };
            watchdog.postDelayed(watchdogTask[0], Math.max(8000, durationMs + 3000));

            player.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                @Override
                public void onCompletion(MediaPlayer mp) {
                    LogMgr.d(TAG, "豆包语音播放完成 (" + durationMs + "ms)");
                    watchdog.removeCallbacks(watchdogTask[0]);
                    if (done[0]) return;
                    done[0] = true;
                    PlaybackStateMonitor.setTTSPlaying(false);
                    mp.release();
                    if (cb != null) cb.onComplete();
                }
            });

            player.setOnErrorListener(new MediaPlayer.OnErrorListener() {
                @Override
                public boolean onError(MediaPlayer mp, int what, int extra) {
                    LogMgr.e(TAG, "豆包语音播放错误: what=" + what + ", extra=" + extra);
                    watchdog.removeCallbacks(watchdogTask[0]);
                    if (done[0]) return true;
                    done[0] = true;
                    PlaybackStateMonitor.setTTSPlaying(false);
                    mp.release();
                    if (cb != null) cb.onError("播放错误 what=" + what);
                    return true;
                }
            });

            // 播放期间占住"TTS 在播"状态, 免得调侃/别的逻辑抢话筒
            PlaybackStateMonitor.setTTSPlaying(true);
            player.start();
            LogMgr.i(TAG, "开始播放豆包语音: " + audio.length + " 字节, duration=" + durationMs + "ms");
        } catch (Exception e) {
            LogMgr.e(TAG, "豆包语音播放失败: " + e);
            PlaybackStateMonitor.setTTSPlaying(false);
            if (player != null) {
                try { player.release(); } catch (Throwable t) { }
            }
            if (cb != null) cb.onError("播放失败: " + e.getMessage());
        }
    }
}
