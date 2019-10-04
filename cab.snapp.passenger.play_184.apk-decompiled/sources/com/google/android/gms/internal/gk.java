package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.bi;
import com.google.android.gms.common.api.internal.bk;
import com.google.android.gms.location.h;

final class gk extends gm {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ h f3170a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    gk(f fVar, h hVar) {
        super(fVar);
        this.f3170a = hVar;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zza((bi<h>) bk.zzb(this.f3170a, h.class.getSimpleName()), (gt) new gn(this));
    }
}
