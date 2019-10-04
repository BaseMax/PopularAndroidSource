package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class n implements Parcelable.Creator<zzz> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = "";
        String str2 = str;
        String str3 = str2;
        int i = 0;
        boolean z = true;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                str2 = ej.zzq(parcel, readInt);
            } else if (i2 == 2) {
                str3 = ej.zzq(parcel, readInt);
            } else if (i2 == 3) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 == 4) {
                z = ej.zzc(parcel, readInt);
            } else if (i2 != 5) {
                ej.zzb(parcel, readInt);
            } else {
                str = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        zzz zzz = new zzz(str, str2, str3, i, z);
        return zzz;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzz[i];
    }
}
