package com.google.android.gms.location;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.cb;
import com.google.android.gms.internal.hj;

final class x extends cb<hj, Location> {
    x() {
    }

    public final /* synthetic */ void zza(a.c cVar, g gVar) throws RemoteException {
        gVar.setResult(((hj) cVar).getLastLocation());
    }
}
