package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.common.zzn;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class ac extends oo implements aa {
    ac(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    public final boolean zza(zzn zzn, a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzn);
        oq.zza(a2, (IInterface) aVar);
        Parcel a3 = a(5, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }
}
