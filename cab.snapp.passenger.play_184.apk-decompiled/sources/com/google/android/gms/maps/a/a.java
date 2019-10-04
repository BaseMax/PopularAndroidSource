package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public interface a extends IInterface {
    com.google.android.gms.a.a newCameraPosition(CameraPosition cameraPosition) throws RemoteException;

    com.google.android.gms.a.a newLatLng(LatLng latLng) throws RemoteException;

    com.google.android.gms.a.a newLatLngBounds(LatLngBounds latLngBounds, int i) throws RemoteException;

    com.google.android.gms.a.a newLatLngBoundsWithSize(LatLngBounds latLngBounds, int i, int i2, int i3) throws RemoteException;

    com.google.android.gms.a.a newLatLngZoom(LatLng latLng, float f) throws RemoteException;

    com.google.android.gms.a.a scrollBy(float f, float f2) throws RemoteException;

    com.google.android.gms.a.a zoomBy(float f) throws RemoteException;

    com.google.android.gms.a.a zoomByWithFocus(float f, int i, int i2) throws RemoteException;

    com.google.android.gms.a.a zoomIn() throws RemoteException;

    com.google.android.gms.a.a zoomOut() throws RemoteException;

    com.google.android.gms.a.a zoomTo(float f) throws RemoteException;
}
