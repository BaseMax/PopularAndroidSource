package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.internal.ej;

public final class aq implements Parcelable.Creator<zzbr> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        Account account = null;
        int i = 0;
        GoogleSignInAccount googleSignInAccount = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i3 == 2) {
                account = (Account) ej.zza(parcel, readInt, Account.CREATOR);
            } else if (i3 == 3) {
                i2 = ej.zzg(parcel, readInt);
            } else if (i3 != 4) {
                ej.zzb(parcel, readInt);
            } else {
                googleSignInAccount = (GoogleSignInAccount) ej.zza(parcel, readInt, GoogleSignInAccount.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzbr(i, account, i2, googleSignInAccount);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbr[i];
    }
}
