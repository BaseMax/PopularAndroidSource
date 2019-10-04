package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class fy implements Parcelable.Creator<zzcdv> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 != 2) {
                ej.zzb(parcel, readInt);
            } else {
                str = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzcdv(i, str);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcdv[i];
    }
}
