package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.model.a.b;

public interface bq extends IInterface {
    e zza(a aVar, GoogleMapOptions googleMapOptions) throws RemoteException;

    i zza(a aVar, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException;

    d zzaa(a aVar) throws RemoteException;

    h zzab(a aVar) throws RemoteException;

    a zzawc() throws RemoteException;

    b zzawd() throws RemoteException;

    void zzi(a aVar, int i) throws RemoteException;
}
