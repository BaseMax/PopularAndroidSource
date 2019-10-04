package com.google.android.gms.internal;

import android.os.Looper;

final class ii implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ih f3208a;

    ii(ih ihVar) {
        this.f3208a = ihVar;
    }

    public final void run() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f3208a.f3207a.zzawx().zzg(this);
            return;
        }
        boolean zzdx = this.f3208a.zzdx();
        long unused = this.f3208a.d = 0;
        if (zzdx && this.f3208a.e) {
            this.f3208a.run();
        }
    }
}
