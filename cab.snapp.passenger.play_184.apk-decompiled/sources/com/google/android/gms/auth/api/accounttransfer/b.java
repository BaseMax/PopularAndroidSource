package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;
import java.util.ArrayList;

public final class b implements Parcelable.Creator<zzp> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        ArrayList<String> arrayList3 = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = ej.zzg(parcel, readInt);
                    break;
                case 2:
                    arrayList = ej.zzac(parcel, readInt);
                    break;
                case 3:
                    arrayList2 = ej.zzac(parcel, readInt);
                    break;
                case 4:
                    arrayList3 = ej.zzac(parcel, readInt);
                    break;
                case 5:
                    arrayList4 = ej.zzac(parcel, readInt);
                    break;
                case 6:
                    arrayList5 = ej.zzac(parcel, readInt);
                    break;
                default:
                    ej.zzb(parcel, readInt);
                    break;
            }
        }
        ej.zzaf(parcel, zzd);
        zzp zzp = new zzp(i, arrayList, arrayList2, arrayList3, arrayList4, arrayList5);
        return zzp;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzp[i];
    }
}
