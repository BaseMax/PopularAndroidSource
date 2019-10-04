package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class ey extends op implements ex {
    public ey() {
        attachInterface(this, "com.google.android.gms.common.internal.service.ICommonCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zzci(parcel.readInt());
        parcel2.writeNoException();
        return true;
    }
}
