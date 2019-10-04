package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

public final class fj implements Parcelable.Creator<zzbgt> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        ArrayList<zzbgu> arrayList = null;
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 == 2) {
                arrayList = ej.zzc(parcel, readInt, zzbgu.CREATOR);
            } else if (i2 != 3) {
                ej.zzb(parcel, readInt);
            } else {
                str = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzbgt(i, arrayList, str);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbgt[i];
    }
}
