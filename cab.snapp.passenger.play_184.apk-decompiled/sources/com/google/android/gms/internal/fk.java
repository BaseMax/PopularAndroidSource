package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

public final class fk implements Parcelable.Creator<zzbgu> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        int i = 0;
        ArrayList<zzbgv> arrayList = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 == 2) {
                str = ej.zzq(parcel, readInt);
            } else if (i2 != 3) {
                ej.zzb(parcel, readInt);
            } else {
                arrayList = ej.zzc(parcel, readInt, zzbgv.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzbgu(i, str, arrayList);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbgu[i];
    }
}
