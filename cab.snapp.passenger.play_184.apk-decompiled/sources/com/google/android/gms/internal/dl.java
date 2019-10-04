package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyResponse;

public abstract class dl extends op implements dk {
    public dl() {
        attachInterface(this, "com.google.android.gms.auth.api.internal.IAuthCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            zza((ProxyResponse) oq.zza(parcel, ProxyResponse.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            zzet(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
