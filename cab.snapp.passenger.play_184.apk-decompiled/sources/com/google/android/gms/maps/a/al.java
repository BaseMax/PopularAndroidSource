package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.op;

public abstract class al extends op implements ak {
    public al() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnMyLocationChangeListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zzy(a.C0060a.zzaq(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
