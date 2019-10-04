package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class cl implements Parcelable.Creator<zzauz> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                ej.zzg(parcel, readInt);
            } else if (i != 2) {
                ej.zzb(parcel, readInt);
            } else {
                str = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzauz(str, (byte) 0);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzauz[i];
    }
}
