package com.google.android.gms.internal;

import java.util.concurrent.Callable;

final class jz implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f3273a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ jx f3274b;

    jz(jx jxVar, String str) {
        this.f3274b = jxVar;
        this.f3273a = str;
    }

    public final /* synthetic */ Object call() throws Exception {
        hy zzjb = this.f3274b.zzaws().zzjb(this.f3273a);
        if (zzjb != null) {
            return zzjb.getAppInstanceId();
        }
        this.f3274b.zzawy().zzazf().log("App info was null when attempting to get app instance id");
        return null;
    }
}
