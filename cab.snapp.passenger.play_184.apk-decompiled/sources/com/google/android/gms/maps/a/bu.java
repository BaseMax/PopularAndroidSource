package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.oq;
import com.google.android.gms.maps.model.a.t;

public abstract class bu extends op implements bt {
    public bu() {
        attachInterface(this, "com.google.android.gms.maps.internal.IInfoWindowAdapter");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        a aVar;
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            aVar = zzh(t.zzbk(parcel.readStrongBinder()));
        } else if (i != 2) {
            return false;
        } else {
            aVar = zzi(t.zzbk(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        oq.zza(parcel2, (IInterface) aVar);
        return true;
    }
}
