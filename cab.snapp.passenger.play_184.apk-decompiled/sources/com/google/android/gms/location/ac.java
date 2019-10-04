package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;
import com.google.android.gms.internal.zzcfs;
import java.util.ArrayList;

public final class ac implements Parcelable.Creator<GeofencingRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        ArrayList<zzcfs> arrayList = null;
        int i = 0;
        String str = "";
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                arrayList = ej.zzc(parcel, readInt, zzcfs.CREATOR);
            } else if (i2 == 2) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 != 3) {
                ej.zzb(parcel, readInt);
            } else {
                str = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new GeofencingRequest(arrayList, i, str);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new GeofencingRequest[i];
    }
}
