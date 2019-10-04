package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class u implements Parcelable.Creator<Status> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        String str = null;
        PendingIntent pendingIntent = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i2 = ej.zzg(parcel, readInt);
            } else if (i3 == 2) {
                str = ej.zzq(parcel, readInt);
            } else if (i3 == 3) {
                pendingIntent = (PendingIntent) ej.zza(parcel, readInt, PendingIntent.CREATOR);
            } else if (i3 != 1000) {
                ej.zzb(parcel, readInt);
            } else {
                i = ej.zzg(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new Status(i, i2, str, pendingIntent);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Status[i];
    }
}
