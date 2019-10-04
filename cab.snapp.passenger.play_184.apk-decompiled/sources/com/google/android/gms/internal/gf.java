package com.google.android.gms.internal;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;

final class gf extends gm {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Location f3163a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    gf(f fVar, Location location) {
        super(fVar);
        this.f3163a = location;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zzc(this.f3163a);
        setResult(Status.zzfni);
    }
}
