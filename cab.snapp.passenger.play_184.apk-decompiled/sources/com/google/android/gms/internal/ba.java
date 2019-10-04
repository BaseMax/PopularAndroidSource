package com.google.android.gms.internal;

import android.os.Looper;

final class ba implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ az f3081a;

    ba(az azVar) {
        this.f3081a = azVar;
    }

    public final void run() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f3081a.f3078a.zzwv().zzc(this);
            return;
        }
        boolean zzdx = this.f3081a.zzdx();
        long unused = this.f3081a.d = 0;
        if (zzdx) {
            this.f3081a.run();
        }
    }
}
