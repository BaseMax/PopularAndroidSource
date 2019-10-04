package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class m implements Parcelable.Creator<CameraPosition> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        float f = 0.0f;
        LatLng latLng = null;
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                latLng = (LatLng) ej.zza(parcel, readInt, LatLng.CREATOR);
            } else if (i == 3) {
                f = ej.zzl(parcel, readInt);
            } else if (i == 4) {
                f2 = ej.zzl(parcel, readInt);
            } else if (i != 5) {
                ej.zzb(parcel, readInt);
            } else {
                f3 = ej.zzl(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new CameraPosition(latLng, f, f2, f3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new CameraPosition[i];
    }
}
