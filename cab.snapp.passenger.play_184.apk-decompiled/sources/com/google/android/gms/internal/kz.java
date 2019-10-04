package com.google.android.gms.internal;

final class kz implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ boolean f3321a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ ky f3322b;

    kz(ky kyVar, boolean z) {
        this.f3322b = kyVar;
        this.f3321a = z;
    }

    public final void run() {
        ky.a(this.f3322b, this.f3321a);
    }
}
