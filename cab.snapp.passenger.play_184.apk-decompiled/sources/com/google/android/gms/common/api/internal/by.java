package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;

public final class by extends y<Void> {

    /* renamed from: b  reason: collision with root package name */
    private bo<a.c, ?> f2807b;
    private cl<a.c, ?> c;

    public by(bp bpVar, g<Void> gVar) {
        super(3, gVar);
        this.f2807b = bpVar.zzfnq;
        this.c = bpVar.zzfnr;
    }

    public final /* bridge */ /* synthetic */ void zza(e eVar, boolean z) {
    }

    public final void zzb(an<?> anVar) throws RemoteException {
        this.f2807b.zzb(anVar.zzahp(), this.f2882a);
        if (this.f2807b.zzajo() != null) {
            anVar.zzaiy().put(this.f2807b.zzajo(), new bp(this.f2807b, this.c));
        }
    }

    public final /* bridge */ /* synthetic */ void zzs(Status status) {
        super.zzs(status);
    }
}
