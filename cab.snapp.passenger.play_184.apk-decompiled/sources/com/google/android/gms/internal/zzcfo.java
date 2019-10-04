package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

public final class zzcfo extends zzbfm {
    public static final Parcelable.Creator<zzcfo> CREATOR = new hn();

    /* renamed from: a  reason: collision with root package name */
    static final List<zzcdv> f3595a = Collections.emptyList();

    /* renamed from: b  reason: collision with root package name */
    private LocationRequest f3596b;
    private List<zzcdv> c;
    private String d;
    private boolean e;
    private boolean f;
    private boolean g;
    private String h;
    private boolean i = true;

    zzcfo(LocationRequest locationRequest, List<zzcdv> list, String str, boolean z, boolean z2, boolean z3, String str2) {
        this.f3596b = locationRequest;
        this.c = list;
        this.d = str;
        this.e = z;
        this.f = z2;
        this.g = z3;
        this.h = str2;
    }

    @Deprecated
    public static zzcfo zza(LocationRequest locationRequest) {
        zzcfo zzcfo = new zzcfo(locationRequest, f3595a, null, false, false, false, null);
        return zzcfo;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzcfo)) {
            return false;
        }
        zzcfo zzcfo = (zzcfo) obj;
        return ag.equal(this.f3596b, zzcfo.f3596b) && ag.equal(this.c, zzcfo.c) && ag.equal(this.d, zzcfo.d) && this.e == zzcfo.e && this.f == zzcfo.f && this.g == zzcfo.g && ag.equal(this.h, zzcfo.h);
    }

    public final int hashCode() {
        return this.f3596b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f3596b.toString());
        if (this.d != null) {
            sb.append(" tag=");
            sb.append(this.d);
        }
        if (this.h != null) {
            sb.append(" moduleId=");
            sb.append(this.h);
        }
        sb.append(" hideAppOps=");
        sb.append(this.e);
        sb.append(" clients=");
        sb.append(this.c);
        sb.append(" forceCoarseLocation=");
        sb.append(this.f);
        if (this.g) {
            sb.append(" exemptFromBackgroundThrottle");
        }
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, (Parcelable) this.f3596b, i2, false);
        el.zzc(parcel, 5, this.c, false);
        el.zza(parcel, 6, this.d, false);
        el.zza(parcel, 7, this.e);
        el.zza(parcel, 8, this.f);
        el.zza(parcel, 9, this.g);
        el.zza(parcel, 10, this.h, false);
        el.zzai(parcel, zze);
    }
}
