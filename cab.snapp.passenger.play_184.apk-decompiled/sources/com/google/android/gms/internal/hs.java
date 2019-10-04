package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.cv;
import com.google.android.gms.common.api.m;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.i;

final class hs extends i.a<LocationSettingsResult> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ LocationSettingsRequest f3188a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3189b = null;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    hs(f fVar, LocationSettingsRequest locationSettingsRequest) {
        super(fVar);
        this.f3188a = locationSettingsRequest;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zza(this.f3188a, (cv<LocationSettingsResult>) this, this.f3189b);
    }

    public final /* synthetic */ m zzb(Status status) {
        return new LocationSettingsResult(status);
    }
}
