package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.bi;
import com.google.android.gms.common.api.internal.cl;
import com.google.android.gms.internal.hj;

final class aa extends cl<hj, g> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ b f3642a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    aa(b bVar, bi biVar) {
        super(biVar);
        this.f3642a = bVar;
    }

    public final /* synthetic */ void zzc(a.c cVar, g gVar) throws RemoteException {
        try {
            ((hj) cVar).zzb(zzajo(), new ab(gVar));
        } catch (RuntimeException e) {
            gVar.trySetException(e);
        }
    }
}
