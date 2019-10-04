package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;
import java.util.ArrayList;

public final class d implements Parcelable.Creator<TokenData> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        Long l = null;
        ArrayList<String> arrayList = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = ej.zzg(parcel, readInt);
                    break;
                case 2:
                    str = ej.zzq(parcel, readInt);
                    break;
                case 3:
                    l = ej.zzj(parcel, readInt);
                    break;
                case 4:
                    z = ej.zzc(parcel, readInt);
                    break;
                case 5:
                    z2 = ej.zzc(parcel, readInt);
                    break;
                case 6:
                    arrayList = ej.zzac(parcel, readInt);
                    break;
                default:
                    ej.zzb(parcel, readInt);
                    break;
            }
        }
        ej.zzaf(parcel, zzd);
        TokenData tokenData = new TokenData(i, str, l, z, z2, arrayList);
        return tokenData;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new TokenData[i];
    }
}
