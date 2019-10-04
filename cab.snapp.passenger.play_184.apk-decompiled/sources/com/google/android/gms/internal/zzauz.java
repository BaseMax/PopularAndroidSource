package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;

public final class zzauz extends zzbfm {
    public static final Parcelable.Creator<zzauz> CREATOR = new cl();

    /* renamed from: a  reason: collision with root package name */
    private int f3546a;

    /* renamed from: b  reason: collision with root package name */
    private String f3547b;

    public zzauz(String str) {
        this(str, (byte) 0);
    }

    zzauz(String str, byte b2) {
        this.f3546a = 1;
        this.f3547b = (String) ap.checkNotNull(str);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3546a);
        el.zza(parcel, 2, this.f3547b, false);
        el.zzai(parcel, zze);
    }
}
