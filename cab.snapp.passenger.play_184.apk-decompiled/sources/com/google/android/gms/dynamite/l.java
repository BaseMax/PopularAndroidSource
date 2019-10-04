package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class l extends oo implements k {
    l(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    public final int zza(a aVar, String str, boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        a2.writeString(str);
        oq.zza(a2, z);
        Parcel a3 = a(3, a2);
        int readInt = a3.readInt();
        a3.recycle();
        return readInt;
    }

    public final a zza(a aVar, String str, int i) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        a2.writeString(str);
        a2.writeInt(i);
        Parcel a3 = a(2, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }
}
