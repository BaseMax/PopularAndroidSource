package com.google.android.gms.internal;

import android.os.Bundle;

final class lg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f3335a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3336b;
    private /* synthetic */ long c;
    private /* synthetic */ Bundle d;
    private /* synthetic */ boolean e;
    private /* synthetic */ boolean f;
    private /* synthetic */ boolean g;
    private /* synthetic */ String h = null;
    private /* synthetic */ ky i;

    lg(ky kyVar, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3) {
        this.i = kyVar;
        this.f3335a = str;
        this.f3336b = str2;
        this.c = j;
        this.d = bundle;
        this.e = z;
        this.f = z2;
        this.g = z3;
    }

    public final void run() {
        ky.a(this.i, this.f3335a, this.f3336b, this.c, this.d, this.e, this.f, this.g, this.h);
    }
}
