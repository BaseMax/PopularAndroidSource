package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzbt;

public final class zzcxq extends zzbfm {
    public static final Parcelable.Creator<zzcxq> CREATOR = new om();

    /* renamed from: a  reason: collision with root package name */
    private int f3611a;

    /* renamed from: b  reason: collision with root package name */
    private final ConnectionResult f3612b;
    private final zzbt c;

    public zzcxq(int i) {
        this(new ConnectionResult(8, null));
    }

    zzcxq(int i, ConnectionResult connectionResult, zzbt zzbt) {
        this.f3611a = i;
        this.f3612b = connectionResult;
        this.c = zzbt;
    }

    private zzcxq(ConnectionResult connectionResult) {
        this(1, connectionResult, null);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3611a);
        el.zza(parcel, 2, (Parcelable) this.f3612b, i, false);
        el.zza(parcel, 3, (Parcelable) this.c, i, false);
        el.zzai(parcel, zze);
    }

    public final ConnectionResult zzahf() {
        return this.f3612b;
    }

    public final zzbt zzbdi() {
        return this.c;
    }
}
