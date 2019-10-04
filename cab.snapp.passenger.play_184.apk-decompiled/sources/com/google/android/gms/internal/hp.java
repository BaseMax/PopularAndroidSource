package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class hp implements Parcelable.Creator<zzcfs> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = ej.zzd(parcel);
        double d = 0.0d;
        double d2 = 0.0d;
        String str = null;
        long j = 0;
        int i = 0;
        short s = 0;
        float f = 0.0f;
        int i2 = 0;
        int i3 = -1;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    str = ej.zzq(parcel2, readInt);
                    break;
                case 2:
                    j = ej.zzi(parcel2, readInt);
                    break;
                case 3:
                    s = ej.zzf(parcel2, readInt);
                    break;
                case 4:
                    d = ej.zzn(parcel2, readInt);
                    break;
                case 5:
                    d2 = ej.zzn(parcel2, readInt);
                    break;
                case 6:
                    f = ej.zzl(parcel2, readInt);
                    break;
                case 7:
                    i = ej.zzg(parcel2, readInt);
                    break;
                case 8:
                    i2 = ej.zzg(parcel2, readInt);
                    break;
                case 9:
                    i3 = ej.zzg(parcel2, readInt);
                    break;
                default:
                    ej.zzb(parcel2, readInt);
                    break;
            }
        }
        ej.zzaf(parcel2, zzd);
        zzcfs zzcfs = new zzcfs(str, i, s, d, d2, f, j, i2, i3);
        return zzcfs;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcfs[i];
    }
}
