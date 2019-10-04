package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.oq;
import com.google.android.gms.maps.model.LatLng;

public abstract class ab extends op implements aa {
    public ab() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnMapLongClickListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        onMapLongClick((LatLng) oq.zza(parcel, LatLng.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
