package c.e.a.b.h.b;

import c.e.a.b.d.d.r;

/* renamed from: c.e.a.b.h.b.g  reason: case insensitive filesystem */
public final class C0919g {

    /* renamed from: a  reason: collision with root package name */
    public final String f10888a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10889b;

    /* renamed from: c  reason: collision with root package name */
    public final long f10890c;

    /* renamed from: d  reason: collision with root package name */
    public final long f10891d;

    /* renamed from: e  reason: collision with root package name */
    public final long f10892e;

    /* renamed from: f  reason: collision with root package name */
    public final long f10893f;

    /* renamed from: g  reason: collision with root package name */
    public final Long f10894g;

    /* renamed from: h  reason: collision with root package name */
    public final Long f10895h;

    /* renamed from: i  reason: collision with root package name */
    public final Long f10896i;

    /* renamed from: j  reason: collision with root package name */
    public final Boolean f10897j;

    public C0919g(String str, String str2, long j2, long j3, long j4, long j5, Long l2, Long l3, Long l4, Boolean bool) {
        long j6 = j2;
        long j7 = j3;
        long j8 = j5;
        r.b(str);
        r.b(str2);
        boolean z = true;
        r.a(j6 >= 0);
        r.a(j7 >= 0);
        r.a(j8 < 0 ? false : z);
        this.f10888a = str;
        this.f10889b = str2;
        this.f10890c = j6;
        this.f10891d = j7;
        this.f10892e = j4;
        this.f10893f = j8;
        this.f10894g = l2;
        this.f10895h = l3;
        this.f10896i = l4;
        this.f10897j = bool;
    }

    public final C0919g a(long j2) {
        C0919g gVar = new C0919g(this.f10888a, this.f10889b, this.f10890c, this.f10891d, j2, this.f10893f, this.f10894g, this.f10895h, this.f10896i, this.f10897j);
        return gVar;
    }

    public final C0919g a(long j2, long j3) {
        C0919g gVar = new C0919g(this.f10888a, this.f10889b, this.f10890c, this.f10891d, this.f10892e, j2, Long.valueOf(j3), this.f10895h, this.f10896i, this.f10897j);
        return gVar;
    }

    public final C0919g a(Long l2, Long l3, Boolean bool) {
        C0919g gVar = new C0919g(this.f10888a, this.f10889b, this.f10890c, this.f10891d, this.f10892e, this.f10893f, this.f10894g, l2, l3, (bool == null || bool.booleanValue()) ? bool : null);
        return gVar;
    }
}
