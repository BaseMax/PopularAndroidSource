package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.d.r;
import c.e.a.b.h.b.kc;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class zzm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new kc();

    /* renamed from: a  reason: collision with root package name */
    public final String f13244a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13245b;

    /* renamed from: c  reason: collision with root package name */
    public final String f13246c;

    /* renamed from: d  reason: collision with root package name */
    public final String f13247d;

    /* renamed from: e  reason: collision with root package name */
    public final long f13248e;

    /* renamed from: f  reason: collision with root package name */
    public final long f13249f;

    /* renamed from: g  reason: collision with root package name */
    public final String f13250g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f13251h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f13252i;

    /* renamed from: j  reason: collision with root package name */
    public final long f13253j;

    /* renamed from: k  reason: collision with root package name */
    public final String f13254k;

    /* renamed from: l  reason: collision with root package name */
    public final long f13255l;
    public final long m;
    public final int n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final String r;
    public final Boolean s;
    public final long t;

    public zzm(String str, String str2, String str3, long j2, String str4, long j3, long j4, String str5, boolean z, boolean z2, String str6, long j5, long j6, int i2, boolean z3, boolean z4, boolean z5, String str7, Boolean bool, long j7) {
        r.b(str);
        this.f13244a = str;
        this.f13245b = TextUtils.isEmpty(str2) ? null : str2;
        this.f13246c = str3;
        this.f13253j = j2;
        this.f13247d = str4;
        this.f13248e = j3;
        this.f13249f = j4;
        this.f13250g = str5;
        this.f13251h = z;
        this.f13252i = z2;
        this.f13254k = str6;
        this.f13255l = j5;
        this.m = j6;
        this.n = i2;
        this.o = z3;
        this.p = z4;
        this.q = z5;
        this.r = str7;
        this.s = bool;
        this.t = j7;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 2, this.f13244a, false);
        a.a(parcel, 3, this.f13245b, false);
        a.a(parcel, 4, this.f13246c, false);
        a.a(parcel, 5, this.f13247d, false);
        a.a(parcel, 6, this.f13248e);
        a.a(parcel, 7, this.f13249f);
        a.a(parcel, 8, this.f13250g, false);
        a.a(parcel, 9, this.f13251h);
        a.a(parcel, 10, this.f13252i);
        a.a(parcel, 11, this.f13253j);
        a.a(parcel, 12, this.f13254k, false);
        a.a(parcel, 13, this.f13255l);
        a.a(parcel, 14, this.m);
        a.a(parcel, 15, this.n);
        a.a(parcel, 16, this.o);
        a.a(parcel, 17, this.p);
        a.a(parcel, 18, this.q);
        a.a(parcel, 19, this.r, false);
        a.a(parcel, 21, this.s, false);
        a.a(parcel, 22, this.t);
        a.a(parcel, a2);
    }

    public zzm(String str, String str2, String str3, String str4, long j2, long j3, String str5, boolean z, boolean z2, long j4, String str6, long j5, long j6, int i2, boolean z3, boolean z4, boolean z5, String str7, Boolean bool, long j7) {
        this.f13244a = str;
        this.f13245b = str2;
        this.f13246c = str3;
        this.f13253j = j4;
        this.f13247d = str4;
        this.f13248e = j2;
        this.f13249f = j3;
        this.f13250g = str5;
        this.f13251h = z;
        this.f13252i = z2;
        this.f13254k = str6;
        this.f13255l = j5;
        this.m = j6;
        this.n = i2;
        this.o = z3;
        this.p = z4;
        this.q = z5;
        this.r = str7;
        this.s = bool;
        this.t = j7;
    }
}
