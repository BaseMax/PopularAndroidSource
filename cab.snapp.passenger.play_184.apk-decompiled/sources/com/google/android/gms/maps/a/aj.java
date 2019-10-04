package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.oq;

public abstract class aj extends op implements ai {
    public aj() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        boolean onMyLocationButtonClick = onMyLocationButtonClick();
        parcel2.writeNoException();
        oq.zza(parcel2, onMyLocationButtonClick);
        return true;
    }
}
