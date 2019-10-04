package com.google.android.gms.internal;

import android.os.RemoteException;

final class lt implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgi f3355a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ lr f3356b;

    lt(lr lrVar, zzcgi zzcgi) {
        this.f3356b = lrVar;
        this.f3355a = zzcgi;
    }

    public final void run() {
        ir irVar = this.f3356b.f3353b;
        if (irVar == null) {
            this.f3356b.zzawy().zzazd().log("Failed to reset data on the service; null service");
            return;
        }
        try {
            irVar.zzd(this.f3355a);
        } catch (RemoteException e) {
            this.f3356b.zzawy().zzazd().zzj("Failed to reset data on the service", e);
        }
        this.f3356b.f();
    }
}
