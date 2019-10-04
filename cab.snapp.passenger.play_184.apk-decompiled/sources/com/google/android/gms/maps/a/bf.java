package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;

public final class bf extends oo implements f {
    bf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IProjectionDelegate");
    }

    public final LatLng fromScreenLocation(a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        Parcel a3 = a(1, a2);
        LatLng latLng = (LatLng) oq.zza(a3, LatLng.CREATOR);
        a3.recycle();
        return latLng;
    }

    public final VisibleRegion getVisibleRegion() throws RemoteException {
        Parcel a2 = a(3, a());
        VisibleRegion visibleRegion = (VisibleRegion) oq.zza(a2, VisibleRegion.CREATOR);
        a2.recycle();
        return visibleRegion;
    }

    public final a toScreenLocation(LatLng latLng) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLng);
        Parcel a3 = a(2, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }
}
