package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;

public interface bo extends IInterface {
    void onCancel() throws RemoteException;

    void onFinish() throws RemoteException;
}
