package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class aa implements Parcelable.Creator<StreetViewPanoramaLocation> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        StreetViewPanoramaLink[] streetViewPanoramaLinkArr = null;
        LatLng latLng = null;
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                streetViewPanoramaLinkArr = (StreetViewPanoramaLink[]) ej.zzb(parcel, readInt, StreetViewPanoramaLink.CREATOR);
            } else if (i == 3) {
                latLng = (LatLng) ej.zza(parcel, readInt, LatLng.CREATOR);
            } else if (i != 4) {
                ej.zzb(parcel, readInt);
            } else {
                str = ej.zzq(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        return new StreetViewPanoramaLocation(streetViewPanoramaLinkArr, latLng, str);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new StreetViewPanoramaLocation[i];
    }
}
