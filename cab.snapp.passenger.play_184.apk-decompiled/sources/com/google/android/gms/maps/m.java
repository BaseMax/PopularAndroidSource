package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.a.ad;
import com.google.android.gms.maps.a.b;

final class m extends ad {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f f3711a;

    m(f fVar) {
        this.f3711a = fVar;
    }

    public final void zza(b bVar) throws RemoteException {
        this.f3711a.onMapReady(new c(bVar));
    }
}
