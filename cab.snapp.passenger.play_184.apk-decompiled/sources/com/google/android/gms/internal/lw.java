package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.measurement.AppMeasurement;

final class lw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AppMeasurement.g f3361a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ lr f3362b;

    lw(lr lrVar, AppMeasurement.g gVar) {
        this.f3362b = lrVar;
        this.f3361a = gVar;
    }

    public final void run() {
        long j;
        String str;
        String str2;
        String packageName;
        ir irVar = this.f3362b.f3353b;
        if (irVar == null) {
            this.f3362b.zzawy().zzazd().log("Failed to send current screen to service");
            return;
        }
        try {
            if (this.f3361a == null) {
                j = 0;
                str = null;
                str2 = null;
                packageName = this.f3362b.getContext().getPackageName();
            } else {
                j = this.f3361a.zziwm;
                str = this.f3361a.zziwk;
                str2 = this.f3361a.zziwl;
                packageName = this.f3362b.getContext().getPackageName();
            }
            irVar.zza(j, str, str2, packageName);
            this.f3362b.f();
        } catch (RemoteException e) {
            this.f3362b.zzawy().zzazd().zzj("Failed to send current screen to the service", e);
        }
    }
}
