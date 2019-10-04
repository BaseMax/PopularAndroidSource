package com.google.android.gms.internal;

import com.google.android.gms.common.api.internal.bj;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.g;

final class hf implements bj<g> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ LocationAvailability f3182a;

    hf(LocationAvailability locationAvailability) {
        this.f3182a = locationAvailability;
    }

    public final void zzahz() {
    }

    public final /* synthetic */ void zzu(Object obj) {
        ((g) obj).onLocationAvailability(this.f3182a);
    }
}
