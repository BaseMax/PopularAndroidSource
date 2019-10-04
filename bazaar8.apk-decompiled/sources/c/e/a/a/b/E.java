package c.e.a.a.b;

import c.e.a.a.o.C0737e;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* compiled from: Sonic */
public final class E {

    /* renamed from: a  reason: collision with root package name */
    public final int f7386a;

    /* renamed from: b  reason: collision with root package name */
    public final int f7387b;

    /* renamed from: c  reason: collision with root package name */
    public final float f7388c;

    /* renamed from: d  reason: collision with root package name */
    public final float f7389d;

    /* renamed from: e  reason: collision with root package name */
    public final float f7390e;

    /* renamed from: f  reason: collision with root package name */
    public final int f7391f;

    /* renamed from: g  reason: collision with root package name */
    public final int f7392g;

    /* renamed from: h  reason: collision with root package name */
    public final int f7393h = (this.f7392g * 2);

    /* renamed from: i  reason: collision with root package name */
    public final short[] f7394i;

    /* renamed from: j  reason: collision with root package name */
    public short[] f7395j;

    /* renamed from: k  reason: collision with root package name */
    public int f7396k;

    /* renamed from: l  reason: collision with root package name */
    public short[] f7397l;
    public int m;
    public short[] n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;

    public E(int i2, int i3, float f2, float f3, int i4) {
        this.f7386a = i2;
        this.f7387b = i3;
        this.f7388c = f2;
        this.f7389d = f3;
        this.f7390e = ((float) i2) / ((float) i4);
        this.f7391f = i2 / 400;
        this.f7392g = i2 / 65;
        int i5 = this.f7393h;
        this.f7394i = new short[i5];
        this.f7395j = new short[(i5 * i3)];
        this.f7397l = new short[(i5 * i3)];
        this.n = new short[(i5 * i3)];
    }

