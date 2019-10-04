package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;

public abstract class t extends op implements s {
    public t() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnInfoWindowLongClickListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zzf(com.google.android.gms.maps.model.a.t.zzbk(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
