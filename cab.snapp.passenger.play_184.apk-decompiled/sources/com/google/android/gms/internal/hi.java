package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.common.api.internal.bj;
import com.google.android.gms.location.h;

final class hi implements bj<h> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Location f3184a;

    hi(Location location) {
        this.f3184a = location;
    }

    public final void zzahz() {
    }

    public final /* synthetic */ void zzu(Object obj) {
        ((h) obj).onLocationChanged(this.f3184a);
    }
}
