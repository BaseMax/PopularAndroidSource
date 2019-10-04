package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzfh;
import java.util.Arrays;

public final class Wa extends Ua {

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f10256f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f10257g;

    /* renamed from: h  reason: collision with root package name */
    public int f10258h;

    /* renamed from: i  reason: collision with root package name */
    public int f10259i;

    /* renamed from: j  reason: collision with root package name */
    public int f10260j;

    /* renamed from: k  reason: collision with root package name */
    public int f10261k;

    /* renamed from: l  reason: collision with root package name */
    public int f10262l;
    public int m;

    public Wa(byte[] bArr, int i2, int i3, boolean z) {
        super();
        this.m = Integer.MAX_VALUE;
        this.f10256f = bArr;
        this.f10258h = i3 + i2;
        this.f10260j = i2;
        this.f10261k = this.f10260j;
        this.f10257g = z;
    }

    public final byte A() {
        int i2 = this.f10260j;
        if (i2 != this.f10258h) {
            byte[] bArr = this.f10256f;
            this.f10260j = i2 + 1;
            return bArr[i2];
        }
        throw zzfh.a();
    }

    public final double a() {
        return Double.longBitsToDouble(y());
    }

    public final void b(int i2) {
        if (this.f10262l != i2) {
            throw zzfh.e();
        }
    }

    public final boolean c(int i2) {
        int d2;
        int i3 = i2 & 7;
        int i4 = 0;
        if (i3 == 0) {
            if (this.f10258h - this.f10260j >= 10) {
                while (i4 < 10) {
                    byte[] bArr = this.f10256f;
                    int i5 = this.f10260j;
                    this.f10260j = i5 + 1;
                    if (bArr[i5] < 0) {
                        i4++;
                    }
                }
                throw zzfh.c();
            }
            while (i4 < 10) {
                if (A() < 0) {
                    i4++;
                }
            }
            throw zzfh.c();
            return true;
        } else if (i3 == 1) {
            g(8);
            return true;
        } else if (i3 == 2) {
            g(v());
            return true;
        } else if (i3 == 3) {
            do {
                d2 = d();
                if (d2 == 0) {
                    break;
                }
            } while (c(d2));
            b(((i2 >>> 3) << 3) | 4);
            return true;
        } else if (i3 == 4) {
            return false;
        } else {
            if (i3 == 5) {
                g(4);
                return true;
            }
            throw zzfh.f();
        }
    }

    public final int d() {
        if (s()) {
            this.f10262l = 0;
            return 0;
        }
        this.f10262l = v();
        int i2 = this.f10262l;
        if ((i2 >>> 3) != 0) {
            return i2;
        }
        throw zzfh.d();
    }

    public final long e() {
        return w();
    }

    public final long f() {
        return w();
    }

    public final int g() {
        return v();
    }

    public final long h() {
        return y();
    }

    public final int i() {
        return x();
    }

    public final boolean j() {
        return w() != 0;
    }

