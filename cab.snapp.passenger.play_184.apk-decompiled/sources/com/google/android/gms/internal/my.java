package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class my implements Parcelable.Creator<zzcln> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = ej.zzd(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = ej.zzg(parcel2, readInt);
                    break;
                case 2:
                    str = ej.zzq(parcel2, readInt);
                    break;
                case 3:
                    j = ej.zzi(parcel2, readInt);
                    break;
                case 4:
                    l = ej.zzj(parcel2, readInt);
                    break;
                case 5:
                    f = ej.zzm(parcel2, readInt);
                    break;
                case 6:
                    str2 = ej.zzq(parcel2, readInt);
                    break;
                case 7:
                    str3 = ej.zzq(parcel2, readInt);
                    break;
                case 8:
                    d = ej.zzo(parcel2, readInt);
                    break;
                default:
                    ej.zzb(parcel2, readInt);
                    break;
            }
        }
        ej.zzaf(parcel2, zzd);
        zzcln zzcln = new zzcln(i, str, j, l, f, str2, str3, d);
        return zzcln;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcln[i];
    }
}
