package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;

public final class dh implements Parcelable.Creator<zzawf> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        Credential credential = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                ej.zzb(parcel, readInt);
            } else {
                credential = (Credential) ej.zza(parcel, readInt, Credential.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzawf(credential);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzawf[i];
    }
}
