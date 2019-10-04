package com.google.android.gms.internal;

public abstract class x extends w {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3537a;

    protected x(z zVar) {
        super(zVar);
    }

    /* access modifiers changed from: protected */
    public final void c() {
        if (!isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void initialize() {
        zzvf();
        this.f3537a = true;
    }

    public final boolean isInitialized() {
        return this.f3537a;
    }

    /* access modifiers changed from: protected */
    public abstract void zzvf();
}
