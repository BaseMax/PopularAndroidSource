package com.google.android.gms.auth.api.signin.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class u extends oo implements t {
    u(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    public final void zza(r rVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) rVar);
        oq.zza(a2, (Parcelable) googleSignInOptions);
        b(101, a2);
    }

    public final void zzb(r rVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) rVar);
        oq.zza(a2, (Parcelable) googleSignInOptions);
        b(102, a2);
    }

    public final void zzc(r rVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) rVar);
        oq.zza(a2, (Parcelable) googleSignInOptions);
        b(103, a2);
    }
}
