package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.location.ak;
import com.google.android.gms.location.h;

final class hh extends ak {

    /* renamed from: a  reason: collision with root package name */
    private final bg<h> f3183a;

    hh(bg<h> bgVar) {
        this.f3183a = bgVar;
    }

    public final synchronized void onLocationChanged(Location location) {
        this.f3183a.zza(new hi(location));
    }

    public final synchronized void release() {
        this.f3183a.clear();
    }
}
