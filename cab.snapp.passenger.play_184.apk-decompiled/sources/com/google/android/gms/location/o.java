package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;
import java.util.ArrayList;

public final class o implements Parcelable.Creator<LocationSettingsRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        boolean z = false;
        ArrayList<LocationRequest> arrayList = null;
        zzz zzz = null;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                arrayList = ej.zzc(parcel, readInt, LocationRequest.CREATOR);
            } else if (i == 2) {
                z = ej.zzc(parcel, readInt);
            } else if (i == 3) {
                z2 = ej.zzc(parcel, readInt);
            } else if (i != 5) {
                ej.zzb(parcel, readInt);
            } else {
                zzz = (zzz) ej.zza(parcel, readInt, zzz.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new LocationSettingsRequest(arrayList, z, z2, zzz);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new LocationSettingsRequest[i];
    }
}
