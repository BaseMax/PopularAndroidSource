package com.google.android.gms.internal;

final class ll implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ky f3344a;

    ll(ky kyVar) {
        this.f3344a = kyVar;
    }

    public final void run() {
        ky kyVar = this.f3344a;
        kyVar.zzve();
        kyVar.k();
        kyVar.zzawy().zzazi().log("Resetting analytics data (FE)");
        kyVar.zzawp().d();
    }
}
