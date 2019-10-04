package com.google.android.gms.maps.a;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public interface i extends IInterface {
    g getStreetViewPanorama() throws RemoteException;

    void getStreetViewPanoramaAsync(bd bdVar) throws RemoteException;

    a getView() throws RemoteException;

    void onCreate(Bundle bundle) throws RemoteException;

    void onDestroy() throws RemoteException;

    void onLowMemory() throws RemoteException;

    void onPause() throws RemoteException;

    void onResume() throws RemoteException;

    void onSaveInstanceState(Bundle bundle) throws RemoteException;
}
