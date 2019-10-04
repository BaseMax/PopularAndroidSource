package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.location.zze;
import java.util.Collections;
import java.util.List;

public final class zzcdx extends zzbfm {
    public static final Parcelable.Creator<zzcdx> CREATOR = new fz();

    /* renamed from: a  reason: collision with root package name */
    static final List<zzcdv> f3589a = Collections.emptyList();

    /* renamed from: b  reason: collision with root package name */
    static final zze f3590b = new zze();
    private zze c;
    private List<zzcdv> d;
    private String e;

    zzcdx(zze zze, List<zzcdv> list, String str) {
        this.c = zze;
        this.d = list;
        this.e = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzcdx)) {
            return false;
        }
        zzcdx zzcdx = (zzcdx) obj;
        return ag.equal(this.c, zzcdx.c) && ag.equal(this.d, zzcdx.d) && ag.equal(this.e, zzcdx.e);
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, (Parcelable) this.c, i, false);
        el.zzc(parcel, 2, this.d, false);
        el.zza(parcel, 3, this.e, false);
        el.zzai(parcel, zze);
    }
}
