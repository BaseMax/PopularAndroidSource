package com.google.android.gms.maps.a;

import android.location.Location;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.oq;

public abstract class ao extends op implements am {
    public ao() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnMyLocationClickListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        onMyLocationClick((Location) oq.zza(parcel, Location.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
