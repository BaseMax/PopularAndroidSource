package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class cm implements Parcelable.Creator<zzavf> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                ej.zzg(parcel, readInt);
            } else if (i2 == 2) {
                str = ej.zzq(parcel, readInt);
            } else if (i2 != 3) {
                ej.zzb(parcel, readInt);
            } else {
                i = ej.zzg(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzavf(str, i, (byte) 0);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzavf[i];
    }
}
