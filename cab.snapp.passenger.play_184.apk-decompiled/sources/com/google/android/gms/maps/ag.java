package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.maps.a.u;
import com.google.android.gms.maps.d;
import com.google.android.gms.maps.model.j;

final class ag implements d.a {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ u f3688a;

    ag(u uVar) {
        this.f3688a = uVar;
    }

    public final void onLocationChanged(Location location) {
        try {
            this.f3688a.zzd(location);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }
}
