package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;

final class kd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgi f3281a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ kc f3282b;

    kd(kc kcVar, zzcgi zzcgi) {
        this.f3282b = kcVar;
        this.f3281a = zzcgi;
    }

    public final void run() {
        this.f3282b.f3279a.f();
        jx a2 = this.f3282b.f3279a;
        zzcgi zzcgi = this.f3281a;
        a2.zzawx().zzve();
        a2.a();
        ap.zzgm(zzcgi.packageName);
        a2.b(zzcgi);
    }
}
