package com.phicomm.speaker.device.custom.event;

/**
 * 成语接龙初始化事件
 * 用于触发成语接龙游戏的自动初始化
 */
public class IdiomGameInitEvent {
    private long timestamp;
    
    public IdiomGameInitEvent() {
        this.timestamp = System.currentTimeMillis();
    }
    
    public long getTimestamp() { return timestamp; }
    
    @Override
    public String toString() {
        return "IdiomGameInitEvent{}";
    }
}
