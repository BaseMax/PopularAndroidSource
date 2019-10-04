package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class g implements Parcelable.Creator<IdToken> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                str = ej.zzq(parcel, readInt);
            } else if (i != 2) {
                ej.zzb(parcel, readInt);
            } else {
                str2 = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new IdToken(str, str2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new IdToken[i];
    }
}
