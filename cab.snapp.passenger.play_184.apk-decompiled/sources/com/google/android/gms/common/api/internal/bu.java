package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

final class bu implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ bt f2804a;

    bu(bt btVar) {
        this.f2804a = btVar;
    }

    public final void run() {
        this.f2804a.h.zzh(new ConnectionResult(4));
    }
}
