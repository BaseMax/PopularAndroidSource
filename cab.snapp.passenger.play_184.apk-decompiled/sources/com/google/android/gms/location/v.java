package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class v implements Parcelable.Creator<DetectedActivity> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i3 != 2) {
                ej.zzb(parcel, readInt);
            } else {
                i2 = ej.zzg(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new DetectedActivity(i, i2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DetectedActivity[i];
    }
}
