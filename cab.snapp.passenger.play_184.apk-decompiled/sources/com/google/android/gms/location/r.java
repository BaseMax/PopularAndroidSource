package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class r implements Parcelable.Creator<zzae> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        long j = -1;
        long j2 = -1;
        int i = 1;
        int i2 = 1;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i3 == 2) {
                i2 = ej.zzg(parcel, readInt);
            } else if (i3 == 3) {
                j = ej.zzi(parcel, readInt);
            } else if (i3 != 4) {
                ej.zzb(parcel, readInt);
            } else {
                j2 = ej.zzi(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        zzae zzae = new zzae(i, i2, j, j2);
        return zzae;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzae[i];
    }
}
