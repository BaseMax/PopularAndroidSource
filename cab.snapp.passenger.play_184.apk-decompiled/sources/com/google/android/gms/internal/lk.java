package com.google.android.gms.internal;

import java.util.concurrent.atomic.AtomicReference;

final class lk implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AtomicReference f3342a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ ky f3343b;

    lk(ky kyVar, AtomicReference atomicReference) {
        this.f3343b = kyVar;
        this.f3342a = atomicReference;
    }

    public final void run() {
        this.f3343b.zzawp().zza(this.f3342a);
    }
}
