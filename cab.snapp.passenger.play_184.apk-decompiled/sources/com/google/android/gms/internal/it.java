package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

public final class it extends oo implements ir {
    it(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    public final List<zzcln> zza(zzcgi zzcgi, boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcgi);
        oq.zza(a2, z);
        Parcel a3 = a(7, a2);
        ArrayList<zzcln> createTypedArrayList = a3.createTypedArrayList(zzcln.CREATOR);
        a3.recycle();
        return createTypedArrayList;
    }

    public final List<zzcgl> zza(String str, String str2, zzcgi zzcgi) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        oq.zza(a2, (Parcelable) zzcgi);
        Parcel a3 = a(16, a2);
        ArrayList<zzcgl> createTypedArrayList = a3.createTypedArrayList(zzcgl.CREATOR);
        a3.recycle();
        return createTypedArrayList;
    }

    public final List<zzcln> zza(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeString(str3);
        oq.zza(a2, z);
        Parcel a3 = a(15, a2);
        ArrayList<zzcln> createTypedArrayList = a3.createTypedArrayList(zzcln.CREATOR);
        a3.recycle();
        return createTypedArrayList;
    }

    public final List<zzcln> zza(String str, String str2, boolean z, zzcgi zzcgi) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        oq.zza(a2, z);
        oq.zza(a2, (Parcelable) zzcgi);
        Parcel a3 = a(14, a2);
        ArrayList<zzcln> createTypedArrayList = a3.createTypedArrayList(zzcln.CREATOR);
        a3.recycle();
        return createTypedArrayList;
    }

    public final void zza(long j, String str, String str2, String str3) throws RemoteException {
        Parcel a2 = a();
        a2.writeLong(j);
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeString(str3);
        b(10, a2);
    }

    public final void zza(zzcgi zzcgi) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcgi);
        b(4, a2);
    }

    public final void zza(zzcgl zzcgl, zzcgi zzcgi) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcgl);
        oq.zza(a2, (Parcelable) zzcgi);
        b(12, a2);
    }

    public final void zza(zzcha zzcha, zzcgi zzcgi) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcha);
        oq.zza(a2, (Parcelable) zzcgi);
        b(1, a2);
    }

    public final void zza(zzcha zzcha, String str, String str2) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcha);
        a2.writeString(str);
        a2.writeString(str2);
        b(5, a2);
    }

    public final void zza(zzcln zzcln, zzcgi zzcgi) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcln);
        oq.zza(a2, (Parcelable) zzcgi);
        b(2, a2);
    }

    public final byte[] zza(zzcha zzcha, String str) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcha);
        a2.writeString(str);
        Parcel a3 = a(9, a2);
        byte[] createByteArray = a3.createByteArray();
        a3.recycle();
        return createByteArray;
    }

    public final void zzb(zzcgi zzcgi) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcgi);
        b(6, a2);
    }

    public final void zzb(zzcgl zzcgl) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcgl);
        b(13, a2);
    }

    public final String zzc(zzcgi zzcgi) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcgi);
        Parcel a3 = a(11, a2);
        String readString = a3.readString();
        a3.recycle();
        return readString;
    }

    public final void zzd(zzcgi zzcgi) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcgi);
        b(18, a2);
    }

    public final List<zzcgl> zzj(String str, String str2, String str3) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeString(str3);
        Parcel a3 = a(17, a2);
        ArrayList<zzcgl> createTypedArrayList = a3.createTypedArrayList(zzcgl.CREATOR);
        a3.recycle();
        return createTypedArrayList;
    }
}
