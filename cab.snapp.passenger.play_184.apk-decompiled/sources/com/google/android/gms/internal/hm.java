package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.cv;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.location.LocationSettingsResult;

final class hm extends hb {

    /* renamed from: a  reason: collision with root package name */
    private cv<LocationSettingsResult> f3187a;

    public hm(cv<LocationSettingsResult> cvVar) {
        ap.checkArgument(cvVar != null, "listener can't be null.");
        this.f3187a = cvVar;
    }

    public final void zza(LocationSettingsResult locationSettingsResult) throws RemoteException {
        this.f3187a.setResult(locationSettingsResult);
        this.f3187a = null;
    }
}
