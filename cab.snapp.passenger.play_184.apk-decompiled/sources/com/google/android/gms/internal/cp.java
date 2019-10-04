package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

public final class cp implements Parcelable.Creator<zzavl> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
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
                pendingIntent = (PendingIntent) ej.zza(parcel, readInt, PendingIntent.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzavl(str, pendingIntent, (byte) 0);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzavl[i];
    }
}
