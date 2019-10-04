package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

public final class fd implements Parcelable.Creator<zzbgj> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        ArrayList<zzbgk> arrayList = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 != 2) {
                ej.zzb(parcel, readInt);
            } else {
                arrayList = ej.zzc(parcel, readInt, zzbgk.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzbgj(i, arrayList);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbgj[i];
    }
}
