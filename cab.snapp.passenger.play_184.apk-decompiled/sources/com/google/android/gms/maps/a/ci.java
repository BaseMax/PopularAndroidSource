package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.maps.model.a.h;

public abstract class ci extends op implements ch {
    public ci() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnCircleClickListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza(h.zzbg(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
