package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

public final class zzbef extends zzbfm {
    public static final Parcelable.Creator<zzbef> CREATOR = new du();

    /* renamed from: a  reason: collision with root package name */
    private boolean f3561a;

    /* renamed from: b  reason: collision with root package name */
    private long f3562b;
    private long c;

    public zzbef(boolean z, long j, long j2) {
        this.f3561a = z;
        this.f3562b = j;
        this.c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbef) {
            zzbef zzbef = (zzbef) obj;
            return this.f3561a == zzbef.f3561a && this.f3562b == zzbef.f3562b && this.c == zzbef.c;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f3561a), Long.valueOf(this.f3562b), Long.valueOf(this.c)});
    }

    public final String toString() {
        return "CollectForDebugParcelable[skipPersistentStorage: " + this.f3561a + ",collectForDebugStartTimeMillis: " + this.f3562b + ",collectForDebugExpiryTimeMillis: " + this.c + "]";
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, this.f3561a);
        el.zza(parcel, 2, this.c);
        el.zza(parcel, 3, this.f3562b);
        el.zzai(parcel, zze);
    }
}
