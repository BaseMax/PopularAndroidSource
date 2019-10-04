package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.oq;

public abstract class w extends op implements v {
    public w() {
        attachInterface(this, "com.google.android.gms.common.internal.IGmsCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            zza(parcel.readInt(), parcel.readStrongBinder(), (Bundle) oq.zza(parcel, Bundle.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            zza(parcel.readInt(), (Bundle) oq.zza(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
