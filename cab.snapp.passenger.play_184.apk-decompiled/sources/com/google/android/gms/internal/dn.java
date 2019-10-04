package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;

public final class dn extends oo implements dm {
    dn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.internal.IAuthService");
    }

    public final void zza(dk dkVar, ProxyRequest proxyRequest) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) dkVar);
        oq.zza(a2, (Parcelable) proxyRequest);
        b(1, a2);
    }
}
