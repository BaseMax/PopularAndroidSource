package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.a.be;
import com.google.android.gms.maps.a.g;

final class s extends be {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ g f3752a;

    s(g gVar) {
        this.f3752a = gVar;
    }

    public final void zza(g gVar) throws RemoteException {
        this.f3752a.onStreetViewPanoramaReady(new i(gVar));
    }
}
