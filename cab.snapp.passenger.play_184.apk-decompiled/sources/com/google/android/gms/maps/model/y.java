package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class y implements Parcelable.Creator<StreetViewPanoramaCamera> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                f = ej.zzl(parcel, readInt);
            } else if (i == 3) {
                f2 = ej.zzl(parcel, readInt);
            } else if (i != 4) {
                ej.zzb(parcel, readInt);
            } else {
                f3 = ej.zzl(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new StreetViewPanoramaCamera(f, f2, f3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new StreetViewPanoramaCamera[i];
    }
}
