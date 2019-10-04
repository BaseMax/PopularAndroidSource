package com.google.android.gms.internal;

final class mi implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ir f3384a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ mf f3385b;

    mi(mf mfVar, ir irVar) {
        this.f3385b = mfVar;
        this.f3384a = irVar;
    }

    public final void run() {
        synchronized (this.f3385b) {
            boolean unused = this.f3385b.f3379b = false;
            if (!this.f3385b.f3378a.isConnected()) {
                this.f3385b.f3378a.zzawy().zzazi().log("Connected to remote service");
                this.f3385b.f3378a.a(this.f3384a);
            }
        }
    }
}
