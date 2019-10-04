package com.google.android.gms.internal;

final class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f3484a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Runnable f3485b;
    private /* synthetic */ o c;

    r(o oVar, String str, Runnable runnable) {
        this.c = oVar;
        this.f3484a = str;
        this.f3485b = runnable;
    }

    public final void run() {
        this.c.f3416a.zzec(this.f3484a);
        Runnable runnable = this.f3485b;
        if (runnable != null) {
            runnable.run();
        }
    }
}
