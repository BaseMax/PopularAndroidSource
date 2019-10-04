package com.google.android.gms.internal;

final class kg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgl f3287a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ kc f3288b;

    kg(kc kcVar, zzcgl zzcgl) {
        this.f3288b = kcVar;
        this.f3287a = zzcgl;
    }

    public final void run() {
        this.f3288b.f3279a.f();
        this.f3288b.f3279a.b(this.f3287a);
    }
}
