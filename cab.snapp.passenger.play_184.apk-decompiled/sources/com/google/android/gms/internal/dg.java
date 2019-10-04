package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;

public final class dg extends oo implements df {
    dg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
    }

    public final void zza(dd ddVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) ddVar);
        b(4, a2);
    }

    public final void zza(dd ddVar, CredentialRequest credentialRequest) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) ddVar);
        oq.zza(a2, (Parcelable) credentialRequest);
        b(1, a2);
    }

    public final void zza(dd ddVar, zzavz zzavz) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) ddVar);
        oq.zza(a2, (Parcelable) zzavz);
        b(3, a2);
    }

    public final void zza(dd ddVar, zzawf zzawf) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) ddVar);
        oq.zza(a2, (Parcelable) zzawf);
        b(2, a2);
    }
}
