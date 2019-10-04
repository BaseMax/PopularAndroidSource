package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.oq;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;

public abstract class ay extends op implements ax {
    public ay() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnStreetViewPanoramaChangeListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        onStreetViewPanoramaChange((StreetViewPanoramaLocation) oq.zza(parcel, StreetViewPanoramaLocation.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