    public void a(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f7387b, this.m);
        shortBuffer.put(this.f7397l, 0, this.f7387b * min);
        this.m -= min;
        short[] sArr = this.f7397l;
        int i2 = this.f7387b;
        System.arraycopy(sArr, min * i2, sArr, 0, this.m * i2);
    }

    public void b(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i2 = this.f7387b;
        int i3 = remaining / i2;
        this.f7395j = c(this.f7395j, this.f7396k, i3);
        shortBuffer.get(this.f7395j, this.f7396k * this.f7387b, ((i2 * i3) * 2) / 2);
        this.f7396k += i3;
        c();
    }

    public final short[] c(short[] sArr, int i2, int i3) {
        int length = sArr.length;
        int i4 = this.f7387b;
        int i5 = length / i4;
        if (i2 + i3 <= i5) {
            return sArr;
        }
        return Arrays.copyOf(sArr, (((i5 * 3) / 2) + i3) * i4);
    }

    public void d() {
        int i2;
        int i3 = this.f7396k;
        float f2 = this.f7388c;
        float f3 = this.f7389d;
        int i4 = this.m + ((int) ((((((float) i3) / (f2 / f3)) + ((float) this.o)) / (this.f7390e * f3)) + 0.5f));
        this.f7395j = c(this.f7395j, i3, (this.f7393h * 2) + i3);
        int i5 = 0;
        while (true) {
            i2 = this.f7393h;
            int i6 = this.f7387b;
            if (i5 >= i2 * 2 * i6) {
                break;
            }
            this.f7395j[(i6 * i3) + i5] = 0;
            i5++;
        }
        this.f7396k += i2 * 2;
        c();
        if (this.m > i4) {
            this.m = i4;
        }
        this.f7396k = 0;
        this.r = 0;
        this.o = 0;
    }

    public final void c(int i2) {
        if (i2 != 0) {
            short[] sArr = this.n;
            int i3 = this.f7387b;
            System.arraycopy(sArr, i2 * i3, sArr, 0, (this.o - i2) * i3);
            this.o -= i2;
        }
    }

    public void a() {
        this.f7396k = 0;
        this.m = 0;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = 0;
    }

    public int b() {
        return this.m;
    }

    public final void c() {
        int i2 = this.m;
        float f2 = this.f7388c;
        float f3 = this.f7389d;
        float f4 = f2 / f3;
        float f5 = this.f7390e * f3;
        double d2 = (double) f4;
        if (d2 > 1.00001d || d2 < 0.99999d) {
            a(f4);
        } else {
            a(this.f7395j, 0, this.f7396k);
            this.f7396k = 0;
        }
        if (f5 != 1.0f) {
            a(f5, i2);
        }
    }

    public final void b(short[] sArr, int i2, int i3) {
        int i4 = this.f7393h / i3;
        int i5 = this.f7387b;
        int i6 = i3 * i5;
        int i7 = i2 * i5;
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = 0;
            for (int i10 = 0; i10 < i6; i10++) {
                i9 += sArr[(i8 * i6) + i7 + i10];
            }
            this.f7394i[i8] = (short) (i9 / i6);
        }
    }

    public final void b(int i2) {
        int i3 = this.m - i2;
        this.n = c(this.n, this.o, i3);
        short[] sArr = this.f7397l;
        int i4 = this.f7387b;
        System.arraycopy(sArr, i2 * i4, this.n, this.o * i4, i4 * i3);
        this.m = i2;
        this.o += i3;
    }

    public final void a(short[] sArr, int i2, int i3) {
        this.f7397l = c(this.f7397l, this.m, i3);
        int i4 = this.f7387b;
        System.arraycopy(sArr, i2 * i4, this.f7397l, this.m * i4, i4 * i3);
        this.m += i3;
    }

    public final void d(int i2) {
        int i3 = this.f7396k - i2;
        short[] sArr = this.f7395j;
        int i4 = this.f7387b;
        System.arraycopy(sArr, i2 * i4, sArr, 0, i4 * i3);
        this.f7396k = i3;
    }

    public final short b(short[] sArr, int i2, int i3, int i4) {
        short s2 = sArr[i2];
        short s3 = sArr[i2 + this.f7387b];
        int i5 = this.q * i3;
        int i6 = this.p;
        int i7 = i6 * i4;
        int i8 = (i6 + 1) * i4;
        int i9 = i8 - i5;
        int i10 = i8 - i7;
        return (short) (((s2 * i9) + ((i10 - i9) * s3)) / i10);
    }

    public final int a(int i2) {
        int min = Math.min(this.f7393h, this.r);
        a(this.f7395j, i2, min);
        this.r -= min;
        return min;
    }

    public final int a(short[] sArr, int i2, int i3, int i4) {
        int i5 = i2 * this.f7387b;
        int i6 = 1;
        int i7 = 0;
        int i8 = 0;
        int i9 = 255;
        while (i3 <= i4) {
            int i10 = 0;
            for (int i11 = 0; i11 < i3; i11++) {
                i10 += Math.abs(sArr[i5 + i11] - sArr[(i5 + i3) + i11]);
            }
            if (i10 * i7 < i6 * i3) {
                i7 = i3;
                i6 = i10;
            }
            if (i10 * i9 > i8 * i3) {
                i9 = i3;
                i8 = i10;
            }
            i3++;
        }
        this.u = i6 / i7;
        this.v = i8 / i9;
        return i7;
    }

    public final int b(short[] sArr, int i2, float f2, int i3) {
        int i4;
        if (f2 >= 2.0f) {
            i4 = (int) (((float) i3) / (f2 - 1.0f));
        } else {
            this.r = (int) ((((float) i3) * (2.0f - f2)) / (f2 - 1.0f));
            i4 = i3;
        }
        this.f7397l = c(this.f7397l, this.m, i4);
        a(i4, this.f7387b, this.f7397l, this.m, sArr, i2, sArr, i2 + i3);
        this.m += i4;
        return i4;
    }

    public final boolean a(int i2, int i3) {
        if (i2 == 0 || this.s == 0 || i3 > i2 * 3 || i2 * 2 <= this.t * 3) {
            return false;
        }
        return true;
    }

    public final int a(short[] sArr, int i2) {
        int i3;
        int i4 = this.f7386a;
        int i5 = i4 > 4000 ? i4 / 4000 : 1;
        if (this.f7387b == 1 && i5 == 1) {
            i3 = a(sArr, i2, this.f7391f, this.f7392g);
        } else {
            b(sArr, i2, i5);
            int a2 = a(this.f7394i, 0, this.f7391f / i5, this.f7392g / i5);
            if (i5 != 1) {
                int i6 = a2 * i5;
                int i7 = i5 * 4;
                int i8 = i6 - i7;
                int i9 = i6 + i7;
                int i10 = this.f7391f;
                if (i8 >= i10) {
                    i10 = i8;
                }
                int i11 = this.f7392g;
                if (i9 > i11) {
                    i9 = i11;
                }
                if (this.f7387b == 1) {
                    i3 = a(sArr, i2, i10, i9);
                } else {
                    b(sArr, i2, 1);
                    i3 = a(this.f7394i, 0, i10, i9);
                }
            } else {
                i3 = a2;
            }
        }
        int i12 = a(this.u, this.v) ? this.s : i3;
        this.t = this.u;
        this.s = i3;
        return i12;
    }

    public final void a(float f2, int i2) {
        int i3;
        int i4;
        if (this.m != i2) {
            int i5 = this.f7386a;
            int i6 = (int) (((float) i5) / f2);
            while (true) {
                if (i6 <= 16384 && i5 <= 16384) {
                    break;
                }
                i6 /= 2;
                i5 /= 2;
            }
            b(i2);
            int i7 = 0;
            while (true) {
                boolean z = true;
                if (i7 < this.o - 1) {
                    while (true) {
                        i3 = this.p;
                        int i8 = (i3 + 1) * i6;
                        i4 = this.q;
                        if (i8 <= i4 * i5) {
                            break;
                        }
                        this.f7397l = c(this.f7397l, this.m, 1);
                        int i9 = 0;
                        while (true) {
                            int i10 = this.f7387b;
                            if (i9 >= i10) {
                                break;
                            }
                            this.f7397l[(this.m * i10) + i9] = b(this.n, (i10 * i7) + i9, i5, i6);
                            i9++;
                        }
                        this.q++;
                        this.m++;
                    }
                    this.p = i3 + 1;
                    if (this.p == i5) {
                        this.p = 0;
                        if (i4 != i6) {
                            z = false;
                        }
                        C0737e.b(z);
                        this.q = 0;
                    }
                    i7++;
                } else {
                    c(this.o - 1);
                    return;
                }
            }
        }
    }

    public final int a(short[] sArr, int i2, float f2, int i3) {
        int i4;
        if (f2 < 0.5f) {
            i4 = (int) ((((float) i3) * f2) / (1.0f - f2));
        } else {
            this.r = (int) ((((float) i3) * ((2.0f * f2) - 1.0f)) / (1.0f - f2));
            i4 = i3;
        }
        int i5 = i3 + i4;
        this.f7397l = c(this.f7397l, this.m, i5);
        int i6 = this.f7387b;
        System.arraycopy(sArr, i2 * i6, this.f7397l, this.m * i6, i6 * i3);
        a(i4, this.f7387b, this.f7397l, this.m + i3, sArr, i2 + i3, sArr, i2);
        this.m += i5;
        return i4;
    }

    public final void a(float f2) {
        int a2;
        int i2 = this.f7396k;
        if (i2 >= this.f7393h) {
            int i3 = 0;
            do {
                if (this.r > 0) {
                    a2 = a(i3);
                } else {
                    int a3 = a(this.f7395j, i3);
                    if (((double) f2) > 1.0d) {
                        a2 = a3 + b(this.f7395j, i3, f2, a3);
                    } else {
                        a2 = a(this.f7395j, i3, f2, a3);
                    }
                }
                i3 += a2;
            } while (this.f7393h + i3 <= i2);
            d(i3);
        }
    }

    public static void a(int i2, int i3, short[] sArr, int i4, short[] sArr2, int i5, short[] sArr3, int i6) {
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = (i5 * i3) + i7;
            int i9 = (i6 * i3) + i7;
            int i10 = (i4 * i3) + i7;
            for (int i11 = 0; i11 < i2; i11++) {
                sArr[i10] = (short) (((sArr2[i8] * (i2 - i11)) + (sArr3[i9] * i11)) / i2);
                i10 += i3;
                i8 += i3;
                i9 += i3;
            }
        }
    }
}
