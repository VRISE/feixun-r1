package com.phicomm.speaker.device.custom.ai;

import com.unisound.vui.util.LogMgr;

import java.util.ArrayList;
import java.util.List;

/**
 * 对话历史管理器
 * 
 * 设计原则:
 * 1. 不启动单独的定时任务,通过惰性清理实现过期机制
 * 2. 每次添加新消息或获取历史时,自动清理超过10分钟的旧记录
 * 3. 类似有时间顺序的队列,最多保留20轮
 * 
 * 使用场景:
 * - 仅用于大模型对话场景
 * - 天气、音乐、成语接龙等场景不使用此记忆系统
 */
public class ConversationHistory {
    private static final String TAG = "ConversationHistory";
    private static final int MAX_TURNS = 20;
    private static final long EXPIRE_TIME_MS = 10 * 60 * 1000;  // 10分钟
    
    /**
     * 单轮对话(带时间戳)
     */
    private static class ConversationTurn {
        String userMessage;
        String assistantMessage;
        long timestamp;  // 这一轮的创建时间
        
        ConversationTurn(String userMessage, String assistantMessage) {
            this.userMessage = userMessage;
            this.assistantMessage = assistantMessage;
            this.timestamp = System.currentTimeMillis();
        }
    }
    
    // 历史记录队列(按时间顺序)
    private List<ConversationTurn> history = new ArrayList<>();
    
    /**
     * 添加一轮对话(自动触发过期清理)
     * 
     * @param userMessage 用户消息
     * @param assistantMessage AI 回复
     */
    public synchronized void addTurn(String userMessage, String assistantMessage) {
        // 先清理过期记录
        cleanExpiredHistory();
        
        // 添加新对话
        history.add(new ConversationTurn(userMessage, assistantMessage));
        
        // 超过20轮,删除最早的
        if (history.size() > MAX_TURNS) {
            history.remove(0);
            LogMgr.d(TAG, "达到20轮上限,删除最早的对话");
        }
        
        LogMgr.d(TAG, "添加对话历史,当前轮数: " + history.size());
    }
    
    /**
     * 惰性清理:删除所有超过10分钟的记录
     * 在每次 addTurn 和 getFormattedHistory 时自动调用
     */
    private void cleanExpiredHistory() {
        if (history.isEmpty()) {
            return;
        }
        
        long now = System.currentTimeMillis();
        int removedCount = 0;
        
        // 从前往后遍历,删除过期的记录
        while (!history.isEmpty()) {
            ConversationTurn oldest = history.get(0);
            if (now - oldest.timestamp > EXPIRE_TIME_MS) {
                history.remove(0);
                removedCount++;
            } else {
                // 因为是时间顺序队列,如果最早的没过期的话,后面的也没过期
                break;
            }
        }
        
        if (removedCount > 0) {
            LogMgr.d(TAG, "清理过期历史,删除 " + removedCount + " 轮,剩余 " + history.size() + " 轮");
        }
    }
    
    /**
     * 获取格式化的历史文本(自动触发过期清理)
     * 
     * @return 格式化的历史文本,如果全部过期则返回 null
     */
    public synchronized String getFormattedHistory() {
        // 先清理过期记录
        cleanExpiredHistory();
        
        if (history.isEmpty()) {
            return null;
        }
        
        StringBuilder sb = new StringBuilder();
        sb.append("以下是之前的对话历史:\n\n");
        
        for (int i = 0; i < history.size(); i++) {
            ConversationTurn turn = history.get(i);
            sb.append("用户: ").append(turn.userMessage).append("\n");
            sb.append("AI: ").append(turn.assistantMessage).append("\n\n");
        }
        
        LogMgr.d(TAG, "获取格式化历史,轮数: " + history.size());
        return sb.toString();
    }
    
    /**
     * 清空历史(手动触发,用于退出/中断场景)
     */
    public synchronized void clear() {
        history.clear();
        LogMgr.d(TAG, "清空对话历史");
    }
    
    /**
     * 是否有效(有无未过期的历史记录)
     */
    public synchronized boolean isValid() {
        cleanExpiredHistory();
        return !history.isEmpty();
    }
    
    /**
     * 获取当前有效轮数
     */
    public synchronized int size() {
        cleanExpiredHistory();
        return history.size();
    }
}
