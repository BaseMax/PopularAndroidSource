package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class fc implements Parcelable.Creator<zzbgh> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        zzbgj zzbgj = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 != 2) {
                ej.zzb(parcel, readInt);
            } else {
                zzbgj = (zzbgj) ej.zza(parcel, readInt, zzbgj.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzbgh(i, zzbgj);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbgh[i];
    }
}
