package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class ki implements Callable<List<mz>> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgi f3291a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3292b;
    private /* synthetic */ String c;
    private /* synthetic */ kc d;

    ki(kc kcVar, zzcgi zzcgi, String str, String str2) {
        this.d = kcVar;
        this.f3291a = zzcgi;
        this.f3292b = str;
        this.c = str2;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.d.f3279a.f();
        return this.d.f3279a.zzaws().zzg(this.f3291a.packageName, this.f3292b, this.c);
    }
}
