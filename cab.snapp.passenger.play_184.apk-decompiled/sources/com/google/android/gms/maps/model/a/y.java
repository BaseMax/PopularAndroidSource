package com.google.android.gms.maps.model.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;
import com.google.android.gms.maps.model.Cap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.ArrayList;
import java.util.List;

public final class y extends oo implements a {
    y(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IPolylineDelegate");
    }

    public final boolean equalsRemote(a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        Parcel a3 = a(15, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }

    public final int getColor() throws RemoteException {
        Parcel a2 = a(8, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final Cap getEndCap() throws RemoteException {
        Parcel a2 = a(22, a());
        Cap cap = (Cap) oq.zza(a2, Cap.CREATOR);
        a2.recycle();
        return cap;
    }

    public final String getId() throws RemoteException {
        Parcel a2 = a(2, a());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    public final int getJointType() throws RemoteException {
        Parcel a2 = a(24, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final List<PatternItem> getPattern() throws RemoteException {
        Parcel a2 = a(26, a());
        ArrayList<PatternItem> createTypedArrayList = a2.createTypedArrayList(PatternItem.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    public final List<LatLng> getPoints() throws RemoteException {
        Parcel a2 = a(4, a());
        ArrayList<LatLng> createTypedArrayList = a2.createTypedArrayList(LatLng.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    public final Cap getStartCap() throws RemoteException {
        Parcel a2 = a(20, a());
        Cap cap = (Cap) oq.zza(a2, Cap.CREATOR);
        a2.recycle();
        return cap;
    }

    public final a getTag() throws RemoteException {
        Parcel a2 = a(28, a());
        a zzaq = a.C0060a.zzaq(a2.readStrongBinder());
        a2.recycle();
        return zzaq;
    }

    public final float getWidth() throws RemoteException {
        Parcel a2 = a(6, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final float getZIndex() throws RemoteException {
        Parcel a2 = a(10, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final int hashCodeRemote() throws RemoteException {
        Parcel a2 = a(16, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final boolean isClickable() throws RemoteException {
        Parcel a2 = a(18, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isGeodesic() throws RemoteException {
        Parcel a2 = a(14, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isVisible() throws RemoteException {
        Parcel a2 = a(12, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final void remove() throws RemoteException {
        b(1, a());
    }

    public final void setClickable(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(17, a2);
    }

    public final void setColor(int i) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(i);
        b(7, a2);
    }

    public final void setEndCap(Cap cap) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) cap);
        b(21, a2);
    }

    public final void setGeodesic(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(13, a2);
    }

    public final void setJointType(int i) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(i);
        b(23, a2);
    }

    public final void setPattern(List<PatternItem> list) throws RemoteException {
        Parcel a2 = a();
        a2.writeTypedList(list);
        b(25, a2);
    }

    public final void setPoints(List<LatLng> list) throws RemoteException {
        Parcel a2 = a();
        a2.writeTypedList(list);
        b(3, a2);
    }

    public final void setStartCap(Cap cap) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) cap);
        b(19, a2);
    }

    public final void setTag(a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        b(27, a2);
    }

    public final void setVisible(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(11, a2);
    }

    public final void setWidth(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(5, a2);
    }

    public final void setZIndex(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(9, a2);
    }
}
