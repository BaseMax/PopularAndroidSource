package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class fi implements Parcelable.Creator<zzbgv> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        int i = 0;
        zzbgo zzbgo = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 == 2) {
                str = ej.zzq(parcel, readInt);
            } else if (i2 != 3) {
                ej.zzb(parcel, readInt);
            } else {
                zzbgo = (zzbgo) ej.zza(parcel, readInt, zzbgo.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzbgv(i, str, zzbgo);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbgv[i];
    }
}