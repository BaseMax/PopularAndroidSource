package com.google.android.gms.maps.model.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.maps.model.LatLng;

public interface s extends IInterface {
    float getAlpha() throws RemoteException;

    String getId() throws RemoteException;

    LatLng getPosition() throws RemoteException;

    float getRotation() throws RemoteException;

    String getSnippet() throws RemoteException;

    a getTag() throws RemoteException;

    String getTitle() throws RemoteException;

    float getZIndex() throws RemoteException;

    int hashCodeRemote() throws RemoteException;

    void hideInfoWindow() throws RemoteException;

    boolean isDraggable() throws RemoteException;

    boolean isFlat() throws RemoteException;

    boolean isInfoWindowShown() throws RemoteException;

    boolean isVisible() throws RemoteException;

    void remove() throws RemoteException;

    void setAlpha(float f) throws RemoteException;

    void setAnchor(float f, float f2) throws RemoteException;

    void setDraggable(boolean z) throws RemoteException;

    void setFlat(boolean z) throws RemoteException;

    void setInfoWindowAnchor(float f, float f2) throws RemoteException;

    void setPosition(LatLng latLng) throws RemoteException;

    void setRotation(float f) throws RemoteException;

    void setSnippet(String str) throws RemoteException;

    void setTag(a aVar) throws RemoteException;

    void setTitle(String str) throws RemoteException;

    void setVisible(boolean z) throws RemoteException;

    void setZIndex(float f) throws RemoteException;

    void showInfoWindow() throws RemoteException;

    void zzad(a aVar) throws RemoteException;

    boolean zzj(s sVar) throws RemoteException;
}
