package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class kl implements Callable<List<zzcgl>> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f3297a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3298b;
    private /* synthetic */ String c;
    private /* synthetic */ kc d;

    kl(kc kcVar, String str, String str2, String str3) {
        this.d = kcVar;
        this.f3297a = str;
        this.f3298b = str2;
        this.c = str3;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.d.f3279a.f();
        return this.d.f3279a.zzaws().zzh(this.f3297a, this.f3298b, this.c);
    }
}
