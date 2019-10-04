package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class fa extends oo implements ez {
    fa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.ICommonService");
    }

    public final void zza(ex exVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) exVar);
        c(1, a2);
    }
}
