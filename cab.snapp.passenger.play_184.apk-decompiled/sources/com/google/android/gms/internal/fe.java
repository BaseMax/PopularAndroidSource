package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class fe implements Parcelable.Creator<zzbgk> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i3 == 2) {
                str = ej.zzq(parcel, readInt);
            } else if (i3 != 3) {
                ej.zzb(parcel, readInt);
            } else {
                i2 = ej.zzg(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzbgk(i, str, i2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbgk[i];
    }
}
