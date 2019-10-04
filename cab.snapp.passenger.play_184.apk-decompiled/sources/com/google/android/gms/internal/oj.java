package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;

public final class oj extends oo implements oi {
    oj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    public final void zza(o oVar, int i, boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) oVar);
        a2.writeInt(i);
        oq.zza(a2, z);
        b(9, a2);
    }

    public final void zza(zzcxo zzcxo, og ogVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcxo);
        oq.zza(a2, (IInterface) ogVar);
        b(12, a2);
    }

    public final void zzeh(int i) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(i);
        b(7, a2);
    }
}
