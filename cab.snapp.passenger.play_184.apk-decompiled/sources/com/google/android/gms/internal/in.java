package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

public final class in implements Parcelable.Creator<zzcgx> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                ej.zzb(parcel, readInt);
            } else {
                bundle = ej.zzs(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzcgx(bundle);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcgx[i];
    }
}
