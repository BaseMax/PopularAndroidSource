package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.a.aq;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.PointOfInterest;

final class am extends aq {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ c.v f3694a;

    am(c.v vVar) {
        this.f3694a = vVar;
    }

    public final void zza(PointOfInterest pointOfInterest) throws RemoteException {
        this.f3694a.onPoiClick(pointOfInterest);
    }
}
