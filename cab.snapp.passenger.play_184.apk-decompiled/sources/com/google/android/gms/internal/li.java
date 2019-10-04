package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

final class li implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AtomicReference f3339a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ boolean f3340b;
    private /* synthetic */ ky c;

    li(ky kyVar, AtomicReference atomicReference, boolean z) {
        this.c = kyVar;
        this.f3339a = atomicReference;
        this.f3340b = z;
    }

    public final void run() {
        this.c.zzawp().a((AtomicReference<List<zzcln>>) this.f3339a, this.f3340b);
    }
}
