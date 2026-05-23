package com.phicomm.speaker.device.custom.event;

/**
 * 插嘴触发事件
 * 后台监听到用户说话时触发
 */
public class EavesdropperTriggerEvent {
    private String userSpeech;  // 用户说话内容
    private float confidence;   // 语音置信度
    private long timestamp;
    
    public EavesdropperTriggerEvent(String userSpeech, float confidence) {
        this.userSpeech = userSpeech;
        this.confidence = confidence;
        this.timestamp = System.currentTimeMillis();
    }
    
    public String getUserSpeech() { return userSpeech; }
    public float getConfidence() { return confidence; }
    public long getTimestamp() { return timestamp; }
    
    @Override
    public String toString() {
        return "EavesdropperTriggerEvent{speech='" + userSpeech + "', confidence=" + confidence + "}";
    }
}
