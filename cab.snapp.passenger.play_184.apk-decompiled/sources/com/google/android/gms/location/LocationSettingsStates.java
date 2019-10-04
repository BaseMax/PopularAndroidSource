package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.zzbfm;

public final class LocationSettingsStates extends zzbfm {
    public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new q();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f3640a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f3641b;
    private final boolean c;
    private final boolean d;
    private final boolean e;
    private final boolean f;

    public LocationSettingsStates(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f3640a = z;
        this.f3641b = z2;
        this.c = z3;
        this.d = z4;
        this.e = z5;
        this.f = z6;
    }

    public static LocationSettingsStates fromIntent(Intent intent) {
        return (LocationSettingsStates) em.zza(intent, "com.google.android.gms.location.LOCATION_SETTINGS_STATES", CREATOR);
    }

    public final boolean isBlePresent() {
        return this.f;
    }

    public final boolean isBleUsable() {
        return this.c;
    }

    public final boolean isGpsPresent() {
        return this.d;
    }

    public final boolean isGpsUsable() {
        return this.f3640a;
    }

    public final boolean isLocationPresent() {
        return this.d || this.e;
    }

    public final boolean isLocationUsable() {
        return this.f3640a || this.f3641b;
    }

    public final boolean isNetworkLocationPresent() {
        return this.e;
    }

    public final boolean isNetworkLocationUsable() {
        return this.f3641b;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, isGpsUsable());
        el.zza(parcel, 2, isNetworkLocationUsable());
        el.zza(parcel, 3, isBleUsable());
        el.zza(parcel, 4, isGpsPresent());
        el.zza(parcel, 5, isNetworkLocationPresent());
        el.zza(parcel, 6, isBlePresent());
        el.zzai(parcel, zze);
    }
}
