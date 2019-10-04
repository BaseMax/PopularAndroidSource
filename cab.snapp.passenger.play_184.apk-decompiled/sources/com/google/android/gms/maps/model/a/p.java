package com.google.android.gms.maps.model.a;

import android.os.IInterface;
import android.os.RemoteException;

public interface p extends IInterface {
    void activate() throws RemoteException;

    String getName() throws RemoteException;

    String getShortName() throws RemoteException;

    int hashCodeRemote() throws RemoteException;

    boolean zza(p pVar) throws RemoteException;
}
