package com.phicomm.speaker.device.custom.teaser;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

import com.phicomm.speaker.device.custom.ai.OpenAIClient;
import com.phicomm.speaker.device.custom.config.AIConfig;
import com.phicomm.speaker.device.custom.engine.PlaybackStateMonitor;
import com.phicomm.speaker.device.custom.persona.PersonaConfig;
import com.phicomm.speaker.device.custom.tts.XfyunTtsClient;
import com.unisound.vui.util.LogMgr;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * v83: 事后调侃(PostDialogueTeaser) —— 取代已删除的"捣蛋鬼持续监听"体系。
 *
 * 设计原则(与旧监听体系的本质区别):
 * 1. 【不录音、不占麦、不循环】只在正常一问一答的 TTS 播完后,被动收到一次通知;
 * 2. 【一次性】每轮对话最多触发一次 LLM 调用 + 一句 TTS,播完即止,绝不重新开监听;
 * 3. 【串行防并发】AtomicBoolean busy 保证同一时刻最多一个调侃任务;
 *    冷却窗口 + 忙碌检测防止调侃与音乐/TTS 撞车;
 * 4. 【不阻塞】LLM 调用带 15 秒预算(FutureTask),超时直接丢弃 —— 迟到的调侃毫无意义;
 * 5. 【不留痕】调侃不入对话历史(ConversationHistory/PersonaConversationManager 均不写),
 *    只保留 PersonaConfig.EAVESDROPPER 的嘴贱提示词作为调侃的 systemPrompt。
 *
 * 触发链路: PhicommChatHandler 正常回复播完(onTTSEventPlayingEnd)
 *          → maybeTease(context, 用户那句话, 机器的回复)
 *          → 延迟 1.2s → 一次 LLM → 讯飞 TTS 播一句调侃 → 结束。
 */
public class PostDialogueTeaser {
    private static final String TAG = "PostTeaser";

    /** TTS 播完后的自然停顿,再开始调侃 */
    private static final long TEASE_DELAY_MS = 1200;
    /** LLM 调用预算: 插嘴场景下迟到 15 秒的回复毫无意义,直接丢弃 */
    private static final long LLM_BUDGET_MS = 15000;
    /** 两次调侃最小间隔(防刷屏) */
    private static final long TEASE_COOLDOWN_MS = 30000;
    /** 用户有效发言/机器回复的最短长度(过滤"嗯""好的"之类短交互) */
    private static final int MIN_USER_LEN = 4;
    private static final int MIN_REPLY_LEN = 2;

    private static volatile PostDialogueTeaser sInstance;

    public static PostDialogueTeaser get() {
        if (sInstance == null) {
            synchronized (PostDialogueTeaser.class) {
                if (sInstance == null) {
                    sInstance = new PostDialogueTeaser();
                }
            }
        }
        return sInstance;
    }

    private final AtomicBoolean busy = new AtomicBoolean(false);
    private long lastTeaseAt = 0;
    private String lastTeaseText = null;
    private OpenAIClient llmClient;
    private XfyunTtsClient ttsClient;

    private PostDialogueTeaser() {}

