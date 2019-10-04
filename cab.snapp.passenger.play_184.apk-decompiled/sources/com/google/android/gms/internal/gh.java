package com.google.android.gms.internal;

import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.common.api.internal.bk;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.h;

final class gh extends gm {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ LocationRequest f3164a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ h f3165b;
    private /* synthetic */ Looper d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    gh(f fVar, LocationRequest locationRequest, h hVar, Looper looper) {
        super(fVar);
        this.f3164a = locationRequest;
        this.f3165b = hVar;
        this.d = looper;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zza(this.f3164a, (bg<h>) bk.zzb(this.f3165b, ht.zzb(this.d), h.class.getSimpleName()), (gt) new gn(this));
    }
}
