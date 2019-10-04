package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;

public final class zzae extends zzbfm {
    public static final Parcelable.Creator<zzae> CREATOR = new r();

    /* renamed from: a  reason: collision with root package name */
    private int f3655a;

    /* renamed from: b  reason: collision with root package name */
    private int f3656b;
    private long c;
    private long d;

    zzae(int i, int i2, long j, long j2) {
        this.f3655a = i;
        this.f3656b = i2;
        this.c = j;
        this.d = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzae zzae = (zzae) obj;
            return this.f3655a == zzae.f3655a && this.f3656b == zzae.f3656b && this.c == zzae.c && this.d == zzae.d;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3656b), Integer.valueOf(this.f3655a), Long.valueOf(this.d), Long.valueOf(this.c)});
    }

    public final String toString() {
        return "NetworkLocationStatus:" + " Wifi status: " + this.f3655a + " Cell status: " + this.f3656b + " elapsed time NS: " + this.d + " system time ms: " + this.c;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3655a);
        el.zzc(parcel, 2, this.f3656b);
        el.zza(parcel, 3, this.c);
        el.zza(parcel, 4, this.d);
        el.zzai(parcel, zze);
    }
}
