package com.google.android.gms.internal;

import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.l;

public final class hr implements l {
    public final h<LocationSettingsResult> checkLocationSettings(f fVar, LocationSettingsRequest locationSettingsRequest) {
        return fVar.zzd(new hs(fVar, locationSettingsRequest));
    }
}
