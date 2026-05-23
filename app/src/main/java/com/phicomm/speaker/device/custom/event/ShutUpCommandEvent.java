package com.phicomm.speaker.device.custom.event;

/**
 * 闭嘴命令事件
 * 用户说"闭嘴"时触发，禁用主动监听1小时
 */
public class ShutUpCommandEvent {
    private long timestamp;
    private long durationMs;  // 禁用时长
    
    public ShutUpCommandEvent(long durationMs) {
        this.timestamp = System.currentTimeMillis();
        this.durationMs = durationMs;
    }
    
    public long getTimestamp() { return timestamp; }
    public long getDurationMs() { return durationMs; }
    public long getResumeTime() { return timestamp + durationMs; }
    
    @Override
    public String toString() {
        return "ShutUpCommandEvent{duration=" + (durationMs/1000) + "s, resume=" + getResumeTime() + "}";
    }
}
