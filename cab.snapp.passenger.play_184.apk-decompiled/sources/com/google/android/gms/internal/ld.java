package com.google.android.gms.internal;

import java.util.concurrent.atomic.AtomicReference;

final class ld implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AtomicReference f3329a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3330b;
    private /* synthetic */ String c;
    private /* synthetic */ String d;
    private /* synthetic */ boolean e;
    private /* synthetic */ ky f;

    ld(ky kyVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f = kyVar;
        this.f3329a = atomicReference;
        this.f3330b = str;
        this.c = str2;
        this.d = str3;
        this.e = z;
    }

    public final void run() {
        this.f.e.zzawp().a(this.f3329a, this.f3330b, this.c, this.d, this.e);
    }
}
