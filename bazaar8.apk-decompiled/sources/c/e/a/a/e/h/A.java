package c.e.a.a.e.h;

import c.e.a.a.e.h;
import c.e.a.a.e.n;
import c.e.a.a.o.F;
import c.e.a.a.o.I;
import c.e.a.a.o.v;

/* compiled from: PsDurationReader */
public final class A {

    /* renamed from: a  reason: collision with root package name */
    public final F f7994a = new F(0);

    /* renamed from: b  reason: collision with root package name */
    public final v f7995b = new v();

    /* renamed from: c  reason: collision with root package name */
    public boolean f7996c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7997d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7998e;

    /* renamed from: f  reason: collision with root package name */
    public long f7999f = -9223372036854775807L;

    /* renamed from: g  reason: collision with root package name */
    public long f8000g = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    public long f8001h = -9223372036854775807L;

    public int a(h hVar, n nVar) {
        if (!this.f7998e) {
            return c(hVar, nVar);
        }
        if (this.f8000g == -9223372036854775807L) {
            return a(hVar);
        }
        if (!this.f7997d) {
            return b(hVar, nVar);
        }
        long j2 = this.f7999f;
        if (j2 == -9223372036854775807L) {
            return a(hVar);
        }
        this.f8001h = this.f7994a.b(this.f8000g) - this.f7994a.b(j2);
        return a(hVar);
    }

    public F b() {
        return this.f7994a;
    }

    public boolean c() {
        return this.f7996c;
    }

    public static long c(v vVar) {
        int c2 = vVar.c();
        if (vVar.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        vVar.a(bArr, 0, bArr.length);
        vVar.e(c2);
        if (!a(bArr)) {
            return -9223372036854775807L;
        }
        return b(bArr);
    }

    public final int b(h hVar, n nVar) {
        int min = (int) Math.min(20000, hVar.getLength());
        long j2 = (long) 0;
        if (hVar.getPosition() != j2) {
            nVar.f8320a = j2;
            return 1;
        }
        this.f7995b.c(min);
        hVar.b();
        hVar.a(this.f7995b.f9634a, 0, min);
        this.f7999f = a(this.f7995b);
        this.f7997d = true;
        return 0;
    }

    public final int c(h hVar, n nVar) {
        long length = hVar.getLength();
        int min = (int) Math.min(20000, length);
        long j2 = length - ((long) min);
        if (hVar.getPosition() != j2) {
            nVar.f8320a = j2;
            return 1;
        }
        this.f7995b.c(min);
        hVar.b();
        hVar.a(this.f7995b.f9634a, 0, min);
        this.f8000g = b(this.f7995b);
        this.f7998e = true;
        return 0;
    }

    public final long b(v vVar) {
        int c2 = vVar.c();
        for (int d2 = vVar.d() - 4; d2 >= c2; d2--) {
            if (a(vVar.f9634a, d2) == 442) {
                vVar.e(d2 + 4);
                long c3 = c(vVar);
                if (c3 != -9223372036854775807L) {
                    return c3;
                }
            }
        }
        return -9223372036854775807L;
    }

    public long a() {
        return this.f8001h;
    }

    public final int a(h hVar) {
        this.f7995b.a(I.f9570f);
        this.f7996c = true;
        hVar.b();
        return 0;
    }

    public static long b(byte[] bArr) {
        return (((((long) bArr[0]) & 56) >> 3) << 30) | ((((long) bArr[0]) & 3) << 28) | ((((long) bArr[1]) & 255) << 20) | (((((long) bArr[2]) & 248) >> 3) << 15) | ((((long) bArr[2]) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
    }

    public final long a(v vVar) {
        int d2 = vVar.d();
        for (int c2 = vVar.c(); c2 < d2 - 3; c2++) {
            if (a(vVar.f9634a, c2) == 442) {
                vVar.e(c2 + 4);
                long c3 = c(vVar);
                if (c3 != -9223372036854775807L) {
                    return c3;
                }
            }
        }
        return -9223372036854775807L;
    }

    public final int a(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    public static boolean a(byte[] bArr) {
        boolean z = false;
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4 || (bArr[4] & 4) != 4 || (bArr[5] & 1) != 1) {
            return false;
        }
        if ((bArr[8] & 3) == 3) {
            z = true;
        }
        return z;
    }
}
