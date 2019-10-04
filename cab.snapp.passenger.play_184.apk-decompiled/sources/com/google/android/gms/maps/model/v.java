package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class v implements Parcelable.Creator<PointOfInterest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        LatLng latLng = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                latLng = (LatLng) ej.zza(parcel, readInt, LatLng.CREATOR);
            } else if (i == 3) {
                str = ej.zzq(parcel, readInt);
            } else if (i != 4) {
                ej.zzb(parcel, readInt);
            } else {
                str2 = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new PointOfInterest(latLng, str, str2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new PointOfInterest[i];
    }
}
