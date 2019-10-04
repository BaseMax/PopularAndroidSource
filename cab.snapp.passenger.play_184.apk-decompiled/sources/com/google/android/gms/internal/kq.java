package com.google.android.gms.internal;

final class kq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcln f3307a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ zzcgi f3308b;
    private /* synthetic */ kc c;

    kq(kc kcVar, zzcln zzcln, zzcgi zzcgi) {
        this.c = kcVar;
        this.f3307a = zzcln;
        this.f3308b = zzcgi;
    }

    public final void run() {
        this.c.f3279a.f();
        this.c.f3279a.b(this.f3307a, this.f3308b);
    }
}
