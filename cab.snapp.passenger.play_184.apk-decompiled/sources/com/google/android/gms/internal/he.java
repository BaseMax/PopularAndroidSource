package com.google.android.gms.internal;

import com.google.android.gms.common.api.internal.bj;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.g;

final class he implements bj<g> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ LocationResult f3181a;

    he(LocationResult locationResult) {
        this.f3181a = locationResult;
    }

    public final void zzahz() {
    }

    public final /* synthetic */ void zzu(Object obj) {
        ((g) obj).onLocationResult(this.f3181a);
    }
}
