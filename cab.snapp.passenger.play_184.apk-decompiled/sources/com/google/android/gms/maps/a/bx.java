package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;

public interface bx extends IInterface {
    void onCameraChange(CameraPosition cameraPosition) throws RemoteException;
}
