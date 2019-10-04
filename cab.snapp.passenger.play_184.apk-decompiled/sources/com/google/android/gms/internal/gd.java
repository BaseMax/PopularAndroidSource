package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.bk;
import com.google.android.gms.location.g;

final class gd extends gm {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ g f3161a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    gd(f fVar, g gVar) {
        super(fVar);
        this.f3161a = gVar;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zzb(bk.zzb(this.f3161a, g.class.getSimpleName()), new gn(this));
    }
}
