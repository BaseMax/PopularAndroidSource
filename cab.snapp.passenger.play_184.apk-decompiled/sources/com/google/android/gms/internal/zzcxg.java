package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;

public final class zzcxg extends zzbfm implements m {
    public static final Parcelable.Creator<zzcxg> CREATOR = new oe();

    /* renamed from: a  reason: collision with root package name */
    private int f3607a;

    /* renamed from: b  reason: collision with root package name */
    private int f3608b;
    private Intent c;

    public zzcxg() {
        this((byte) 0);
    }

    private zzcxg(byte b2) {
        this(2, 0, null);
    }

    zzcxg(int i, int i2, Intent intent) {
        this.f3607a = i;
        this.f3608b = i2;
        this.c = intent;
    }

    public final Status getStatus() {
        return this.f3608b == 0 ? Status.zzfni : Status.zzfnm;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3607a);
        el.zzc(parcel, 2, this.f3608b);
        el.zza(parcel, 3, (Parcelable) this.c, i, false);
        el.zzai(parcel, zze);
    }
}
