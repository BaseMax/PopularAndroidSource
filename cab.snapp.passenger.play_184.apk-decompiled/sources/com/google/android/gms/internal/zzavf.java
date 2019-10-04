package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;

public final class zzavf extends zzbfm {
    public static final Parcelable.Creator<zzavf> CREATOR = new cm();

    /* renamed from: a  reason: collision with root package name */
    private int f3548a;

    /* renamed from: b  reason: collision with root package name */
    private String f3549b;
    private int c;

    public zzavf(String str, int i) {
        this(str, i, (byte) 0);
    }

    zzavf(String str, int i, byte b2) {
        this.f3548a = 1;
        this.f3549b = (String) ap.checkNotNull(str);
        this.c = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3548a);
        el.zza(parcel, 2, this.f3549b, false);
        el.zzc(parcel, 3, this.c);
        el.zzai(parcel, zze);
    }
}
