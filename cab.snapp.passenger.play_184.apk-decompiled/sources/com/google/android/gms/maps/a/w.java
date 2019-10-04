package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;

public interface w extends IInterface {
    void onMapClick(LatLng latLng) throws RemoteException;
}
