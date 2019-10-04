package com.google.android.gms.internal;

final class kr implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcln f3309a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ zzcgi f3310b;
    private /* synthetic */ kc c;

    kr(kc kcVar, zzcln zzcln, zzcgi zzcgi) {
        this.c = kcVar;
        this.f3309a = zzcln;
        this.f3310b = zzcgi;
    }

    public final void run() {
        this.c.f3279a.f();
        this.c.f3279a.a(this.f3309a, this.f3310b);
    }
}
