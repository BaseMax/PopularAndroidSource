package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class fu extends oo implements fs {
    fu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.flags.IFlagProvider");
    }

    public final boolean getBooleanFlagValue(String str, boolean z, int i) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        oq.zza(a2, z);
        a2.writeInt(i);
        Parcel a3 = a(2, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }

    public final int getIntFlagValue(String str, int i, int i2) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeInt(i);
        a2.writeInt(i2);
        Parcel a3 = a(3, a2);
        int readInt = a3.readInt();
        a3.recycle();
        return readInt;
    }

    public final long getLongFlagValue(String str, long j, int i) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeLong(j);
        a2.writeInt(i);
        Parcel a3 = a(4, a2);
        long readLong = a3.readLong();
        a3.recycle();
        return readLong;
    }

    public final String getStringFlagValue(String str, String str2, int i) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeInt(i);
        Parcel a3 = a(5, a2);
        String readString = a3.readString();
        a3.recycle();
        return readString;
    }

    public final void init(a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        b(1, a2);
    }
}
