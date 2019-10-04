package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.maps.model.a.a;

public abstract class au extends op implements at {
    public au() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnPolylineClickListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza(a.C0068a.zzbm(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
