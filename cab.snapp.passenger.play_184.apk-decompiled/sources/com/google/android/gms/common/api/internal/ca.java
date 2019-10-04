package com.google.android.gms.common.api.internal;

final class ca implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ LifecycleCallback f2809a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f2810b;
    private /* synthetic */ zzdb c;

    ca(zzdb zzdb, LifecycleCallback lifecycleCallback, String str) {
        this.c = zzdb;
        this.f2809a = lifecycleCallback;
        this.f2810b = str;
    }

    public final void run() {
        if (this.c.c > 0) {
            this.f2809a.onCreate(this.c.d != null ? this.c.d.getBundle(this.f2810b) : null);
        }
        if (this.c.c >= 2) {
            this.f2809a.onStart();
        }
        if (this.c.c >= 3) {
            this.f2809a.onResume();
        }
        if (this.c.c >= 4) {
            this.f2809a.onStop();
        }
        if (this.c.c >= 5) {
            this.f2809a.onDestroy();
        }
    }
}
