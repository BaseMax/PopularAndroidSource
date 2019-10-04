package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class ae extends oo implements ad {
    ae(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    public final a zza(a aVar, zzbv zzbv) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        oq.zza(a2, (Parcelable) zzbv);
        Parcel a3 = a(2, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }
}