    public final String k() {
        int v = v();
        if (v > 0) {
            int i2 = this.f10258h;
            int i3 = this.f10260j;
            if (v <= i2 - i3) {
                String c2 = Hc.c(this.f10256f, i3, v);
                this.f10260j += v;
                return c2;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v <= 0) {
            throw zzfh.b();
        }
        throw zzfh.a();
    }

    public final zzdp l() {
        byte[] bArr;
        int v = v();
        if (v > 0) {
            int i2 = this.f10258h;
            int i3 = this.f10260j;
            if (v <= i2 - i3) {
                zzdp a2 = zzdp.a(this.f10256f, i3, v);
                this.f10260j += v;
                return a2;
            }
        }
        if (v == 0) {
            return zzdp.f13171a;
        }
        if (v > 0) {
            int i4 = this.f10258h;
            int i5 = this.f10260j;
            if (v <= i4 - i5) {
                this.f10260j = v + i5;
                bArr = Arrays.copyOfRange(this.f10256f, i5, this.f10260j);
                return zzdp.a(bArr);
            }
        }
        if (v > 0) {
            throw zzfh.a();
        } else if (v == 0) {
            bArr = C0864qb.f10510c;
            return zzdp.a(bArr);
        } else {
            throw zzfh.b();
        }
    }

    public final int m() {
        return v();
    }

    public final int n() {
        return v();
    }

    public final int o() {
        return x();
    }

    public final long p() {
        return y();
    }

    public final int q() {
        return Ua.a(v());
    }

    public final long r() {
        return Ua.a(w());
    }

    public final boolean s() {
        return this.f10260j == this.f10258h;
    }

    public final int t() {
        return this.f10260j - this.f10261k;
    }

    public final long u() {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            byte A = A();
            j2 |= ((long) (A & Byte.MAX_VALUE)) << i2;
            if ((A & 128) == 0) {
                return j2;
            }
        }
        throw zzfh.c();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0066, code lost:
        if (r2[r3] >= 0) goto L_0x0068;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int v() {
        /*
            r5 = this;
            int r0 = r5.f10260j
            int r1 = r5.f10258h
            if (r1 == r0) goto L_0x006b
            byte[] r2 = r5.f10256f
            int r3 = r0 + 1
            byte r0 = r2[r0]
            if (r0 < 0) goto L_0x0011
            r5.f10260j = r3
            return r0
        L_0x0011:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L_0x006b
            int r1 = r3 + 1
            byte r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L_0x0022
            r0 = r0 ^ -128(0xffffffffffffff80, float:NaN)
            goto L_0x0068
        L_0x0022:
            int r3 = r1 + 1
            byte r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L_0x002f
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L_0x002d:
            r1 = r3
            goto L_0x0068
        L_0x002f:
            int r1 = r3 + 1
            byte r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L_0x003d
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L_0x0068
        L_0x003d:
            int r3 = r1 + 1
            byte r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L_0x002d
            int r1 = r3 + 1
            byte r3 = r2[r3]
            if (r3 >= 0) goto L_0x0068
            int r3 = r1 + 1
            byte r1 = r2[r1]
            if (r1 >= 0) goto L_0x002d
            int r1 = r3 + 1
            byte r3 = r2[r3]
            if (r3 >= 0) goto L_0x0068
            int r3 = r1 + 1
            byte r1 = r2[r1]
            if (r1 >= 0) goto L_0x002d
            int r1 = r3 + 1
            byte r2 = r2[r3]
            if (r2 < 0) goto L_0x006b
        L_0x0068:
            r5.f10260j = r1
            return r0
        L_0x006b:
            long r0 = r5.u()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wa.v():int");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00b0, code lost:
        if (((long) r2[r0]) >= 0) goto L_0x00b2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long w() {
        /*
            r11 = this;
            int r0 = r11.f10260j
            int r1 = r11.f10258h
            if (r1 == r0) goto L_0x00b5
            byte[] r2 = r11.f10256f
            int r3 = r0 + 1
            byte r0 = r2[r0]
            if (r0 < 0) goto L_0x0012
            r11.f10260j = r3
            long r0 = (long) r0
            return r0
        L_0x0012:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L_0x00b5
            int r1 = r3 + 1
            byte r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L_0x0026
            r0 = r0 ^ -128(0xffffffffffffff80, float:NaN)
        L_0x0022:
            long r2 = (long) r0
            r3 = r2
            goto L_0x00b2
        L_0x0026:
            int r3 = r1 + 1
            byte r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L_0x0037
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            long r0 = (long) r0
            r9 = r0
            r1 = r3
            r3 = r9
            goto L_0x00b2
        L_0x0037:
            int r1 = r3 + 1
            byte r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L_0x0045
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L_0x0022
        L_0x0045:
            long r3 = (long) r0
            int r0 = r1 + 1
            byte r1 = r2[r1]
            long r5 = (long) r1
            r1 = 28
            long r5 = r5 << r1
            long r3 = r3 ^ r5
            r5 = 0
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L_0x005c
            r1 = 266354560(0xfe03f80, double:1.315966377E-315)
        L_0x0058:
            long r1 = r1 ^ r3
            r3 = r1
        L_0x005a:
            r1 = r0
            goto L_0x00b2
        L_0x005c:
            int r1 = r0 + 1
            byte r0 = r2[r0]
            long r7 = (long) r0
            r0 = 35
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L_0x0070
            r5 = -34093383808(0xfffffff80fe03f80, double:NaN)
        L_0x006e:
            long r3 = r3 ^ r5
            goto L_0x00b2
        L_0x0070:
            int r0 = r1 + 1
            byte r1 = r2[r1]
            long r7 = (long) r1
            r1 = 42
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L_0x0083
            r1 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
            goto L_0x0058
        L_0x0083:
            int r1 = r0 + 1
            byte r0 = r2[r0]
            long r7 = (long) r0
            r0 = 49
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L_0x0096
            r5 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
            goto L_0x006e
        L_0x0096:
            int r0 = r1 + 1
            byte r1 = r2[r1]
            long r7 = (long) r1
            r1 = 56
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            r7 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 >= 0) goto L_0x005a
            int r1 = r0 + 1
            byte r0 = r2[r0]
            long r7 = (long) r0
            int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r0 < 0) goto L_0x00b5
        L_0x00b2:
            r11.f10260j = r1
            return r3
        L_0x00b5:
            long r0 = r11.u()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Wa.w():long");
    }

    public final int x() {
        int i2 = this.f10260j;
        if (this.f10258h - i2 >= 4) {
            byte[] bArr = this.f10256f;
            this.f10260j = i2 + 4;
            return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        }
        throw zzfh.a();
    }

    public final long y() {
        int i2 = this.f10260j;
        if (this.f10258h - i2 >= 8) {
            byte[] bArr = this.f10256f;
            this.f10260j = i2 + 8;
            return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
        }
        throw zzfh.a();
    }

    public final void z() {
        this.f10258h += this.f10259i;
        int i2 = this.f10258h;
        int i3 = i2 - this.f10261k;
        int i4 = this.m;
        if (i3 > i4) {
            this.f10259i = i3 - i4;
            this.f10258h = i2 - this.f10259i;
            return;
        }
        this.f10259i = 0;
    }

    public final <T extends Sb> T a(C0805bc<T> bcVar, C0808cb cbVar) {
        int v = v();
        if (this.f10239a < this.f10240b) {
            int e2 = e(v);
            this.f10239a++;
            T t = (Sb) bcVar.a(this, cbVar);
            b(0);
            this.f10239a--;
            f(e2);
            return t;
        }
        throw zzfh.g();
    }

    public final int e(int i2) {
        if (i2 >= 0) {
            int t = i2 + t();
            int i3 = this.m;
            if (t <= i3) {
                this.m = t;
                z();
                return i3;
            }
            throw zzfh.a();
        }
        throw zzfh.b();
    }

    public final void f(int i2) {
        this.m = i2;
        z();
    }

    public final void g(int i2) {
        if (i2 >= 0) {
            int i3 = this.f10258h;
            int i4 = this.f10260j;
            if (i2 <= i3 - i4) {
                this.f10260j = i4 + i2;
                return;
            }
        }
        if (i2 < 0) {
            throw zzfh.b();
        }
        throw zzfh.a();
    }

    public final float b() {
        return Float.intBitsToFloat(x());
    }

    public final String c() {
        int v = v();
        if (v > 0) {
            int i2 = this.f10258h;
            int i3 = this.f10260j;
            if (v <= i2 - i3) {
                String str = new String(this.f10256f, i3, v, C0864qb.f10508a);
                this.f10260j += v;
                return str;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v < 0) {
            throw zzfh.b();
        }
        throw zzfh.a();
    }
}
