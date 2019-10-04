package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;

public interface cb extends IInterface {
    void onCameraMoveCanceled() throws RemoteException;
}