    /**
     * 一轮正常对话(用户提问 → 机器回复 TTS 播完)结束后调用。
     * 任何条件不满足都直接静默返回,绝不抛异常影响主流程。
     */
    public void maybeTease(final Context context, final String userText, final String replyText) {
        try {
            if (context == null || !busy.compareAndSet(false, true)) {
                return;
            }
            // 冷却窗口
            long now = System.currentTimeMillis();
            if (now - lastTeaseAt < TEASE_COOLDOWN_MS) {
                LogMgr.d(TAG, "[TEASE] cooldown, skip (" + (TEASE_COOLDOWN_MS - (now - lastTeaseAt)) + "ms left)");
                busy.set(false);
                return;
            }
            // 有效性过滤
            if (effectiveLen(userText) < MIN_USER_LEN || effectiveLen(replyText) < MIN_REPLY_LEN) {
                LogMgr.d(TAG, "[TEASE] text too short, skip");
                busy.set(false);
                return;
            }
            if (replyText.contains("模型调用失败") || replyText.equals(lastTeaseText)) {
                busy.set(false);
                return;
            }

            final String u = userText.trim();
            final String r = replyText.trim();

            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public void run() {
                    runTease(context.getApplicationContext(), u, r);
                }
            }, TEASE_DELAY_MS);
        } catch (Throwable t) {
            LogMgr.e(TAG, "[TEASE] maybeTease error: " + t);
            busy.set(false);
        }
    }

    private void runTease(final Context appContext, final String userText, final String replyText) {
        try {
            // 有音频在播(音乐/其他 TTS)就闭嘴,不抢话筒(延迟 1.2s 后再查,避免与播放状态竞态)
            if (PlaybackStateMonitor.isTTSPlaying() || PlaybackStateMonitor.isMusicPlaying()) {
                LogMgr.d(TAG, "[TEASE] audio playing, skip");
                return;
            }
            LogMgr.i(TAG, "[TEASE] start for: user=\"" + userText + "\" reply=\"" + replyText + "\"");

            // ---- 一次 LLM 调用,15 秒预算,匿名内部类(本工程 min-sdk 不支持 lambda) ----
            final String dialogue =
                    "用户:「" + userText + "」\n机器:「" + replyText + "」";
            final String sysPrompt = buildSystemPrompt();
            final String trigger =
                    "上面是你刚旁听到的一段用户和智能音箱的对话记录。"
                    + "请基于这段对话,用你的嘴贱风格对这位用户来一句简短调侃。"
                    + "要求: 只回复调侃那一句话,不超过 25 个字,不要任何解释或前缀。";

            FutureTask<String> future = new FutureTask<String>(new Callable<String>() {
                @Override
                public String call() throws Exception {
                    return getLLM(appContext).chatWithHistory(trigger, dialogue, sysPrompt);
                }
            });
            Thread worker = new Thread(future, "post-tease-llm");
            worker.setDaemon(true);
            worker.start();

            String teaseText = null;
            try {
                teaseText = future.get(LLM_BUDGET_MS, TimeUnit.MILLISECONDS);
            } catch (TimeoutException te) {
                future.cancel(true);
                LogMgr.w(TAG, "[TEASE] LLM timeout " + LLM_BUDGET_MS + "ms, discard");
            } catch (Exception ee) {
                LogMgr.e(TAG, "[TEASE] LLM error: " + ee);
            }

            if (teaseText == null || teaseText.trim().isEmpty()) {
                LogMgr.d(TAG, "[TEASE] empty response, done");
                return;
            }
            teaseText = teaseText.trim();
            // 去掉模型常见的引号包裹
            if (teaseText.length() > 1
                    && ((teaseText.startsWith("\"") && teaseText.endsWith("\""))
                    || (teaseText.startsWith("“") && teaseText.endsWith("”")))) {
                teaseText = teaseText.substring(1, teaseText.length() - 1).trim();
            }
            if (teaseText.isEmpty() || effectiveLen(teaseText) < 2) {
                return;
            }

            lastTeaseText = teaseText;
            lastTeaseAt = System.currentTimeMillis();
            LogMgr.i(TAG, "[TEASE] play: \"" + teaseText + "\"");

            // ---- 播一句就结束(一次性,不重入) ----
            getTTS().synthesizeAndPlay(appContext, teaseText, new XfyunTtsClient.TtsCallback() {
                @Override
                public void onSuccess(String audioPath) {
                    LogMgr.d(TAG, "[TEASE] tts ok: " + audioPath);
                }

                @Override
                public void onError(String error) {
                    LogMgr.e(TAG, "[TEASE] tts error: " + error);
                }
            });
        } catch (Throwable t) {
            LogMgr.e(TAG, "[TEASE] runTease error: " + t);
        } finally {
            busy.set(false);
        }
    }

    private String buildSystemPrompt() {
        try {
            PersonaConfig cfg = PersonaConfig.findByPersonaId(PersonaConfig.EAVESDROPPER);
            if (cfg != null && cfg.getSystemPrompt() != null) {
                String p = cfg.getSystemPrompt();
                // 调侃只需要嘴贱风格,不需要"偷听"场景描述,附加一句场景约束
                return p + "\n\n补充约束: 你现在不是实时偷听,而是听完一整段对话后做事后点评,"
                        + "一次只点评一句,简短、毒舌、但无恶意。";
            }
        } catch (Throwable ignored) {}
        return "你是一个嘴贱但无恶意的点评者,对刚听到的对话做一句简短毒舌点评。";
    }

    private synchronized OpenAIClient getLLM(Context context) {
        if (llmClient == null) {
            llmClient = new OpenAIClient(AIConfig.load(context));
        }
        return llmClient;
    }

    private synchronized XfyunTtsClient getTTS() {
        if (ttsClient == null) {
            ttsClient = new XfyunTtsClient();
        }
        return ttsClient;
    }

    /** 统计有效字符数(中文/字母/数字),过滤标点空白 */
    private static int effectiveLen(String text) {
        if (text == null) return 0;
        int n = 0;
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (Character.isLetterOrDigit(c)) n++;
        }
        return n;
    }
}
