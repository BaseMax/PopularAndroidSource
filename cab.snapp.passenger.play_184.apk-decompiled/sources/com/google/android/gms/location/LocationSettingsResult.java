package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class LocationSettingsResult extends zzbfm implements m {
    public static final Parcelable.Creator<LocationSettingsResult> CREATOR = new p();

    /* renamed from: a  reason: collision with root package name */
    private final Status f3638a;

    /* renamed from: b  reason: collision with root package name */
    private final LocationSettingsStates f3639b;

    public LocationSettingsResult(Status status) {
        this(status, null);
    }

    public LocationSettingsResult(Status status, LocationSettingsStates locationSettingsStates) {
        this.f3638a = status;
        this.f3639b = locationSettingsStates;
    }

    public final LocationSettingsStates getLocationSettingsStates() {
        return this.f3639b;
    }

    public final Status getStatus() {
        return this.f3638a;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, (Parcelable) getStatus(), i, false);
        el.zza(parcel, 2, (Parcelable) getLocationSettingsStates(), i, false);
        el.zzai(parcel, zze);
    }
}
