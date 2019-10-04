package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.oq;
import com.google.android.gms.maps.model.LatLng;

public abstract class x extends op implements w {
    public x() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnMapClickListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        onMapClick((LatLng) oq.zza(parcel, LatLng.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
