package com.google.android.gms.common.api.internal;

final class bf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ LifecycleCallback f2789a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f2790b;
    private /* synthetic */ be c;

    bf(be beVar, LifecycleCallback lifecycleCallback, String str) {
        this.c = beVar;
        this.f2789a = lifecycleCallback;
        this.f2790b = str;
    }

    public final void run() {
        if (this.c.c > 0) {
            this.f2789a.onCreate(this.c.d != null ? this.c.d.getBundle(this.f2790b) : null);
        }
        if (this.c.c >= 2) {
            this.f2789a.onStart();
        }
        if (this.c.c >= 3) {
            this.f2789a.onResume();
        }
        if (this.c.c >= 4) {
            this.f2789a.onStop();
        }
        if (this.c.c >= 5) {
            this.f2789a.onDestroy();
        }
    }
}
