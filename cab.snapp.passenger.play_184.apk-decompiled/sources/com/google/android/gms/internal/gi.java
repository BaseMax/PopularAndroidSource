package com.google.android.gms.internal;

import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.common.api.internal.bk;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.g;

final class gi extends gm {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ LocationRequest f3166a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ g f3167b;
    private /* synthetic */ Looper d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    gi(f fVar, LocationRequest locationRequest, g gVar, Looper looper) {
        super(fVar);
        this.f3166a = locationRequest;
        this.f3167b = gVar;
        this.d = looper;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zza(zzcfo.zza(this.f3166a), (bg<g>) bk.zzb(this.f3167b, ht.zzb(this.d), g.class.getSimpleName()), (gt) new gn(this));
    }
}
