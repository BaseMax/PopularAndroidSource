package com.google.android.gms.internal;

final class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ int f3432a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ o f3433b;

    p(o oVar, int i) {
        this.f3433b = oVar;
        this.f3432a = i;
    }

    public final void run() {
        this.f3433b.f3416a.zzr(((long) this.f3432a) * 1000);
    }
}
