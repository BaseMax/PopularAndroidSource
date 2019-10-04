package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class PointOfInterest extends zzbfm {
    public static final Parcelable.Creator<PointOfInterest> CREATOR = new v();
    public final LatLng latLng;
    public final String name;
    public final String placeId;

    public PointOfInterest(LatLng latLng2, String str, String str2) {
        this.latLng = latLng2;
        this.placeId = str;
        this.name = str2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, (Parcelable) this.latLng, i, false);
        el.zza(parcel, 3, this.placeId, false);
        el.zza(parcel, 4, this.name, false);
        el.zzai(parcel, zze);
    }
}
