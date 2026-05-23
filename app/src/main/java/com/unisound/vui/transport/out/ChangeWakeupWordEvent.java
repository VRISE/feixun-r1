package com.unisound.vui.transport.out;

public class ChangeWakeupWordEvent {
    private String data;

    public ChangeWakeupWordEvent(String wakeupWord) {
        this.data = wakeupWord;
    }

    public String getData() {
        return data;
    }
}
