package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class gv extends oo implements gt {
    gv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    public final void zza(zzceo zzceo) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzceo);
        c(1, a2);
    }
}
