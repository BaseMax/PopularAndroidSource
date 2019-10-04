package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;

public final class zzavz extends zzbfm {
    public static final Parcelable.Creator<zzavz> CREATOR = new dc();

    /* renamed from: a  reason: collision with root package name */
    private final Credential f3556a;

    public zzavz(Credential credential) {
        this.f3556a = credential;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, (Parcelable) this.f3556a, i, false);
        el.zzai(parcel, zze);
    }
}
