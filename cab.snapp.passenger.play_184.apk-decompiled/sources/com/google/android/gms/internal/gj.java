package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.location.LocationRequest;

final class gj extends gm {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ LocationRequest f3168a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ PendingIntent f3169b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    gj(f fVar, LocationRequest locationRequest, PendingIntent pendingIntent) {
        super(fVar);
        this.f3168a = locationRequest;
        this.f3169b = pendingIntent;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zza(this.f3168a, this.f3169b, (gt) new gn(this));
    }
}
