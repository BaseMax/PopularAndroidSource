package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;

public final class u extends oo implements s {
    u(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    public final a zzaga() throws RemoteException {
        Parcel a2 = a(1, a());
        a zzaq = a.C0060a.zzaq(a2.readStrongBinder());
        a2.recycle();
        return zzaq;
    }

    public final int zzagb() throws RemoteException {
        Parcel a2 = a(2, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }
}
