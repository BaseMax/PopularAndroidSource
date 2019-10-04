package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

public final class go implements Parcelable.Creator<zzceo> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        Status status = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                ej.zzb(parcel, readInt);
            } else {
                status = (Status) ej.zza(parcel, readInt, Status.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzceo(status);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzceo[i];
    }
}
