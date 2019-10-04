package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class q implements Parcelable.Creator<LatLngBounds> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                latLng = (LatLng) ej.zza(parcel, readInt, LatLng.CREATOR);
            } else if (i != 3) {
                ej.zzb(parcel, readInt);
            } else {
                latLng2 = (LatLng) ej.zza(parcel, readInt, LatLng.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new LatLngBounds(latLng, latLng2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new LatLngBounds[i];
    }
}
