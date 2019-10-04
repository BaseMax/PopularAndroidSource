package com.google.android.gms.maps.a;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.oq;

public abstract class bh extends op implements bg {
    public bh() {
        attachInterface(this, "com.google.android.gms.maps.internal.ISnapshotReadyCallback");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            onSnapshotReady((Bitmap) oq.zza(parcel, Bitmap.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            zzz(a.C0060a.zzaq(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
