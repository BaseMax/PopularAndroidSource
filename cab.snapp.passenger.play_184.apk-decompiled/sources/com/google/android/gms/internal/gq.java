package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.cv;
import com.google.android.gms.location.GeofencingRequest;

final class gq extends gs {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ GeofencingRequest f3173a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ PendingIntent f3174b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    gq(f fVar, GeofencingRequest geofencingRequest, PendingIntent pendingIntent) {
        super(fVar);
        this.f3173a = geofencingRequest;
        this.f3174b = pendingIntent;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zza(this.f3173a, this.f3174b, (cv<Status>) this);
    }
}
