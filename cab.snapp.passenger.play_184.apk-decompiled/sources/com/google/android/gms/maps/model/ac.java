package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class ac implements Parcelable.Creator<Tile> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        byte[] bArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 2) {
                i = ej.zzg(parcel, readInt);
            } else if (i3 == 3) {
                i2 = ej.zzg(parcel, readInt);
            } else if (i3 != 4) {
                ej.zzb(parcel, readInt);
            } else {
                bArr = ej.zzt(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new Tile(i, i2, bArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Tile[i];
    }
}
