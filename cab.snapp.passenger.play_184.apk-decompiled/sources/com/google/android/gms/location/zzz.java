package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class zzz extends zzbfm {
    public static final Parcelable.Creator<zzz> CREATOR = new n();

    /* renamed from: a  reason: collision with root package name */
    private final String f3661a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3662b;
    private final int c;
    private final boolean d;
    private final String e;

    zzz(String str, String str2, String str3, int i, boolean z) {
        this.e = str;
        this.f3661a = str2;
        this.f3662b = str3;
        this.c = i;
        this.d = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, this.f3661a, false);
        el.zza(parcel, 2, this.f3662b, false);
        el.zzc(parcel, 3, this.c);
        el.zza(parcel, 4, this.d);
        el.zza(parcel, 5, this.e, false);
        el.zzai(parcel, zze);
    }
}
