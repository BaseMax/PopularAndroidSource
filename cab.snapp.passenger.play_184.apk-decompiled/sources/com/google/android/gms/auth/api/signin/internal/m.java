package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class m implements Parcelable.Creator<zzn> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        Bundle bundle = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i3 == 2) {
                i2 = ej.zzg(parcel, readInt);
            } else if (i3 != 3) {
                ej.zzb(parcel, readInt);
            } else {
                bundle = ej.zzs(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzn(i, i2, bundle);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzn[i];
    }
}
