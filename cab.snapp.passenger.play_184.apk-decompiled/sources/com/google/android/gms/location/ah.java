package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.oq;

public abstract class ah extends op implements ag {
    public ah() {
        attachInterface(this, "com.google.android.gms.location.ILocationCallback");
    }

    public static ag zzbd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        return queryLocalInterface instanceof ag ? (ag) queryLocalInterface : new ai(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            onLocationResult((LocationResult) oq.zza(parcel, LocationResult.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            onLocationAvailability((LocationAvailability) oq.zza(parcel, LocationAvailability.CREATOR));
        }
        return true;
    }
}
