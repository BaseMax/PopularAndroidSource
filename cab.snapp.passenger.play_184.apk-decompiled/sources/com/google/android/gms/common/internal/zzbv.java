package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class zzbv extends zzbfm {
    public static final Parcelable.Creator<zzbv> CREATOR = new as();

    /* renamed from: a  reason: collision with root package name */
    private int f2984a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2985b;
    private final int c;
    @Deprecated
    private final Scope[] d;

    zzbv(int i, int i2, int i3, Scope[] scopeArr) {
        this.f2984a = i;
        this.f2985b = i2;
        this.c = i3;
        this.d = scopeArr;
    }

    public zzbv(int i, int i2, Scope[] scopeArr) {
        this(1, i, i2, null);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2984a);
        el.zzc(parcel, 2, this.f2985b);
        el.zzc(parcel, 3, this.c);
        el.zza(parcel, 4, (T[]) this.d, i, false);
        el.zzai(parcel, zze);
    }
}
