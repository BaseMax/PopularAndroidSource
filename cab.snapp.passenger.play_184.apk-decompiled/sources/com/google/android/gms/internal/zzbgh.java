package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class zzbgh extends zzbfm {
    public static final Parcelable.Creator<zzbgh> CREATOR = new fc();

    /* renamed from: a  reason: collision with root package name */
    private int f3569a;

    /* renamed from: b  reason: collision with root package name */
    private final zzbgj f3570b;

    zzbgh(int i, zzbgj zzbgj) {
        this.f3569a = i;
        this.f3570b = zzbgj;
    }

    private zzbgh(zzbgj zzbgj) {
        this.f3569a = 1;
        this.f3570b = zzbgj;
    }

    public static zzbgh zza(fg<?, ?> fgVar) {
        if (fgVar instanceof zzbgj) {
            return new zzbgh((zzbgj) fgVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3569a);
        el.zza(parcel, 2, (Parcelable) this.f3570b, i, false);
        el.zzai(parcel, zze);
    }

    public final fg<?, ?> zzalt() {
        zzbgj zzbgj = this.f3570b;
        if (zzbgj != null) {
            return zzbgj;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }
}
