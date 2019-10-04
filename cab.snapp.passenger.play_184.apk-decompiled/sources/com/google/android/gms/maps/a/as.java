package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.maps.model.a.w;

public abstract class as extends op implements ar {
    public as() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnPolygonClickListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza(w.zzbl(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
