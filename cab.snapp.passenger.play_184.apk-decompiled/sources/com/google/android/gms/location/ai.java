package com.google.android.gms.location;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class ai extends oo implements ag {
    ai(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.ILocationCallback");
    }

    public final void onLocationAvailability(LocationAvailability locationAvailability) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) locationAvailability);
        c(2, a2);
    }

    public final void onLocationResult(LocationResult locationResult) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) locationResult);
        c(1, a2);
    }
}
