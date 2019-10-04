package com.google.zxing.c.a.a.a;

import com.google.zxing.d;

final class p extends q {

    /* renamed from: a  reason: collision with root package name */
    final int f4259a;

    /* renamed from: b  reason: collision with root package name */
    final int f4260b;

    p(int i, int i2, int i3) throws d {
        super(i);
        if (i2 < 0 || i2 > 10 || i3 < 0 || i3 > 10) {
            throw d.getFormatInstance();
        }
        this.f4259a = i2;
        this.f4260b = i3;
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        return this.f4259a == 10;
    }

    /* access modifiers changed from: package-private */
    public final boolean b() {
        return this.f4260b == 10;
    }
}
