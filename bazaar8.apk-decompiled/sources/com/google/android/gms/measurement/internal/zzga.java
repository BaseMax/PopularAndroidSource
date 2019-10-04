package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.d.r;
import c.e.a.b.h.b.ac;
import c.e.a.b.h.b.bc;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class zzga extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzga> CREATOR = new ac();

    /* renamed from: a  reason: collision with root package name */
    public final int f13236a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13237b;

    /* renamed from: c  reason: collision with root package name */
    public final long f13238c;

    /* renamed from: d  reason: collision with root package name */
    public final Long f13239d;

    /* renamed from: e  reason: collision with root package name */
    public final Float f13240e;

    /* renamed from: f  reason: collision with root package name */
    public final String f13241f;

    /* renamed from: g  reason: collision with root package name */
    public final String f13242g;

    /* renamed from: h  reason: collision with root package name */
    public final Double f13243h;

    public zzga(bc bcVar) {
        this(bcVar.f10832c, bcVar.f10833d, bcVar.f10834e, bcVar.f10831b);
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13236a);
        a.a(parcel, 2, this.f13237b, false);
        a.a(parcel, 3, this.f13238c);
        a.a(parcel, 4, this.f13239d, false);
        a.a(parcel, 5, (Float) null, false);
        a.a(parcel, 6, this.f13241f, false);
        a.a(parcel, 7, this.f13242g, false);
        a.a(parcel, 8, this.f13243h, false);
        a.a(parcel, a2);
    }

    public final Object x() {
        Long l2 = this.f13239d;
        if (l2 != null) {
            return l2;
        }
        Double d2 = this.f13243h;
        if (d2 != null) {
            return d2;
        }
        String str = this.f13241f;
        if (str != null) {
            return str;
        }
        return null;
    }

    public zzga(String str, long j2, Object obj, String str2) {
        r.b(str);
        this.f13236a = 2;
        this.f13237b = str;
        this.f13238c = j2;
        this.f13242g = str2;
        if (obj == null) {
            this.f13239d = null;
            this.f13240e = null;
            this.f13243h = null;
            this.f13241f = null;
        } else if (obj instanceof Long) {
            this.f13239d = (Long) obj;
            this.f13240e = null;
            this.f13243h = null;
            this.f13241f = null;
        } else if (obj instanceof String) {
            this.f13239d = null;
            this.f13240e = null;
            this.f13243h = null;
            this.f13241f = (String) obj;
        } else if (obj instanceof Double) {
            this.f13239d = null;
            this.f13240e = null;
            this.f13243h = (Double) obj;
            this.f13241f = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    public zzga(String str, long j2, String str2) {
        r.b(str);
        this.f13236a = 2;
        this.f13237b = str;
        this.f13238c = 0;
        this.f13239d = null;
        this.f13240e = null;
        this.f13243h = null;
        this.f13241f = null;
        this.f13242g = null;
    }

    public zzga(int i2, String str, long j2, Long l2, Float f2, String str2, String str3, Double d2) {
        this.f13236a = i2;
        this.f13237b = str;
        this.f13238c = j2;
        this.f13239d = l2;
        Double d3 = null;
        this.f13240e = null;
        if (i2 == 1) {
            this.f13243h = f2 != null ? Double.valueOf(f2.doubleValue()) : d3;
        } else {
            this.f13243h = d2;
        }
        this.f13241f = str2;
        this.f13242g = str3;
    }
}
