package com.google.android.gms.internal;

import android.os.RemoteException;
import android.text.TextUtils;

final class ma implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ boolean f3368a = true;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ boolean f3369b;
    private /* synthetic */ zzcgl c;
    private /* synthetic */ zzcgi d;
    private /* synthetic */ zzcgl e;
    private /* synthetic */ lr f;

    ma(lr lrVar, boolean z, zzcgl zzcgl, zzcgi zzcgi, zzcgl zzcgl2) {
        this.f = lrVar;
        this.f3369b = z;
        this.c = zzcgl;
        this.d = zzcgi;
        this.e = zzcgl2;
    }

    public final void run() {
        ir irVar = this.f.f3353b;
        if (irVar == null) {
            this.f.zzawy().zzazd().log("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.f3368a) {
            this.f.a(irVar, this.f3369b ? null : this.c, this.d);
        } else {
            try {
                if (TextUtils.isEmpty(this.e.packageName)) {
                    irVar.zza(this.c, this.d);
                } else {
                    irVar.zzb(this.c);
                }
            } catch (RemoteException e2) {
                this.f.zzawy().zzazd().zzj("Failed to send conditional user property to the service", e2);
            }
        }
        this.f.f();
    }
}
