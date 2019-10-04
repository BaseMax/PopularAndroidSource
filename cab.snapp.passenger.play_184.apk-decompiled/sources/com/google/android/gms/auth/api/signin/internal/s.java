package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.oq;

public abstract class s extends op implements r {
    public s() {
        attachInterface(this, "com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 101:
                zza((GoogleSignInAccount) oq.zza(parcel, GoogleSignInAccount.CREATOR), (Status) oq.zza(parcel, Status.CREATOR));
                break;
            case 102:
                zzi((Status) oq.zza(parcel, Status.CREATOR));
                break;
            case 103:
                zzj((Status) oq.zza(parcel, Status.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
