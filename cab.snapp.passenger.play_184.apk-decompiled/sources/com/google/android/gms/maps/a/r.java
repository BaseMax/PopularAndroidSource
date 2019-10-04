package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.maps.model.a.t;

public abstract class r extends op implements q {
    public r() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnInfoWindowCloseListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zzg(t.zzbk(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
