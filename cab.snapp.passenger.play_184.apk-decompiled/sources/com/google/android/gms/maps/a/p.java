package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.maps.model.a.t;

public abstract class p extends op implements o {
    public p() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnInfoWindowClickListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zze(t.zzbk(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
