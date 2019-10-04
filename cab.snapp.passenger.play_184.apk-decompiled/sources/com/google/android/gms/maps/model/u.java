package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class u implements Parcelable.Creator<PatternItem> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        Float f = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 2) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 != 3) {
                ej.zzb(parcel, readInt);
            } else {
                f = ej.zzm(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new PatternItem(i, f);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new PatternItem[i];
    }
}
