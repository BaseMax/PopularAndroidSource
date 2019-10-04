package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class n extends oo implements m {
    n(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    public final a zza(a aVar, String str, int i, a aVar2) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        a2.writeString(str);
        a2.writeInt(i);
        oq.zza(a2, (IInterface) aVar2);
        Parcel a3 = a(2, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }
}
