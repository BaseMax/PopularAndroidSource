package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class zzbgv extends zzbfm {
    public static final Parcelable.Creator<zzbgv> CREATOR = new fi();

    /* renamed from: a  reason: collision with root package name */
    final String f3581a;

    /* renamed from: b  reason: collision with root package name */
    final zzbgo<?, ?> f3582b;
    private int c;

    zzbgv(int i, String str, zzbgo<?, ?> zzbgo) {
        this.c = i;
        this.f3581a = str;
        this.f3582b = zzbgo;
    }

    zzbgv(String str, zzbgo<?, ?> zzbgo) {
        this.c = 1;
        this.f3581a = str;
        this.f3582b = zzbgo;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.c);
        el.zza(parcel, 2, this.f3581a, false);
        el.zza(parcel, 3, (Parcelable) this.f3582b, i, false);
        el.zzai(parcel, zze);
    }
}
