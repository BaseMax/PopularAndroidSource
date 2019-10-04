package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class zzbgk extends zzbfm {
    public static final Parcelable.Creator<zzbgk> CREATOR = new fe();

    /* renamed from: a  reason: collision with root package name */
    final String f3573a;

    /* renamed from: b  reason: collision with root package name */
    final int f3574b;
    private int c;

    zzbgk(int i, String str, int i2) {
        this.c = i;
        this.f3573a = str;
        this.f3574b = i2;
    }

    zzbgk(String str, int i) {
        this.c = 1;
        this.f3573a = str;
        this.f3574b = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.c);
        el.zza(parcel, 2, this.f3573a, false);
        el.zzc(parcel, 3, this.f3574b);
        el.zzai(parcel, zze);
    }
}
