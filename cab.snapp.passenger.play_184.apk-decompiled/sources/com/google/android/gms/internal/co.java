package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class co implements Parcelable.Creator<zzavj> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        byte[] bArr = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                ej.zzg(parcel, readInt);
            } else if (i == 2) {
                str = ej.zzq(parcel, readInt);
            } else if (i != 3) {
                ej.zzb(parcel, readInt);
            } else {
                bArr = ej.zzt(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzavj(str, bArr, (byte) 0);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzavj[i];
    }
}
