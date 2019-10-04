package com.google.android.gms.internal;

final class hx implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ long f3196a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ hu f3197b;

    hx(hu huVar, long j) {
        this.f3197b = huVar;
        this.f3196a = j;
    }

    public final void run() {
        this.f3197b.a(this.f3196a);
    }
}
