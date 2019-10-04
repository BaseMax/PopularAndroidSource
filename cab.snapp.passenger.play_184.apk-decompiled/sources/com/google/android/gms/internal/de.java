package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

public abstract class de extends op implements dd {
    public de() {
        attachInterface(this, "com.google.android.gms.auth.api.credentials.internal.ICredentialsCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            zza((Status) oq.zza(parcel, Status.CREATOR), (Credential) oq.zza(parcel, Credential.CREATOR));
        } else if (i == 2) {
            zze((Status) oq.zza(parcel, Status.CREATOR));
        } else if (i != 3) {
            return false;
        } else {
            zza((Status) oq.zza(parcel, Status.CREATOR), parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
