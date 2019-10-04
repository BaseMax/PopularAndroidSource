package com.google.android.gms.internal;

final class lh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f3337a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3338b;
    private /* synthetic */ Object c;
    private /* synthetic */ long d;
    private /* synthetic */ ky e;

    lh(ky kyVar, String str, String str2, Object obj, long j) {
        this.e = kyVar;
        this.f3337a = str;
        this.f3338b = str2;
        this.c = obj;
        this.d = j;
    }

    public final void run() {
        ky.a(this.e, this.f3337a, this.f3338b, this.c, this.d);
    }
}
