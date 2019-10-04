package com.google.android.gms.internal;

final class mg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ir f3380a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ mf f3381b;

    mg(mf mfVar, ir irVar) {
        this.f3381b = mfVar;
        this.f3380a = irVar;
    }

    public final void run() {
        synchronized (this.f3381b) {
            boolean unused = this.f3381b.f3379b = false;
            if (!this.f3381b.f3378a.isConnected()) {
                this.f3381b.f3378a.zzawy().zzazj().log("Connected to service");
                this.f3381b.f3378a.a(this.f3380a);
            }
        }
    }
}
