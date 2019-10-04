package com.google.android.gms.internal;

import android.os.RemoteException;

final class lv implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgi f3359a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ lr f3360b;

    lv(lr lrVar, zzcgi zzcgi) {
        this.f3360b = lrVar;
        this.f3359a = zzcgi;
    }

    public final void run() {
        ir irVar = this.f3360b.f3353b;
        if (irVar == null) {
            this.f3360b.zzawy().zzazd().log("Discarding data. Failed to send app launch");
            return;
        }
        try {
            irVar.zza(this.f3359a);
            this.f3360b.a(irVar, null, this.f3359a);
            this.f3360b.f();
        } catch (RemoteException e) {
            this.f3360b.zzawy().zzazd().zzj("Failed to send app launch to the service", e);
        }
    }
}
