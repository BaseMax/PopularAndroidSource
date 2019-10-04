package com.google.android.gms.internal;

final class kf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgl f3285a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ zzcgi f3286b;
    private /* synthetic */ kc c;

    kf(kc kcVar, zzcgl zzcgl, zzcgi zzcgi) {
        this.c = kcVar;
        this.f3285a = zzcgl;
        this.f3286b = zzcgi;
    }

    public final void run() {
        this.c.f3279a.f();
        this.c.f3279a.a(this.f3285a, this.f3286b);
    }
}
