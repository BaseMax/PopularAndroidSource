package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class k implements Parcelable.Creator<SignInAccount> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = str;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 4) {
                str = ej.zzq(parcel, readInt);
            } else if (i == 7) {
                googleSignInAccount = (GoogleSignInAccount) ej.zza(parcel, readInt, GoogleSignInAccount.CREATOR);
            } else if (i != 8) {
                ej.zzb(parcel, readInt);
            } else {
                str2 = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new SignInAccount(str, googleSignInAccount, str2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new SignInAccount[i];
    }
}
