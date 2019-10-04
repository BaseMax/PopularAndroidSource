package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.a.be;
import com.google.android.gms.maps.a.g;

final class u extends be {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ g f3754a;

    u(g gVar) {
        this.f3754a = gVar;
    }

    public final void zza(g gVar) throws RemoteException {
        this.f3754a.onStreetViewPanoramaReady(new i(gVar));
    }
}
