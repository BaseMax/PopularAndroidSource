package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.maps.model.a.t;

public abstract class ah extends op implements ag {
    public ah() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnMarkerDragListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            zzb(t.zzbk(parcel.readStrongBinder()));
        } else if (i == 2) {
            zzd(t.zzbk(parcel.readStrongBinder()));
        } else if (i != 3) {
            return false;
        } else {
            zzc(t.zzbk(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
