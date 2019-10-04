package com.pusher.java_websocket.b;

public class b extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private int f5063a;

    public b(int i) {
        this.f5063a = i;
    }

    public b(int i, String str) {
        super(str);
        this.f5063a = i;
    }

    public b(int i, Throwable th) {
        super(th);
        this.f5063a = i;
    }

    public b(int i, String str, Throwable th) {
        super(str, th);
        this.f5063a = i;
    }

    public int getCloseCode() {
        return this.f5063a;
    }
}
