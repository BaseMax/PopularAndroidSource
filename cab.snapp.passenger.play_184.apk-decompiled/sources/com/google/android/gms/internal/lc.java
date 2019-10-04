package com.google.android.gms.internal;

import java.util.concurrent.atomic.AtomicReference;

final class lc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AtomicReference f3327a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3328b;
    private /* synthetic */ String c;
    private /* synthetic */ String d;
    private /* synthetic */ ky e;

    lc(ky kyVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.e = kyVar;
        this.f3327a = atomicReference;
        this.f3328b = str;
        this.c = str2;
        this.d = str3;
    }

    public final void run() {
        this.e.e.zzawp().a(this.f3327a, this.f3328b, this.c, this.d);
    }
}
