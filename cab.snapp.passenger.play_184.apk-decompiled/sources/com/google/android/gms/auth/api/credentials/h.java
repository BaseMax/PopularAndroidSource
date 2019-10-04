package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;
import java.util.ArrayList;

public final class h implements Parcelable.Creator<PasswordSpecification> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        ArrayList<String> arrayList = null;
        ArrayList<Integer> arrayList2 = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                str = ej.zzq(parcel, readInt);
            } else if (i3 == 2) {
                arrayList = ej.zzac(parcel, readInt);
            } else if (i3 == 3) {
                arrayList2 = ej.zzab(parcel, readInt);
            } else if (i3 == 4) {
                i = ej.zzg(parcel, readInt);
            } else if (i3 != 5) {
                ej.zzb(parcel, readInt);
            } else {
                i2 = ej.zzg(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        PasswordSpecification passwordSpecification = new PasswordSpecification(str, arrayList, arrayList2, i, i2);
        return passwordSpecification;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new PasswordSpecification[i];
    }
}
