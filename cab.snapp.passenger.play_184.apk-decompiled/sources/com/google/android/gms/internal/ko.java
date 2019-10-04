package com.google.android.gms.internal;

final class ko implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcha f3303a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3304b;
    private /* synthetic */ kc c;

    ko(kc kcVar, zzcha zzcha, String str) {
        this.c = kcVar;
        this.f3303a = zzcha;
        this.f3304b = str;
    }

    public final void run() {
        this.c.f3279a.f();
        this.c.f3279a.a(this.f3303a, this.f3304b);
    }
}
