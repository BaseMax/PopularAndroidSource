package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class zzbt extends zzbfm {
    public static final Parcelable.Creator<zzbt> CREATOR = new ar();

    /* renamed from: a  reason: collision with root package name */
    private int f2982a;

    /* renamed from: b  reason: collision with root package name */
    private IBinder f2983b;
    private ConnectionResult c;
    private boolean d;
    private boolean e;

    zzbt(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.f2982a = i;
        this.f2983b = iBinder;
        this.c = connectionResult;
        this.d = z;
        this.e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbt)) {
            return false;
        }
        zzbt zzbt = (zzbt) obj;
        return this.c.equals(zzbt.c) && zzalp().equals(zzbt.zzalp());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2982a);
        el.zza(parcel, 2, this.f2983b, false);
        el.zza(parcel, 3, (Parcelable) this.c, i, false);
        el.zza(parcel, 4, this.d);
        el.zza(parcel, 5, this.e);
        el.zzai(parcel, zze);
    }

    public final ConnectionResult zzahf() {
        return this.c;
    }

    public final o zzalp() {
        IBinder iBinder = this.f2983b;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
        return queryLocalInterface instanceof o ? (o) queryLocalInterface : new q(iBinder);
    }

    public final boolean zzalq() {
        return this.d;
    }

    public final boolean zzalr() {
        return this.e;
    }
}
