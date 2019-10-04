package com.google.android.gms.internal;

import java.util.ArrayList;

final class mo implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ jx f3393a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Runnable f3394b;

    mo(jx jxVar, Runnable runnable) {
        this.f3393a = jxVar;
        this.f3394b = runnable;
    }

    public final void run() {
        this.f3393a.f();
        jx jxVar = this.f3393a;
        Runnable runnable = this.f3394b;
        jxVar.zzawx().zzve();
        if (jxVar.f3269b == null) {
            jxVar.f3269b = new ArrayList();
        }
        jxVar.f3269b.add(runnable);
        this.f3393a.zzbah();
    }
}
