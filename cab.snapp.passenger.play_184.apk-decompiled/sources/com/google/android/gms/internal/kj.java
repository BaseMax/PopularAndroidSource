package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class kj implements Callable<List<mz>> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f3293a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3294b;
    private /* synthetic */ String c;
    private /* synthetic */ kc d;

    kj(kc kcVar, String str, String str2, String str3) {
        this.d = kcVar;
        this.f3293a = str;
        this.f3294b = str2;
        this.c = str3;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.d.f3279a.f();
        return this.d.f3279a.zzaws().zzg(this.f3293a, this.f3294b, this.c);
    }
}
