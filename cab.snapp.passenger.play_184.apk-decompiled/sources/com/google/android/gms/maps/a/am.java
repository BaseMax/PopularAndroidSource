package com.google.android.gms.maps.a;

import android.location.Location;
import android.os.IInterface;
import android.os.RemoteException;

public interface am extends IInterface {
    void onMyLocationClick(Location location) throws RemoteException;
}
