package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.ag;
import com.google.android.gms.location.ah;
import com.google.android.gms.location.aj;
import com.google.android.gms.location.ak;

public final class zzcfq extends zzbfm {
    public static final Parcelable.Creator<zzcfq> CREATOR = new ho();

    /* renamed from: a  reason: collision with root package name */
    private int f3597a;

    /* renamed from: b  reason: collision with root package name */
    private zzcfo f3598b;
    private aj c;
    private PendingIntent d;
    private ag e;
    private gt f;

    zzcfq(int i, zzcfo zzcfo, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        this.f3597a = i;
        this.f3598b = zzcfo;
        gt gtVar = null;
        this.c = iBinder == null ? null : ak.zzbe(iBinder);
        this.d = pendingIntent;
        this.e = iBinder2 == null ? null : ah.zzbd(iBinder2);
        if (!(iBinder3 == null || iBinder3 == null)) {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            gtVar = queryLocalInterface instanceof gt ? (gt) queryLocalInterface : new gv(iBinder3);
        }
        this.f = gtVar;
    }

    public static zzcfq zza(ag agVar, gt gtVar) {
        zzcfq zzcfq = new zzcfq(2, null, null, null, agVar.asBinder(), gtVar != null ? gtVar.asBinder() : null);
        return zzcfq;
    }

    public static zzcfq zza(aj ajVar, gt gtVar) {
        zzcfq zzcfq = new zzcfq(2, null, ajVar.asBinder(), null, null, gtVar != null ? gtVar.asBinder() : null);
        return zzcfq;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3597a);
        el.zza(parcel, 2, (Parcelable) this.f3598b, i, false);
        aj ajVar = this.c;
        IBinder iBinder = null;
        el.zza(parcel, 3, ajVar == null ? null : ajVar.asBinder(), false);
        el.zza(parcel, 4, (Parcelable) this.d, i, false);
        ag agVar = this.e;
        el.zza(parcel, 5, agVar == null ? null : agVar.asBinder(), false);
        gt gtVar = this.f;
        if (gtVar != null) {
            iBinder = gtVar.asBinder();
        }
        el.zza(parcel, 6, iBinder, false);
        el.zzai(parcel, zze);
    }
}
