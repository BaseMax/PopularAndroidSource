package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.a.ad;
import com.google.android.gms.maps.a.b;

final class t extends ad {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f f3753a;

    t(f fVar) {
        this.f3753a = fVar;
    }

    public final void zza(b bVar) throws RemoteException {
        this.f3753a.onMapReady(new c(bVar));
    }
}
