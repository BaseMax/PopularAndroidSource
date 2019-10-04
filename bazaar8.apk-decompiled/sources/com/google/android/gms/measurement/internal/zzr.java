package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.d.r;
import c.e.a.b.h.b.oc;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new oc();

    /* renamed from: a  reason: collision with root package name */
    public String f13256a;

    /* renamed from: b  reason: collision with root package name */
    public String f13257b;

    /* renamed from: c  reason: collision with root package name */
    public zzga f13258c;

    /* renamed from: d  reason: collision with root package name */
    public long f13259d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f13260e;

    /* renamed from: f  reason: collision with root package name */
    public String f13261f;

    /* renamed from: g  reason: collision with root package name */
    public zzaj f13262g;

    /* renamed from: h  reason: collision with root package name */
    public long f13263h;

    /* renamed from: i  reason: collision with root package name */
    public zzaj f13264i;

    /* renamed from: j  reason: collision with root package name */
    public long f13265j;

    /* renamed from: k  reason: collision with root package name */
    public zzaj f13266k;

    public zzr(zzr zzr) {
        r.a(zzr);
        this.f13256a = zzr.f13256a;
        this.f13257b = zzr.f13257b;
        this.f13258c = zzr.f13258c;
        this.f13259d = zzr.f13259d;
        this.f13260e = zzr.f13260e;
        this.f13261f = zzr.f13261f;
        this.f13262g = zzr.f13262g;
        this.f13263h = zzr.f13263h;
        this.f13264i = zzr.f13264i;
        this.f13265j = zzr.f13265j;
        this.f13266k = zzr.f13266k;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 2, this.f13256a, false);
        a.a(parcel, 3, this.f13257b, false);
        a.a(parcel, 4, (Parcelable) this.f13258c, i2, false);
        a.a(parcel, 5, this.f13259d);
        a.a(parcel, 6, this.f13260e);
        a.a(parcel, 7, this.f13261f, false);
        a.a(parcel, 8, (Parcelable) this.f13262g, i2, false);
        a.a(parcel, 9, this.f13263h);
        a.a(parcel, 10, (Parcelable) this.f13264i, i2, false);
        a.a(parcel, 11, this.f13265j);
        a.a(parcel, 12, (Parcelable) this.f13266k, i2, false);
        a.a(parcel, a2);
    }

    public zzr(String str, String str2, zzga zzga, long j2, boolean z, String str3, zzaj zzaj, long j3, zzaj zzaj2, long j4, zzaj zzaj3) {
        this.f13256a = str;
        this.f13257b = str2;
        this.f13258c = zzga;
        this.f13259d = j2;
        this.f13260e = z;
        this.f13261f = str3;
        this.f13262g = zzaj;
        this.f13263h = j3;
        this.f13264i = zzaj2;
        this.f13265j = j4;
        this.f13266k = zzaj3;
    }
}
