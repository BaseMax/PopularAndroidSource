package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

public final class ga implements Parcelable.Creator<zzcdz> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        zzcdx zzcdx = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        int i = 1;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 == 2) {
                zzcdx = (zzcdx) ej.zza(parcel, readInt, zzcdx.CREATOR);
            } else if (i2 == 3) {
                iBinder = ej.zzr(parcel, readInt);
            } else if (i2 != 4) {
                ej.zzb(parcel, readInt);
            } else {
                iBinder2 = ej.zzr(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzcdz(i, zzcdx, iBinder, iBinder2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcdz[i];
    }
}
