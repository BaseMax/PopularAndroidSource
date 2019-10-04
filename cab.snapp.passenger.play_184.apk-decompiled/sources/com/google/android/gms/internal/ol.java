package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzbr;

public final class ol implements Parcelable.Creator<zzcxo> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        zzbr zzbr = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 != 2) {
                ej.zzb(parcel, readInt);
            } else {
                zzbr = (zzbr) ej.zza(parcel, readInt, zzbr.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzcxo(i, zzbr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcxo[i];
    }
}
