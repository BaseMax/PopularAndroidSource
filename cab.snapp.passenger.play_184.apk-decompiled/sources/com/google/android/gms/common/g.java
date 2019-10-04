package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class g implements Parcelable.Creator<ConnectionResult> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        PendingIntent pendingIntent = null;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i3 == 2) {
                i2 = ej.zzg(parcel, readInt);
            } else if (i3 == 3) {
                pendingIntent = (PendingIntent) ej.zza(parcel, readInt, PendingIntent.CREATOR);
            } else if (i3 != 4) {
                ej.zzb(parcel, readInt);
            } else {
                str = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new ConnectionResult(i, i2, pendingIntent, str);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new ConnectionResult[i];
    }
}
