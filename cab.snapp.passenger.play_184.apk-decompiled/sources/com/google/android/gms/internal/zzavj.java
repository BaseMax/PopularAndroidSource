package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;

public final class zzavj extends zzbfm {
    public static final Parcelable.Creator<zzavj> CREATOR = new co();

    /* renamed from: a  reason: collision with root package name */
    private int f3552a;

    /* renamed from: b  reason: collision with root package name */
    private String f3553b;
    private byte[] c;

    public zzavj(String str, byte[] bArr) {
        this(str, bArr, (byte) 0);
    }

    zzavj(String str, byte[] bArr, byte b2) {
        this.f3552a = 1;
        this.f3553b = (String) ap.checkNotNull(str);
        this.c = (byte[]) ap.checkNotNull(bArr);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3552a);
        el.zza(parcel, 2, this.f3553b, false);
        el.zza(parcel, 3, this.c, false);
        el.zzai(parcel, zze);
    }
}
