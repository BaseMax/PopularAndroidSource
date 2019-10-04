package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class bl extends oo implements j {
    bl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IUiSettingsDelegate");
    }

    public final boolean isCompassEnabled() throws RemoteException {
        Parcel a2 = a(10, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isIndoorLevelPickerEnabled() throws RemoteException {
        Parcel a2 = a(17, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isMapToolbarEnabled() throws RemoteException {
        Parcel a2 = a(19, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isMyLocationButtonEnabled() throws RemoteException {
        Parcel a2 = a(11, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isRotateGesturesEnabled() throws RemoteException {
        Parcel a2 = a(15, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isScrollGesturesEnabled() throws RemoteException {
        Parcel a2 = a(12, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isTiltGesturesEnabled() throws RemoteException {
        Parcel a2 = a(14, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isZoomControlsEnabled() throws RemoteException {
        Parcel a2 = a(9, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isZoomGesturesEnabled() throws RemoteException {
        Parcel a2 = a(13, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final void setAllGesturesEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(8, a2);
    }

    public final void setCompassEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(2, a2);
    }

    public final void setIndoorLevelPickerEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(16, a2);
    }

    public final void setMapToolbarEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(18, a2);
    }

    public final void setMyLocationButtonEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(3, a2);
    }

    public final void setRotateGesturesEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(7, a2);
    }

    public final void setScrollGesturesEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(4, a2);
    }

    public final void setTiltGesturesEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(6, a2);
    }

    public final void setZoomControlsEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(1, a2);
    }

    public final void setZoomGesturesEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(5, a2);
    }
}
