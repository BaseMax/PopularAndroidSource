package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class a implements Parcelable.Creator<AccountChangeEvent> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        String str2 = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = ej.zzg(parcel, readInt);
                    break;
                case 2:
                    j = ej.zzi(parcel, readInt);
                    break;
                case 3:
                    str = ej.zzq(parcel, readInt);
                    break;
                case 4:
                    i2 = ej.zzg(parcel, readInt);
                    break;
                case 5:
                    i3 = ej.zzg(parcel, readInt);
                    break;
                case 6:
                    str2 = ej.zzq(parcel, readInt);
                    break;
                default:
                    ej.zzb(parcel, readInt);
                    break;
            }
        }
        ej.zzaf(parcel, zzd);
        AccountChangeEvent accountChangeEvent = new AccountChangeEvent(i, j, str, i2, i3, str2);
        return accountChangeEvent;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new AccountChangeEvent[i];
    }
}
