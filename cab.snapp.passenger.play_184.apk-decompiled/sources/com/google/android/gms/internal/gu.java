package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class gu extends op implements gt {
    public gu() {
        attachInterface(this, "com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza((zzceo) oq.zza(parcel, zzceo.CREATOR));
        return true;
    }
}
