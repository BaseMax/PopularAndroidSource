package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class kk implements Callable<List<zzcgl>> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgi f3295a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3296b;
    private /* synthetic */ String c;
    private /* synthetic */ kc d;

    kk(kc kcVar, zzcgi zzcgi, String str, String str2) {
        this.d = kcVar;
        this.f3295a = zzcgi;
        this.f3296b = str;
        this.c = str2;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.d.f3279a.f();
        return this.d.f3279a.zzaws().zzh(this.f3295a.packageName, this.f3296b, this.c);
    }
}
