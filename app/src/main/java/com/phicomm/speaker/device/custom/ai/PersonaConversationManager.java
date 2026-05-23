package com.phicomm.speaker.device.custom.ai;

import com.unisound.vui.util.LogMgr;

import java.util.HashMap;
import java.util.Map;

/**
 * 按 persona 分别管理对话历史
 *
 * 每个 persona(默认助手 / 捣蛋鬼 / 英语陪练 / 成语接龙 / 插嘴模式) 独立维护 20 轮 / 10 分钟的对话历史。
 * 一个 persona 的历史不会泄漏到另一个 persona,保证人格切换时 LLM 上下文干净。
 */
public final class PersonaConversationManager {

    private static final String TAG = "PersonaConvMgr";

    private static final Map<String, ConversationHistory> HISTORIES = new HashMap<>();
    private static final Object LOCK = new Object();

    private PersonaConversationManager() {}

    /**
     * 拿某个 persona 的对话历史(惰性创建)
     */
    public static ConversationHistory getHistory(String personaId) {
        if (personaId == null) personaId = "default";
        synchronized (LOCK) {
            ConversationHistory h = HISTORIES.get(personaId);
            if (h == null) {
                h = new ConversationHistory();
                HISTORIES.put(personaId, h);
                LogMgr.d(TAG, "Created new history for persona: " + personaId);
            }
            return h;
        }
    }

    /**
     * 清空某个 persona 的历史(用户手动重置该人格时调用)
     */
    public static void clear(String personaId) {
        if (personaId == null) return;
        synchronized (LOCK) {
            ConversationHistory h = HISTORIES.get(personaId);
            if (h != null) {
                h.clear();
                LogMgr.d(TAG, "Cleared history for persona: " + personaId);
            }
        }
    }

    /**
     * 清空所有 persona 历史(应用退出/重置时)
     */
    public static void clearAll() {
        synchronized (LOCK) {
            HISTORIES.clear();
            LogMgr.d(TAG, "Cleared ALL persona histories");
        }
    }
}
