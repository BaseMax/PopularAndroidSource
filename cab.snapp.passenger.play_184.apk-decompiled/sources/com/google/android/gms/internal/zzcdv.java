package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ag;

public final class zzcdv extends zzbfm {
    public static final Parcelable.Creator<zzcdv> CREATOR = new fy();

    /* renamed from: a  reason: collision with root package name */
    private int f3587a;

    /* renamed from: b  reason: collision with root package name */
    private String f3588b;

    public zzcdv(int i, String str) {
        this.f3587a = i;
        this.f3588b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof zzcdv)) {
            zzcdv zzcdv = (zzcdv) obj;
            return zzcdv.f3587a == this.f3587a && ag.equal(zzcdv.f3588b, this.f3588b);
        }
    }

    public final int hashCode() {
        return this.f3587a;
    }

    public final String toString() {
        return String.format("%d:%s", new Object[]{Integer.valueOf(this.f3587a), this.f3588b});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3587a);
        el.zza(parcel, 2, this.f3588b, false);
        el.zzai(parcel, zze);
    }
}
