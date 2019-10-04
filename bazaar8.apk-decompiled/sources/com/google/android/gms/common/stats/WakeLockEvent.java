package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.f.b;
import java.util.List;

public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    public final int f13129a;

    /* renamed from: b  reason: collision with root package name */
    public final long f13130b;

    /* renamed from: c  reason: collision with root package name */
    public int f13131c;

    /* renamed from: d  reason: collision with root package name */
    public final String f13132d;

    /* renamed from: e  reason: collision with root package name */
    public final String f13133e;

    /* renamed from: f  reason: collision with root package name */
    public final String f13134f;

    /* renamed from: g  reason: collision with root package name */
    public final int f13135g;

    /* renamed from: h  reason: collision with root package name */
    public final List<String> f13136h;

    /* renamed from: i  reason: collision with root package name */
    public final String f13137i;

    /* renamed from: j  reason: collision with root package name */
    public final long f13138j;

    /* renamed from: k  reason: collision with root package name */
    public int f13139k;

    /* renamed from: l  reason: collision with root package name */
    public final String f13140l;
    public final float m;
    public final long n;
    public final boolean o;
    public long p = -1;

    public WakeLockEvent(int i2, long j2, int i3, String str, int i4, List<String> list, String str2, long j3, int i5, String str3, String str4, float f2, long j4, String str5, boolean z) {
        this.f13129a = i2;
        this.f13130b = j2;
        this.f13131c = i3;
        this.f13132d = str;
        this.f13133e = str3;
        this.f13134f = str5;
        this.f13135g = i4;
        this.f13136h = list;
        this.f13137i = str2;
        this.f13138j = j3;
        this.f13139k = i5;
        this.f13140l = str4;
        this.m = f2;
        this.n = j4;
        this.o = z;
    }

    public final String A() {
        String str;
        String str2 = this.f13132d;
        int i2 = this.f13135g;
        List<String> list = this.f13136h;
        String str3 = "";
        if (list == null) {
            str = str3;
        } else {
            str = TextUtils.join(",", list);
        }
        int i3 = this.f13139k;
        String str4 = this.f13133e;
        if (str4 == null) {
            str4 = str3;
        }
        String str5 = this.f13140l;
        if (str5 == null) {
            str5 = str3;
        }
        float f2 = this.m;
        String str6 = this.f13134f;
        if (str6 != null) {
            str3 = str6;
        }
        boolean z = this.o;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 51 + String.valueOf(str).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str3).length());
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(i2);
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i3);
        sb.append("\t");
        sb.append(str4);
        sb.append("\t");
        sb.append(str5);
        sb.append("\t");
        sb.append(f2);
        sb.append("\t");
        sb.append(str3);
        sb.append("\t");
        sb.append(z);
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13129a);
        a.a(parcel, 2, y());
        a.a(parcel, 4, this.f13132d, false);
        a.a(parcel, 5, this.f13135g);
        a.a(parcel, 6, this.f13136h, false);
        a.a(parcel, 8, this.f13138j);
        a.a(parcel, 10, this.f13133e, false);
        a.a(parcel, 11, x());
        a.a(parcel, 12, this.f13137i, false);
        a.a(parcel, 13, this.f13140l, false);
        a.a(parcel, 14, this.f13139k);
        a.a(parcel, 15, this.m);
        a.a(parcel, 16, this.n);
        a.a(parcel, 17, this.f13134f, false);
        a.a(parcel, 18, this.o);
        a.a(parcel, a2);
    }

    public final int x() {
        return this.f13131c;
    }

    public final long y() {
        return this.f13130b;
    }

    public final long z() {
        return this.p;
    }
}
