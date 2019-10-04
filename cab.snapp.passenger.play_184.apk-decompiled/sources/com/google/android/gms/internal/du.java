package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class du implements Parcelable.Creator<zzbef> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        long j = 0;
        long j2 = 0;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                z = ej.zzc(parcel, readInt);
            } else if (i == 2) {
                j2 = ej.zzi(parcel, readInt);
            } else if (i != 3) {
                ej.zzb(parcel, readInt);
            } else {
                j = ej.zzi(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        zzbef zzbef = new zzbef(z, j, j2);
        return zzbef;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbef[i];
    }
}
