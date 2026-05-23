package com.unisound.vui.transport.out;

public class SimulateWakeupEvent {
    private String data;

    public SimulateWakeupEvent(String wakeupWord) {
        this.data = wakeupWord;
    }

    public String getData() {
        return data;
    }
}
