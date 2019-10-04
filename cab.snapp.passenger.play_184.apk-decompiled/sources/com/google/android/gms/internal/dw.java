package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class dw implements Parcelable.Creator<zzbew> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i = 0;
        int i2 = 0;
        boolean z = true;
        boolean z2 = false;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = ej.zzq(parcel, readInt);
                    break;
                case 3:
                    i = ej.zzg(parcel, readInt);
                    break;
                case 4:
                    i2 = ej.zzg(parcel, readInt);
                    break;
                case 5:
                    str2 = ej.zzq(parcel, readInt);
                    break;
                case 6:
                    str3 = ej.zzq(parcel, readInt);
                    break;
                case 7:
                    z = ej.zzc(parcel, readInt);
                    break;
                case 8:
                    str4 = ej.zzq(parcel, readInt);
                    break;
                case 9:
                    z2 = ej.zzc(parcel, readInt);
                    break;
                case 10:
                    i3 = ej.zzg(parcel, readInt);
                    break;
                default:
                    ej.zzb(parcel, readInt);
                    break;
            }
        }
        ej.zzaf(parcel, zzd);
        zzbew zzbew = new zzbew(str, i, i2, str2, str3, z, str4, z2, i3);
        return zzbew;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbew[i];
    }
}
