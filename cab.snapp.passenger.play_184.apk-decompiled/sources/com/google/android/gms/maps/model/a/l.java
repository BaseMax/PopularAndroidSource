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
import com.google.android.gms.maps.model.LatLngBounds;

public final class l extends oo implements j {
    l(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
    }

    public final float getBearing() throws RemoteException {
        Parcel a2 = a(12, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final LatLngBounds getBounds() throws RemoteException {
        Parcel a2 = a(10, a());
        LatLngBounds latLngBounds = (LatLngBounds) oq.zza(a2, LatLngBounds.CREATOR);
        a2.recycle();
        return latLngBounds;
    }

    public final float getHeight() throws RemoteException {
        Parcel a2 = a(8, a());
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

    public final a getTag() throws RemoteException {
        Parcel a2 = a(25, a());
        a zzaq = a.C0060a.zzaq(a2.readStrongBinder());
        a2.recycle();
        return zzaq;
    }

    public final float getTransparency() throws RemoteException {
        Parcel a2 = a(18, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final float getWidth() throws RemoteException {
        Parcel a2 = a(7, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final float getZIndex() throws RemoteException {
        Parcel a2 = a(14, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final int hashCodeRemote() throws RemoteException {
        Parcel a2 = a(20, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final boolean isClickable() throws RemoteException {
        Parcel a2 = a(23, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isVisible() throws RemoteException {
        Parcel a2 = a(16, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final void remove() throws RemoteException {
        b(1, a());
    }

    public final void setBearing(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(11, a2);
    }

    public final void setClickable(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(22, a2);
    }

    public final void setDimensions(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(5, a2);
    }

    public final void setPosition(LatLng latLng) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLng);
        b(3, a2);
    }

    public final void setPositionFromBounds(LatLngBounds latLngBounds) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLngBounds);
        b(9, a2);
    }

    public final void setTag(a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        b(24, a2);
    }

    public final void setTransparency(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(17, a2);
    }

    public final void setVisible(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(15, a2);
    }

    public final void setZIndex(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(13, a2);
    }

    public final void zzac(a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        b(21, a2);
    }

    public final boolean zzb(j jVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) jVar);
        Parcel a3 = a(19, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }

    public final void zzf(float f, float f2) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        a2.writeFloat(f2);
        b(6, a2);
    }
}
