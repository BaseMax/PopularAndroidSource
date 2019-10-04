package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

public final class oe implements Parcelable.Creator<zzcxg> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        Intent intent = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i3 == 2) {
                i2 = ej.zzg(parcel, readInt);
            } else if (i3 != 3) {
                ej.zzb(parcel, readInt);
            } else {
                intent = (Intent) ej.zza(parcel, readInt, Intent.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzcxg(i, i2, intent);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcxg[i];
    }
}
