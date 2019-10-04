package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class hz implements Parcelable.Creator<zzcgi> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = ej.zzd(parcel);
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        long j5 = -2147483648L;
        boolean z = true;
        boolean z2 = false;
        int i = 0;
        boolean z3 = true;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = ej.zzq(parcel2, readInt);
                    break;
                case 3:
                    str2 = ej.zzq(parcel2, readInt);
                    break;
                case 4:
                    str3 = ej.zzq(parcel2, readInt);
                    break;
                case 5:
                    str4 = ej.zzq(parcel2, readInt);
                    break;
                case 6:
                    j = ej.zzi(parcel2, readInt);
                    break;
                case 7:
                    j2 = ej.zzi(parcel2, readInt);
                    break;
                case 8:
                    str5 = ej.zzq(parcel2, readInt);
                    break;
                case 9:
                    z = ej.zzc(parcel2, readInt);
                    break;
                case 10:
                    z2 = ej.zzc(parcel2, readInt);
                    break;
                case 11:
                    j5 = ej.zzi(parcel2, readInt);
                    break;
                case 12:
                    str6 = ej.zzq(parcel2, readInt);
                    break;
                case 13:
                    j3 = ej.zzi(parcel2, readInt);
                    break;
                case 14:
                    j4 = ej.zzi(parcel2, readInt);
                    break;
                case 15:
                    i = ej.zzg(parcel2, readInt);
                    break;
                case 16:
                    z3 = ej.zzc(parcel2, readInt);
                    break;
                default:
                    ej.zzb(parcel2, readInt);
                    break;
            }
        }
        ej.zzaf(parcel2, zzd);
        zzcgi zzcgi = new zzcgi(str, str2, str3, str4, j, j2, str5, z, z2, j5, str6, j3, j4, i, z3);
        return zzcgi;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcgi[i];
    }
}
