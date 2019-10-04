package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.Status;

public final class cn extends y<Boolean> {

    /* renamed from: b  reason: collision with root package name */
    private bi<?> f2824b;

    public cn(bi<?> biVar, g<Boolean> gVar) {
        super(4, gVar);
        this.f2824b = biVar;
    }

    public final /* bridge */ /* synthetic */ void zza(e eVar, boolean z) {
    }

    public final void zzb(an<?> anVar) throws RemoteException {
        bp remove = anVar.zzaiy().remove(this.f2824b);
        if (remove != null) {
            remove.zzfnr.zzc(anVar.zzahp(), this.f2882a);
            remove.zzfnq.zzajp();
            return;
        }
        this.f2882a.trySetResult(Boolean.FALSE);
    }

    public final /* bridge */ /* synthetic */ void zzs(Status status) {
        super.zzs(status);
    }
}
