package com.google.android.gms.internal;

import android.os.RemoteException;

final class ly implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgi f3364a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ lr f3365b;

    ly(lr lrVar, zzcgi zzcgi) {
        this.f3365b = lrVar;
        this.f3364a = zzcgi;
    }

    public final void run() {
        ir irVar = this.f3365b.f3353b;
        if (irVar == null) {
            this.f3365b.zzawy().zzazd().log("Failed to send measurementEnabled to service");
            return;
        }
        try {
            irVar.zzb(this.f3364a);
            this.f3365b.f();
        } catch (RemoteException e) {
            this.f3365b.zzawy().zzazd().zzj("Failed to send measurementEnabled to the service", e);
        }
    }
}
