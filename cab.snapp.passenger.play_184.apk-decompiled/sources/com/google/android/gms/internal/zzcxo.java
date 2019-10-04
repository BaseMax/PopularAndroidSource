package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzbr;

public final class zzcxo extends zzbfm {
    public static final Parcelable.Creator<zzcxo> CREATOR = new ol();

    /* renamed from: a  reason: collision with root package name */
    private int f3609a;

    /* renamed from: b  reason: collision with root package name */
    private zzbr f3610b;

    zzcxo(int i, zzbr zzbr) {
        this.f3609a = i;
        this.f3610b = zzbr;
    }

    public zzcxo(zzbr zzbr) {
        this(1, zzbr);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3609a);
        el.zza(parcel, 2, (Parcelable) this.f3610b, i, false);
        el.zzai(parcel, zze);
    }
}
