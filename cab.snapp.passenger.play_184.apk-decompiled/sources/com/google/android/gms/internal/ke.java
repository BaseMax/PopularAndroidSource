package com.google.android.gms.internal;

final class ke implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgl f3283a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ zzcgi f3284b;
    private /* synthetic */ kc c;

    ke(kc kcVar, zzcgl zzcgl, zzcgi zzcgi) {
        this.c = kcVar;
        this.f3283a = zzcgl;
        this.f3284b = zzcgi;
    }

    public final void run() {
        this.c.f3279a.f();
        this.c.f3279a.b(this.f3283a, this.f3284b);
    }
}
