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
import com.google.android.gms.maps.model.PatternItem;
import java.util.ArrayList;
import java.util.List;

public final class i extends oo implements g {
    i(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ICircleDelegate");
    }

    public final LatLng getCenter() throws RemoteException {
        Parcel a2 = a(4, a());
        LatLng latLng = (LatLng) oq.zza(a2, LatLng.CREATOR);
        a2.recycle();
        return latLng;
    }

    public final int getFillColor() throws RemoteException {
        Parcel a2 = a(12, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final String getId() throws RemoteException {
        Parcel a2 = a(2, a());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    public final double getRadius() throws RemoteException {
        Parcel a2 = a(6, a());
        double readDouble = a2.readDouble();
        a2.recycle();
        return readDouble;
    }

    public final int getStrokeColor() throws RemoteException {
        Parcel a2 = a(10, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final List<PatternItem> getStrokePattern() throws RemoteException {
        Parcel a2 = a(22, a());
        ArrayList<PatternItem> createTypedArrayList = a2.createTypedArrayList(PatternItem.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    public final float getStrokeWidth() throws RemoteException {
        Parcel a2 = a(8, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final a getTag() throws RemoteException {
        Parcel a2 = a(24, a());
        a zzaq = a.C0060a.zzaq(a2.readStrongBinder());
        a2.recycle();
        return zzaq;
    }

    public final float getZIndex() throws RemoteException {
        Parcel a2 = a(14, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final int hashCodeRemote() throws RemoteException {
        Parcel a2 = a(18, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final boolean isClickable() throws RemoteException {
        Parcel a2 = a(20, a());
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

    public final void setCenter(LatLng latLng) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLng);
        b(3, a2);
    }

    public final void setClickable(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(19, a2);
    }

    public final void setFillColor(int i) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(i);
        b(11, a2);
    }

    public final void setRadius(double d) throws RemoteException {
        Parcel a2 = a();
        a2.writeDouble(d);
        b(5, a2);
    }

    public final void setStrokeColor(int i) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(i);
        b(9, a2);
    }

    public final void setStrokePattern(List<PatternItem> list) throws RemoteException {
        Parcel a2 = a();
        a2.writeTypedList(list);
        b(21, a2);
    }

    public final void setStrokeWidth(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(7, a2);
    }

    public final void setTag(a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        b(23, a2);
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

    public final boolean zzb(g gVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) gVar);
        Parcel a3 = a(17, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }
}
