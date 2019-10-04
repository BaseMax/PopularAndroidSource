package com.google.android.gms.internal;

import java.util.concurrent.Callable;

final class kp implements Callable<byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcha f3305a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3306b;
    private /* synthetic */ kc c;

    kp(kc kcVar, zzcha zzcha, String str) {
        this.c = kcVar;
        this.f3305a = zzcha;
        this.f3306b = str;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.c.f3279a.f();
        return this.c.f3279a.zza(this.f3305a, this.f3306b);
    }
}
