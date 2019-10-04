package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;

public final class zzcgl extends zzbfm {
    public static final Parcelable.Creator<zzcgl> CREATOR = new ib();

    /* renamed from: a  reason: collision with root package name */
    private int f3601a;
    public String packageName;
    public String zziyf;
    public zzcln zziyg;
    public long zziyh;
    public boolean zziyi;
    public String zziyj;
    public zzcha zziyk;
    public long zziyl;
    public zzcha zziym;
    public long zziyn;
    public zzcha zziyo;

    zzcgl(int i, String str, String str2, zzcln zzcln, long j, boolean z, String str3, zzcha zzcha, long j2, zzcha zzcha2, long j3, zzcha zzcha3) {
        this.f3601a = i;
        this.packageName = str;
        this.zziyf = str2;
        this.zziyg = zzcln;
        this.zziyh = j;
        this.zziyi = z;
        this.zziyj = str3;
        this.zziyk = zzcha;
        this.zziyl = j2;
        this.zziym = zzcha2;
        this.zziyn = j3;
        this.zziyo = zzcha3;
    }

    zzcgl(zzcgl zzcgl) {
        this.f3601a = 1;
        ap.checkNotNull(zzcgl);
        this.packageName = zzcgl.packageName;
        this.zziyf = zzcgl.zziyf;
        this.zziyg = zzcgl.zziyg;
        this.zziyh = zzcgl.zziyh;
        this.zziyi = zzcgl.zziyi;
        this.zziyj = zzcgl.zziyj;
        this.zziyk = zzcgl.zziyk;
        this.zziyl = zzcgl.zziyl;
        this.zziym = zzcgl.zziym;
        this.zziyn = zzcgl.zziyn;
        this.zziyo = zzcgl.zziyo;
    }

    zzcgl(String str, String str2, zzcln zzcln, long j, boolean z, String str3, zzcha zzcha, long j2, zzcha zzcha2, long j3, zzcha zzcha3) {
        this.f3601a = 1;
        this.packageName = str;
        this.zziyf = str2;
        this.zziyg = zzcln;
        this.zziyh = j;
        this.zziyi = z;
        this.zziyj = str3;
        this.zziyk = zzcha;
        this.zziyl = j2;
        this.zziym = zzcha2;
        this.zziyn = j3;
        this.zziyo = zzcha3;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3601a);
        el.zza(parcel, 2, this.packageName, false);
        el.zza(parcel, 3, this.zziyf, false);
        el.zza(parcel, 4, (Parcelable) this.zziyg, i, false);
        el.zza(parcel, 5, this.zziyh);
        el.zza(parcel, 6, this.zziyi);
        el.zza(parcel, 7, this.zziyj, false);
        el.zza(parcel, 8, (Parcelable) this.zziyk, i, false);
        el.zza(parcel, 9, this.zziyl);
        el.zza(parcel, 10, (Parcelable) this.zziym, i, false);
        el.zza(parcel, 11, this.zziyn);
        el.zza(parcel, 12, (Parcelable) this.zziyo, i, false);
        el.zzai(parcel, zze);
    }
}
