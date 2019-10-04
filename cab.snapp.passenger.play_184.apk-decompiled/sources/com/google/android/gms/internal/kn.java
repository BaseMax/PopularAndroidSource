package com.google.android.gms.internal;

final class kn implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcha f3301a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ zzcgi f3302b;
    private /* synthetic */ kc c;

    kn(kc kcVar, zzcha zzcha, zzcgi zzcgi) {
        this.c = kcVar;
        this.f3301a = zzcha;
        this.f3302b = zzcgi;
    }

    public final void run() {
        this.c.f3279a.f();
        this.c.f3279a.a(this.f3301a, this.f3302b);
    }
}
