package com.yandex.metrica.impl.ob;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f5878a;

    /* renamed from: b  reason: collision with root package name */
    private final int f5879b;
    private int c;

    public static class a extends IOException {
        private static final long serialVersionUID = -6947486886997889499L;

        a(int i, int i2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + i + " limit " + i2 + ").");
        }
    }

    public static int d(long j) {
        if ((-128 & j) == 0) {
            return 1;
        }
        if ((-16384 & j) == 0) {
            return 2;
        }
        if ((-2097152 & j) == 0) {
            return 3;
        }
        if ((-268435456 & j) == 0) {
            return 4;
        }
        if ((-34359738368L & j) == 0) {
            return 5;
        }
        if ((-4398046511104L & j) == 0) {
            return 6;
        }
        if ((-562949953421312L & j) == 0) {
            return 7;
        }
        if ((-72057594037927936L & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int k(int i) {
        if ((i & -128) == 0) {
            return 1;
        }
        if ((i & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & i) == 0) {
            return 3;
        }
        return (i & -268435456) == 0 ? 4 : 5;
    }

    public static int m(int i) {
        return (i >> 31) ^ (i << 1);
    }

    private b(byte[] bArr, int i, int i2) {
        this.f5878a = bArr;
        this.c = i;
        this.f5879b = i + i2;
    }

    public static b a(byte[] bArr, int i, int i2) {
        return new b(bArr, i, i2);
    }

    public final void a(int i, double d) throws IOException {
        g(i, 1);
        a(d);
    }

    public final void a(int i, float f) throws IOException {
        g(i, 5);
        a(f);
    }

    public final void a(int i, long j) throws IOException {
        g(i, 0);
        a(j);
    }

    public final void b(int i, long j) throws IOException {
        g(i, 0);
        b(j);
    }

    public final void a(int i, int i2) throws IOException {
        g(i, 0);
        a(i2);
    }

    public final void a(int i, boolean z) throws IOException {
        g(i, 0);
        a(z);
    }

    public final void a(int i, String str) throws IOException {
        g(i, 2);
        a(str);
    }

    public final void a(int i, e eVar) throws IOException {
        g(i, 2);
        a(eVar);
    }

    public final void a(int i, byte[] bArr) throws IOException {
        g(i, 2);
        a(bArr);
    }

    public final void b(int i, int i2) throws IOException {
        g(i, 0);
        b(i2);
    }

    public final void c(int i, int i2) throws IOException {
        g(i, 0);
        c(i2);
    }

    public final void a(double d) throws IOException {
        e(Double.doubleToLongBits(d));
    }

    public final void a(float f) throws IOException {
        l(Float.floatToIntBits(f));
    }

    public final void a(long j) throws IOException {
        c(j);
    }

    public final void b(long j) throws IOException {
        c(j);
    }

    public final void a(int i) throws IOException {
        if (i >= 0) {
            j(i);
        } else {
            c((long) i);
        }
    }

    public final void a(boolean z) throws IOException {
        h(z ? 1 : 0);
    }

    public final void a(String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        j(bytes.length);
        b(bytes);
    }

    public final void a(e eVar) throws IOException {
        j(eVar.a());
        eVar.a(this);
    }

    public final void a(byte[] bArr) throws IOException {
        j(bArr.length);
        b(bArr);
    }

    public final void b(int i) throws IOException {
        j(i);
    }

    public final void c(int i) throws IOException {
        j(m(i));
    }

    public static int d(int i) {
        return i(i) + 8;
    }

    public static int e(int i) {
        return i(i) + 4;
    }

    public static int c(int i, long j) {
        return i(i) + d(j);
    }

    public static int d(int i, long j) {
        return i(i) + d(j);
    }

    public static int d(int i, int i2) {
        return i(i) + g(i2);
    }

    public static int f(int i) {
        return i(i) + 1;
    }

    public static int b(int i, String str) {
        return i(i) + b(str);
    }

    public static int b(int i, e eVar) {
        return i(i) + b(eVar);
    }

    public static int b(int i, byte[] bArr) {
        return i(i) + k(bArr.length) + bArr.length;
    }

    public static int e(int i, int i2) {
        return i(i) + k(i2);
    }

    public static int f(int i, int i2) {
        return i(i) + k(m(i2));
    }

    public static int g(int i) {
        if (i >= 0) {
            return k(i);
        }
        return 10;
    }

    public static int b(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            return k(bytes.length) + bytes.length;
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("UTF-8 not supported.");
        }
    }

    public static int b(e eVar) {
        int b2 = eVar.b();
        return k(b2) + b2;
    }

    public final int a() {
        return this.f5879b - this.c;
    }

    public final void b() {
        if (a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void a(byte b2) throws IOException {
        int i = this.c;
        int i2 = this.f5879b;
        if (i != i2) {
            byte[] bArr = this.f5878a;
            this.c = i + 1;
            bArr[i] = b2;
            return;
        }
        throw new a(i, i2);
    }

    public final void h(int i) throws IOException {
        a((byte) i);
    }

    public final void b(byte[] bArr) throws IOException {
        b(bArr, 0, bArr.length);
    }

    public final void b(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f5879b;
        int i4 = this.c;
        if (i3 - i4 >= i2) {
            System.arraycopy(bArr, i, this.f5878a, i4, i2);
            this.c += i2;
            return;
        }
        throw new a(i4, i3);
    }

    public final void g(int i, int i2) throws IOException {
        j(g.a(i, i2));
    }

    public static int i(int i) {
        return k(g.a(i, 0));
    }

    public final void j(int i) throws IOException {
        while ((i & -128) != 0) {
            h((i & 127) | 128);
            i >>>= 7;
        }
        h(i);
    }

    public final void c(long j) throws IOException {
        while ((-128 & j) != 0) {
            h((((int) j) & 127) | 128);
            j >>>= 7;
        }
        h((int) j);
    }

    public final void l(int i) throws IOException {
        h(i & 255);
        h((i >> 8) & 255);
        h((i >> 16) & 255);
        h(i >>> 24);
    }

    public final void e(long j) throws IOException {
        h(((int) j) & 255);
        h(((int) (j >> 8)) & 255);
        h(((int) (j >> 16)) & 255);
        h(((int) (j >> 24)) & 255);
        h(((int) (j >> 32)) & 255);
        h(((int) (j >> 40)) & 255);
        h(((int) (j >> 48)) & 255);
        h(((int) (j >> 56)) & 255);
    }
}
