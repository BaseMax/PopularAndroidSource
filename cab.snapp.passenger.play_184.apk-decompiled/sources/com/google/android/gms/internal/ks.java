package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class ks implements Callable<List<mz>> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgi f3311a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ kc f3312b;

    ks(kc kcVar, zzcgi zzcgi) {
        this.f3312b = kcVar;
        this.f3311a = zzcgi;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.f3312b.f3279a.f();
        return this.f3312b.f3279a.zzaws().zzja(this.f3311a.packageName);
    }
}
