package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.common.api.internal.bk;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.h;

final class gc extends gm {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ LocationRequest f3159a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ h f3160b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    gc(f fVar, LocationRequest locationRequest, h hVar) {
        super(fVar);
        this.f3159a = locationRequest;
        this.f3160b = hVar;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zza(this.f3159a, (bg<h>) bk.zzb(this.f3160b, ht.zzavy(), h.class.getSimpleName()), (gt) new gn(this));
    }
}
