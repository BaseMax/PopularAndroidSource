package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;

public interface f extends IInterface {
    LatLng fromScreenLocation(a aVar) throws RemoteException;

    VisibleRegion getVisibleRegion() throws RemoteException;

    a toScreenLocation(LatLng latLng) throws RemoteException;
}
