package com.google.zxing.pdf417.a;

final class d {

    /* renamed from: a  reason: collision with root package name */
    final int f4371a;

    /* renamed from: b  reason: collision with root package name */
    final int f4372b;
    final int c;
    final int d;
    int e = -1;

    d(int i, int i2, int i3, int i4) {
        this.f4371a = i;
        this.f4372b = i2;
        this.c = i3;
        this.d = i4;
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        return a(this.e);
    }

    /* access modifiers changed from: package-private */
    public final boolean a(int i) {
        return i != -1 && this.c == (i % 3) * 3;
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        this.e = ((this.d / 30) * 3) + (this.c / 3);
    }

    /* access modifiers changed from: package-private */
    public final int c() {
        return this.f4372b - this.f4371a;
    }

    public final String toString() {
        return this.e + "|" + this.d;
    }
}
