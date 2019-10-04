package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class a implements Parcelable.Creator<PlaceReport> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        int i = 0;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 == 2) {
                str = ej.zzq(parcel, readInt);
            } else if (i2 == 3) {
                str2 = ej.zzq(parcel, readInt);
            } else if (i2 != 4) {
                ej.zzb(parcel, readInt);
            } else {
                str3 = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new PlaceReport(i, str, str2, str3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new PlaceReport[i];
    }
}
