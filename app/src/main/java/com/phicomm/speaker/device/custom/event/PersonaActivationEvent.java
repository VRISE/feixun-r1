package com.phicomm.speaker.device.custom.event;

/**
 * 人格激活事件
 * 用户主动呼唤唤醒词时触发
 */
public class PersonaActivationEvent {
    private String wakeupWord;
    private String personaId;
    private long timestamp;
    
    public PersonaActivationEvent(String wakeupWord, String personaId) {
        this.wakeupWord = wakeupWord;
        this.personaId = personaId;
        this.timestamp = System.currentTimeMillis();
    }
    
    public String getWakeupWord() { return wakeupWord; }
    public String getPersonaId() { return personaId; }
    public long getTimestamp() { return timestamp; }
    
    @Override
    public String toString() {
        return "PersonaActivationEvent{word='" + wakeupWord + "', persona='" + personaId + "'}";
    }
}
