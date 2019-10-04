package com.google.zxing.pdf417.a.a;

import com.google.zxing.pdf417.a;

public final class b {
    public static final b PDF417_GF = new b();

    /* renamed from: a  reason: collision with root package name */
    final int[] f4364a = new int[a.NUMBER_OF_CODEWORDS];

    /* renamed from: b  reason: collision with root package name */
    final int[] f4365b = new int[a.NUMBER_OF_CODEWORDS];
    final c c;
    final c d;
    final int e = a.NUMBER_OF_CODEWORDS;

    private b() {
        int i = 1;
        for (int i2 = 0; i2 < 929; i2++) {
            this.f4364a[i2] = i;
            i = (i * 3) % a.NUMBER_OF_CODEWORDS;
        }
        for (int i3 = 0; i3 < 928; i3++) {
            this.f4365b[this.f4364a[i3]] = i3;
        }
        this.c = new c(this, new int[]{0});
        this.d = new c(this, new int[]{1});
    }

    /* access modifiers changed from: package-private */
    public final c a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        } else if (i2 == 0) {
            return this.c;
        } else {
            int[] iArr = new int[(i + 1)];
            iArr[0] = i2;
            return new c(this, iArr);
        }
    }

    /* access modifiers changed from: package-private */
    public final int b(int i, int i2) {
        return (i + i2) % this.e;
    }

    /* access modifiers changed from: package-private */
    public final int c(int i, int i2) {
        int i3 = this.e;
        return ((i + i3) - i2) % i3;
    }

    /* access modifiers changed from: package-private */
    public final int a(int i) {
        if (i != 0) {
            return this.f4364a[(this.e - this.f4365b[i]) - 1];
        }
        throw new ArithmeticException();
    }

    /* access modifiers changed from: package-private */
    public final int d(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f4364a;
        int[] iArr2 = this.f4365b;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.e - 1)];
    }
}
