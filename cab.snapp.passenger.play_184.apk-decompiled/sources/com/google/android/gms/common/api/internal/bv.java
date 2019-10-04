package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.zzcxq;

final class bv implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcxq f2805a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ bt f2806b;

    bv(bt btVar, zzcxq zzcxq) {
        this.f2806b = btVar;
        this.f2805a = zzcxq;
    }

    public final void run() {
        bt.a(this.f2806b, this.f2805a);
    }
}
