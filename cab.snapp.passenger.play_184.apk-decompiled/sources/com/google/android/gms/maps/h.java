package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.a.m;
import com.google.android.gms.maps.a.f;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;
import com.google.android.gms.maps.model.j;

public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final f f3707a;

    h(f fVar) {
        this.f3707a = fVar;
    }

    public final LatLng fromScreenLocation(Point point) {
        try {
            return this.f3707a.fromScreenLocation(m.zzz(point));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final VisibleRegion getVisibleRegion() {
        try {
            return this.f3707a.getVisibleRegion();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final Point toScreenLocation(LatLng latLng) {
        try {
            return (Point) m.zzx(this.f3707a.toScreenLocation(latLng));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }
}
