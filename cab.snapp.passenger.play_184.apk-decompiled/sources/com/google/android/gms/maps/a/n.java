package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;

public abstract class n extends op implements cl {
    public n() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnIndoorStateChangeListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            onIndoorBuildingFocused();
        } else if (i != 2) {
            return false;
        } else {
            zza(com.google.android.gms.maps.model.a.n.zzbi(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
