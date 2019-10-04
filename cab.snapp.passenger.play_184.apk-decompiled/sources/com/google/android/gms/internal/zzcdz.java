package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.ad;
import com.google.android.gms.location.ae;

public final class zzcdz extends zzbfm {
    public static final Parcelable.Creator<zzcdz> CREATOR = new ga();

    /* renamed from: a  reason: collision with root package name */
    private int f3591a;

    /* renamed from: b  reason: collision with root package name */
    private zzcdx f3592b;
    private ad c;
    private gt d;

    zzcdz(int i, zzcdx zzcdx, IBinder iBinder, IBinder iBinder2) {
        this.f3591a = i;
        this.f3592b = zzcdx;
        gt gtVar = null;
        this.c = iBinder == null ? null : ae.zzbc(iBinder);
        if (!(iBinder2 == null || iBinder2 == null)) {
            IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            gtVar = queryLocalInterface instanceof gt ? (gt) queryLocalInterface : new gv(iBinder2);
        }
        this.d = gtVar;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3591a);
        el.zza(parcel, 2, (Parcelable) this.f3592b, i, false);
        ad adVar = this.c;
        IBinder iBinder = null;
        el.zza(parcel, 3, adVar == null ? null : adVar.asBinder(), false);
        gt gtVar = this.d;
        if (gtVar != null) {
            iBinder = gtVar.asBinder();
        }
        el.zza(parcel, 4, iBinder, false);
        el.zzai(parcel, zze);
    }
}
