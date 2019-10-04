package com.google.android.gms.internal;

import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.ah;
import com.google.android.gms.location.g;

final class hd extends ah {

    /* renamed from: a  reason: collision with root package name */
    private final bg<g> f3180a;

    hd(bg<g> bgVar) {
        this.f3180a = bgVar;
    }

    public final void onLocationAvailability(LocationAvailability locationAvailability) {
        this.f3180a.zza(new hf(locationAvailability));
    }

    public final void onLocationResult(LocationResult locationResult) {
        this.f3180a.zza(new he(locationResult));
    }

    public final synchronized void release() {
        this.f3180a.clear();
    }
}
