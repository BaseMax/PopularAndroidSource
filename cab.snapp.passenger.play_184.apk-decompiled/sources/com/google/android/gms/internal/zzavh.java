package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;

public final class zzavh extends zzbfm {
    public static final Parcelable.Creator<zzavh> CREATOR = new cn();

    /* renamed from: a  reason: collision with root package name */
    private int f3550a;

    /* renamed from: b  reason: collision with root package name */
    private String f3551b;

    public zzavh(String str) {
        this(str, (byte) 0);
    }

    zzavh(String str, byte b2) {
        this.f3550a = 1;
        this.f3551b = (String) ap.checkNotNull(str);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3550a);
        el.zza(parcel, 2, this.f3551b, false);
        el.zzai(parcel, zze);
    }
}
