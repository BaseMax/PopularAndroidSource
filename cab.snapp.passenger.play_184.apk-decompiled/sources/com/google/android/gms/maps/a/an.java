package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public final class an extends oo implements a {
    an(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
    }

    public final a newCameraPosition(CameraPosition cameraPosition) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) cameraPosition);
        Parcel a3 = a(7, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a newLatLng(LatLng latLng) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLng);
        Parcel a3 = a(8, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a newLatLngBounds(LatLngBounds latLngBounds, int i) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLngBounds);
        a2.writeInt(i);
        Parcel a3 = a(10, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a newLatLngBoundsWithSize(LatLngBounds latLngBounds, int i, int i2, int i3) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLngBounds);
        a2.writeInt(i);
        a2.writeInt(i2);
        a2.writeInt(i3);
        Parcel a3 = a(11, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a newLatLngZoom(LatLng latLng, float f) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLng);
        a2.writeFloat(f);
        Parcel a3 = a(9, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a scrollBy(float f, float f2) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        a2.writeFloat(f2);
        Parcel a3 = a(3, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a zoomBy(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        Parcel a3 = a(5, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a zoomByWithFocus(float f, int i, int i2) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        a2.writeInt(i);
        a2.writeInt(i2);
        Parcel a3 = a(6, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a zoomIn() throws RemoteException {
        Parcel a2 = a(1, a());
        a zzaq = a.C0060a.zzaq(a2.readStrongBinder());
        a2.recycle();
        return zzaq;
    }

    public final a zoomOut() throws RemoteException {
        Parcel a2 = a(2, a());
        a zzaq = a.C0060a.zzaq(a2.readStrongBinder());
        a2.recycle();
        return zzaq;
    }

    public final a zoomTo(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        Parcel a3 = a(4, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }
}
