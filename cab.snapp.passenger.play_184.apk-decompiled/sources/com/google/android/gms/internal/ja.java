package com.google.android.gms.internal;

final class ja implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f3232a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ iz f3233b;

    ja(iz izVar, String str) {
        this.f3233b = izVar;
        this.f3232a = str;
    }

    public final void run() {
        jj zzawz = this.f3233b.e.zzawz();
        if (!zzawz.j()) {
            this.f3233b.a(6, "Persisted config not initialized. Not logging error/warn");
        } else {
            zzawz.zzjcq.zzf(this.f3232a, 1);
        }
    }
}
