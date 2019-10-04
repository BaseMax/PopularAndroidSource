package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;

public final class zzceo extends zzbfm implements m {
    public static final Parcelable.Creator<zzceo> CREATOR = new go();

    /* renamed from: a  reason: collision with root package name */
    private static zzceo f3593a = new zzceo(Status.zzfni);

    /* renamed from: b  reason: collision with root package name */
    private final Status f3594b;

    public zzceo(Status status) {
        this.f3594b = status;
    }

    public final Status getStatus() {
        return this.f3594b;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, (Parcelable) getStatus(), i, false);
        el.zzai(parcel, zze);
    }
}
