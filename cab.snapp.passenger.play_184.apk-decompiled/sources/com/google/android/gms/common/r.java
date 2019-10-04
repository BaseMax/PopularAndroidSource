package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class r implements Parcelable.Creator<zzn> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        IBinder iBinder = null;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                str = ej.zzq(parcel, readInt);
            } else if (i == 2) {
                iBinder = ej.zzr(parcel, readInt);
            } else if (i != 3) {
                ej.zzb(parcel, readInt);
            } else {
                z = ej.zzc(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzn(str, iBinder, z);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzn[i];
    }
}
