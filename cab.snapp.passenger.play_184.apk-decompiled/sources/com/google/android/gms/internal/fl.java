package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class fl implements Parcelable.Creator<zzbgy> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        Parcel parcel2 = null;
        int i = 0;
        zzbgt zzbgt = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 == 2) {
                parcel2 = ej.zzad(parcel, readInt);
            } else if (i2 != 3) {
                ej.zzb(parcel, readInt);
            } else {
                zzbgt = (zzbgt) ej.zza(parcel, readInt, zzbgt.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzbgy(i, parcel2, zzbgt);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbgy[i];
    }
}
