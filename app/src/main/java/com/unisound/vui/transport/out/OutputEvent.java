package com.unisound.vui.transport.out;

public class OutputEvent<T> {
    private int type;
    private T data;

    public OutputEvent(int type) {
        this.type = type;
    }

    public OutputEvent(int type, T data) {
        this.type = type;
        this.data = data;
    }

    public int getType() {
        return type;
    }

    public T getData() {
        return data;
    }
}
