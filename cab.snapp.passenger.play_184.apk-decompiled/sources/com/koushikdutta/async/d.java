package com.koushikdutta.async;

public final class d extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private boolean f4502a = false;

    public d(Throwable th) {
        super("Peer not trusted by any of the system trust managers.", th);
    }

    public final void setIgnore(boolean z) {
        this.f4502a = z;
    }

    public final boolean getIgnore() {
        return this.f4502a;
    }
}
