package com.google.android.gms.internal;

import android.os.RemoteException;
import android.text.TextUtils;

final class lz implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ boolean f3366a = true;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ boolean f3367b;
    private /* synthetic */ zzcha c;
    private /* synthetic */ zzcgi d;
    private /* synthetic */ String e;
    private /* synthetic */ lr f;

    lz(lr lrVar, boolean z, zzcha zzcha, zzcgi zzcgi, String str) {
        this.f = lrVar;
        this.f3367b = z;
        this.c = zzcha;
        this.d = zzcgi;
        this.e = str;
    }

    public final void run() {
        ir irVar = this.f.f3353b;
        if (irVar == null) {
            this.f.zzawy().zzazd().log("Discarding data. Failed to send event to service");
            return;
        }
        if (this.f3366a) {
            this.f.a(irVar, this.f3367b ? null : this.c, this.d);
        } else {
            try {
                if (TextUtils.isEmpty(this.e)) {
                    irVar.zza(this.c, this.d);
                } else {
                    irVar.zza(this.c, this.e, this.f.zzawy().zzazk());
                }
            } catch (RemoteException e2) {
                this.f.zzawy().zzazd().zzj("Failed to send event to the service", e2);
            }
        }
        this.f.f();
    }
}
