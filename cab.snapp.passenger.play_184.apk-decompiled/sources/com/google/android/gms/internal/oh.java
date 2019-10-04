package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;

public abstract class oh extends op implements og {
    public oh() {
        attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        Parcelable.Creator creator;
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 3) {
            oq.zza(parcel, ConnectionResult.CREATOR);
            creator = zzcxg.CREATOR;
        } else if (i == 4 || i == 6) {
            creator = Status.CREATOR;
        } else if (i == 7) {
            oq.zza(parcel, Status.CREATOR);
            creator = GoogleSignInAccount.CREATOR;
        } else if (i != 8) {
            return false;
        } else {
            zzb((zzcxq) oq.zza(parcel, zzcxq.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        oq.zza(parcel, creator);
        parcel2.writeNoException();
        return true;
    }
}
