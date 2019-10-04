package com.google.android.gms.internal;

abstract class kw extends kv {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3317a;

    /* access modifiers changed from: protected */
    public abstract boolean a();

    /* access modifiers changed from: protected */
    public void a_() {
    }

    public final void initialize() {
        if (this.f3317a) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!a()) {
            this.e.e();
            this.f3317a = true;
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean j() {
        return this.f3317a;
    }

    /* access modifiers changed from: protected */
    public final void k() {
        if (!j()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzazw() {
        if (!this.f3317a) {
            a_();
            this.e.e();
            this.f3317a = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    kw(jx jxVar) {
        super(jxVar);
        this.e.c++;
    }
}
