package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.maps.a.ao;
import com.google.android.gms.maps.c;

final class ad extends ao {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ c.u f3685a;

    ad(c.u uVar) {
        this.f3685a = uVar;
    }

    public final void onMyLocationClick(Location location) throws RemoteException {
        this.f3685a.onMyLocationClick(location);
    }
}
