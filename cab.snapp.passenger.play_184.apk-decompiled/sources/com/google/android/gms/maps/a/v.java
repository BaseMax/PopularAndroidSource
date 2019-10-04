package com.google.android.gms.maps.a;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class v extends oo implements u {
    v(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IOnLocationChangeListener");
    }

    public final void zzd(Location location) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) location);
        b(2, a2);
    }
}
