package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.internal.ej;

public final class w implements Parcelable.Creator<SignInConfiguration> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        GoogleSignInOptions googleSignInOptions = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                str = ej.zzq(parcel, readInt);
            } else if (i != 5) {
                ej.zzb(parcel, readInt);
            } else {
                googleSignInOptions = (GoogleSignInOptions) ej.zza(parcel, readInt, GoogleSignInOptions.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new SignInConfiguration(str, googleSignInOptions);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new SignInConfiguration[i];
    }
}
