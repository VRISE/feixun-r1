package com.unisound.vui.transport.out;

public class BindStatusEvent {
    private Boolean data;

    public BindStatusEvent(boolean bound) {
        this.data = bound;
    }

    public Boolean getData() {
        return data;
    }
}
