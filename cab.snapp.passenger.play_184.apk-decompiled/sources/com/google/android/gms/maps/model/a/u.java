package com.google.android.gms.maps.model.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;
import com.google.android.gms.maps.model.LatLng;

public final class u extends oo implements s {
    u(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IMarkerDelegate");
    }

    public final float getAlpha() throws RemoteException {
        Parcel a2 = a(26, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final String getId() throws RemoteException {
        Parcel a2 = a(2, a());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    public final LatLng getPosition() throws RemoteException {
        Parcel a2 = a(4, a());
        LatLng latLng = (LatLng) oq.zza(a2, LatLng.CREATOR);
        a2.recycle();
        return latLng;
    }

    public final float getRotation() throws RemoteException {
        Parcel a2 = a(23, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final String getSnippet() throws RemoteException {
        Parcel a2 = a(8, a());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    public final a getTag() throws RemoteException {
        Parcel a2 = a(30, a());
        a zzaq = a.C0060a.zzaq(a2.readStrongBinder());
        a2.recycle();
        return zzaq;
    }

    public final String getTitle() throws RemoteException {
        Parcel a2 = a(6, a());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    public final float getZIndex() throws RemoteException {
        Parcel a2 = a(28, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final int hashCodeRemote() throws RemoteException {
        Parcel a2 = a(17, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final void hideInfoWindow() throws RemoteException {
        b(12, a());
    }

    public final boolean isDraggable() throws RemoteException {
        Parcel a2 = a(10, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isFlat() throws RemoteException {
        Parcel a2 = a(21, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isInfoWindowShown() throws RemoteException {
        Parcel a2 = a(13, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isVisible() throws RemoteException {
        Parcel a2 = a(15, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final void remove() throws RemoteException {
        b(1, a());
    }

    public final void setAlpha(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(25, a2);
    }

    public final void setAnchor(float f, float f2) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        a2.writeFloat(f2);
        b(19, a2);
    }

    public final void setDraggable(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(9, a2);
    }

    public final void setFlat(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(20, a2);
    }

    public final void setInfoWindowAnchor(float f, float f2) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        a2.writeFloat(f2);
        b(24, a2);
    }

    public final void setPosition(LatLng latLng) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLng);
        b(3, a2);
    }

    public final void setRotation(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(22, a2);
    }

    public final void setSnippet(String str) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        b(7, a2);
    }

    public final void setTag(a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        b(29, a2);
    }

    public final void setTitle(String str) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        b(5, a2);
    }

    public final void setVisible(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(14, a2);
    }

    public final void setZIndex(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(27, a2);
    }

    public final void showInfoWindow() throws RemoteException {
        b(11, a());
    }

    public final void zzad(a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        b(18, a2);
    }

    public final boolean zzj(s sVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) sVar);
        Parcel a3 = a(16, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }
}
