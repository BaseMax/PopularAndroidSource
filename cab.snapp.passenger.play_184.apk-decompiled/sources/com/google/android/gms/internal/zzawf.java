package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;

public final class zzawf extends zzbfm {
    public static final Parcelable.Creator<zzawf> CREATOR = new dh();

    /* renamed from: a  reason: collision with root package name */
    private final Credential f3557a;

    public zzawf(Credential credential) {
        this.f3557a = credential;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, (Parcelable) this.f3557a, i, false);
        el.zzai(parcel, zze);
    }
}
