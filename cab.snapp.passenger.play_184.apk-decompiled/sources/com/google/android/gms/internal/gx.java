package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class gx extends op implements gw {
    public gx() {
        attachInterface(this, "com.google.android.gms.location.internal.IGeofencerCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            zza(parcel.readInt(), parcel.createStringArray());
        } else if (i == 2) {
            zzb(parcel.readInt(), parcel.createStringArray());
        } else if (i != 3) {
            return false;
        } else {
            zza(parcel.readInt(), (PendingIntent) oq.zza(parcel, PendingIntent.CREATOR));
        }
        return true;
    }
}
