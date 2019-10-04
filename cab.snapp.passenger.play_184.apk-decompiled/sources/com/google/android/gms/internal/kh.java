package com.google.android.gms.internal;

final class kh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgl f3289a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ kc f3290b;

    kh(kc kcVar, zzcgl zzcgl) {
        this.f3290b = kcVar;
        this.f3289a = zzcgl;
    }

    public final void run() {
        this.f3290b.f3279a.f();
        this.f3290b.f3279a.a(this.f3289a);
    }
}
