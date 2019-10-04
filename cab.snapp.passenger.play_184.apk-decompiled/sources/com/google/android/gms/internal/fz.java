package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.zze;
import java.util.List;

public final class fz implements Parcelable.Creator<zzcdx> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        zze zze = zzcdx.f3590b;
        List<zzcdv> list = zzcdx.f3589a;
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                zze = (zze) ej.zza(parcel, readInt, zze.CREATOR);
            } else if (i == 2) {
                list = ej.zzc(parcel, readInt, zzcdv.CREATOR);
            } else if (i != 3) {
                ej.zzb(parcel, readInt);
            } else {
                str = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new zzcdx(zze, list, str);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcdx[i];
    }
}
