package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzbt;

public final class om implements Parcelable.Creator<zzcxq> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        ConnectionResult connectionResult = null;
        int i = 0;
        zzbt zzbt = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 == 2) {
                connectionResult = (ConnectionResult) ej.zza(parcel, readInt, ConnectionResult.CREATOR);
            } else if (i2 != 3) {
                ej.zzb(parcel, readInt);
            } else {
                zzbt = (zzbt) ej.zza(parcel, readInt, zzbt.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzcxq(i, connectionResult, zzbt);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcxq[i];
    }
}
