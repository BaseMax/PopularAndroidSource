package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;

final class il {

    /* renamed from: a  reason: collision with root package name */
    final String f3213a;

    /* renamed from: b  reason: collision with root package name */
    final String f3214b;
    final long c;
    final long d;
    final long e;
    final long f;
    final Long g;
    final Long h;
    final Boolean i;

    il(String str, String str2, long j, long j2, long j3, long j4, Long l, Long l2, Boolean bool) {
        long j5 = j;
        long j6 = j2;
        long j7 = j4;
        ap.zzgm(str);
        ap.zzgm(str2);
        boolean z = true;
        ap.checkArgument(j5 >= 0);
        ap.checkArgument(j6 >= 0);
        ap.checkArgument(j7 < 0 ? false : z);
        this.f3213a = str;
        this.f3214b = str2;
        this.c = j5;
        this.d = j6;
        this.e = j3;
        this.f = j7;
        this.g = l;
        this.h = l2;
        this.i = bool;
    }

    /* access modifiers changed from: package-private */
    public final il a() {
        il ilVar = new il(this.f3213a, this.f3214b, this.c + 1, 1 + this.d, this.e, this.f, this.g, this.h, this.i);
        return ilVar;
    }

    /* access modifiers changed from: package-private */
    public final il a(long j) {
        il ilVar = new il(this.f3213a, this.f3214b, this.c, this.d, j, this.f, this.g, this.h, this.i);
        return ilVar;
    }

    /* access modifiers changed from: package-private */
    public final il a(Long l, Long l2, Boolean bool) {
        il ilVar = new il(this.f3213a, this.f3214b, this.c, this.d, this.e, this.f, l, l2, (bool == null || bool.booleanValue()) ? bool : null);
        return ilVar;
    }

    /* access modifiers changed from: package-private */
    public final il b(long j) {
        il ilVar = new il(this.f3213a, this.f3214b, this.c, this.d, this.e, j, this.g, this.h, this.i);
        return ilVar;
    }
}
