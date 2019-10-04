package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class d implements Parcelable.Creator<CredentialPickerConfig> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                z = ej.zzc(parcel, readInt);
            } else if (i3 == 2) {
                z2 = ej.zzc(parcel, readInt);
            } else if (i3 == 3) {
                z3 = ej.zzc(parcel, readInt);
            } else if (i3 == 4) {
                i2 = ej.zzg(parcel, readInt);
            } else if (i3 != 1000) {
                ej.zzb(parcel, readInt);
            } else {
                i = ej.zzg(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        CredentialPickerConfig credentialPickerConfig = new CredentialPickerConfig(i, z, z2, z3, i2);
        return credentialPickerConfig;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new CredentialPickerConfig[i];
    }
}
