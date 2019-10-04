package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class zzc extends zzbfm {
    public static final Parcelable.Creator<zzc> CREATOR = new h();

    /* renamed from: a  reason: collision with root package name */
    private String f3020a;

    /* renamed from: b  reason: collision with root package name */
    private int f3021b;

    public zzc(String str, int i) {
        this.f3020a = str;
        this.f3021b = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, this.f3020a, false);
        el.zzc(parcel, 2, this.f3021b);
        el.zzai(parcel, zze);
    }
}
