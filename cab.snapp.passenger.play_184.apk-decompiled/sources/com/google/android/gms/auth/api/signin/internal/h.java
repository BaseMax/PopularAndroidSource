package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.m;

final class h extends l<Status> {
    h(f fVar) {
        super(fVar);
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        d dVar = (d) cVar;
        ((t) dVar.zzakn()).zzb(new i(this), dVar.zzabk());
    }

    public final /* synthetic */ m zzb(Status status) {
        return status;
    }
}
