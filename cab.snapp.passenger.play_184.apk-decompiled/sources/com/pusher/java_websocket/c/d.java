package com.pusher.java_websocket.c;

public final class d extends g implements b {

    /* renamed from: a  reason: collision with root package name */
    private String f5064a = "*";

    public final void setResourceDescriptor(String str) throws IllegalArgumentException {
        if (str != null) {
            this.f5064a = str;
            return;
        }
        throw new IllegalArgumentException("http resource descriptor must not be null");
    }

    public final String getResourceDescriptor() {
        return this.f5064a;
    }
}
