package com.google.zxing.a.b;

import com.google.zxing.common.b;
import com.google.zxing.common.b.c;
import com.google.zxing.common.b.d;
import com.google.zxing.h;
import com.google.zxing.m;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f4233a = {3808, 476, 2107, 1799};

    /* renamed from: b  reason: collision with root package name */
    private final b f4234b;
    private boolean c;
    private int d;
    private int e;
    private int f;
    private int g;

    /* renamed from: com.google.zxing.a.b.a$a  reason: collision with other inner class name */
    static final class C0081a {

        /* renamed from: a  reason: collision with root package name */
        final int f4235a;

        /* renamed from: b  reason: collision with root package name */
        final int f4236b;

        /* access modifiers changed from: package-private */
        public final m a() {
            return new m((float) this.f4235a, (float) this.f4236b);
        }

        C0081a(int i, int i2) {
            this.f4235a = i;
            this.f4236b = i2;
        }

        public final String toString() {
            return "<" + this.f4235a + ' ' + this.f4236b + '>';
        }
    }

    public a(b bVar) {
        this.f4234b = bVar;
    }

    public final com.google.zxing.a.a detect() throws h {
        return detect(false);
    }

    public final com.google.zxing.a.a detect(boolean z) throws h {
        long j;
        long j2;
        C0081a aVar;
        C0081a a2 = a();
        int i = 1;
        this.f = 1;
        C0081a aVar2 = a2;
        C0081a aVar3 = aVar2;
        C0081a aVar4 = aVar3;
        boolean z2 = true;
        while (this.f < 9) {
            C0081a a3 = a(a2, z2, i, -1);
            C0081a a4 = a(aVar2, z2, i, i);
            C0081a a5 = a(aVar3, z2, -1, i);
            C0081a a6 = a(aVar4, z2, -1, -1);
            if (this.f > 2) {
                double b2 = (double) ((b(a6, a3) * ((float) this.f)) / (b(aVar4, a2) * ((float) (this.f + 2))));
                if (b2 < 0.75d || b2 > 1.25d) {
                    break;
                }
                C0081a aVar5 = new C0081a(a3.f4235a - 3, a3.f4236b + 3);
                C0081a aVar6 = new C0081a(a4.f4235a - 3, a4.f4236b - 3);
                C0081a aVar7 = new C0081a(a5.f4235a + 3, a5.f4236b - 3);
                aVar = a3;
                C0081a aVar8 = new C0081a(a6.f4235a + 3, a6.f4236b + 3);
                int a7 = a(aVar8, aVar5);
                if (!(a7 != 0 && a(aVar5, aVar6) == a7 && a(aVar6, aVar7) == a7 && a(aVar7, aVar8) == a7)) {
                    break;
                }
            } else {
                aVar = a3;
            }
            z2 = !z2;
            this.f++;
            aVar4 = a6;
            aVar2 = a4;
            aVar3 = a5;
            a2 = aVar;
            i = 1;
        }
        int i2 = this.f;
        if (i2 == 5 || i2 == 7) {
            this.c = this.f == 5;
            m[] mVarArr = {new m(((float) a2.f4235a) + 0.5f, ((float) a2.f4236b) - 0.5f), new m(((float) aVar2.f4235a) + 0.5f, ((float) aVar2.f4236b) + 0.5f), new m(((float) aVar3.f4235a) - 0.5f, ((float) aVar3.f4236b) + 0.5f), new m(((float) aVar4.f4235a) - 0.5f, ((float) aVar4.f4236b) - 0.5f)};
            int i3 = this.f;
            m[] a8 = a(mVarArr, (i3 * 2) - 3, i3 * 2);
            if (z) {
                m mVar = a8[0];
                a8[0] = a8[2];
                a8[2] = mVar;
            }
            if (!a(a8[0]) || !a(a8[1]) || !a(a8[2]) || !a(a8[3])) {
                throw h.getNotFoundInstance();
            }
            int i4 = this.f * 2;
            int[] iArr = {a(a8[0], a8[1], i4), a(a8[1], a8[2], i4), a(a8[2], a8[3], i4), a(a8[3], a8[0], i4)};
            int i5 = 0;
            for (int i6 = 0; i6 < 4; i6++) {
                int i7 = iArr[i6];
                i5 = (i5 << 3) + ((i7 >> (i4 - 2)) << 1) + (i7 & 1);
            }
            int i8 = ((i5 & 1) << 11) + (i5 >> 1);
            for (int i9 = 0; i9 < 4; i9++) {
                if (Integer.bitCount(f4233a[i9] ^ i8) <= 2) {
                    this.g = i9;
                    long j3 = 0;
                    for (int i10 = 0; i10 < 4; i10++) {
                        int i11 = iArr[(this.g + i10) % 4];
                        if (this.c) {
                            j2 = j3 << 7;
                            j = (long) ((i11 >> 1) & 127);
                        } else {
                            j2 = j3 << 10;
                            j = (long) (((i11 >> 2) & 992) + ((i11 >> 1) & 31));
                        }
                        j3 = j2 + j;
                    }
                    int a9 = a(j3, this.c);
                    if (this.c) {
                        this.d = (a9 >> 6) + 1;
                        this.e = (a9 & 63) + 1;
                    } else {
                        this.d = (a9 >> 11) + 1;
                        this.e = (a9 & 2047) + 1;
                    }
                    b bVar = this.f4234b;
                    int i12 = this.g;
                    m mVar2 = a8[i12 % 4];
                    m mVar3 = a8[(i12 + 1) % 4];
                    m mVar4 = a8[(i12 + 2) % 4];
                    m mVar5 = a8[(i12 + 3) % 4];
                    com.google.zxing.common.h instance = com.google.zxing.common.h.getInstance();
                    int b3 = b();
                    int i13 = b3;
                    int i14 = b3;
                    float f2 = ((float) b3) / 2.0f;
                    int i15 = this.f;
                    float f3 = f2 - ((float) i15);
                    float f4 = f2 + ((float) i15);
                    com.google.zxing.a.a aVar9 = new com.google.zxing.a.a(instance.sampleGrid(bVar, i14, i13, f3, f3, f4, f3, f4, f4, f3, f4, mVar2.getX(), mVar2.getY(), mVar3.getX(), mVar3.getY(), mVar4.getX(), mVar4.getY(), mVar5.getX(), mVar5.getY()), a(a8, this.f * 2, b()), this.c, this.e, this.d);
                    return aVar9;
                }
            }
            throw h.getNotFoundInstance();
        }
        throw h.getNotFoundInstance();
    }

    private static int a(long j, boolean z) throws h {
        int i;
        int i2;
        if (z) {
            i = 7;
            i2 = 2;
        } else {
            i = 10;
            i2 = 4;
        }
        int i3 = i - i2;
        int[] iArr = new int[i];
        for (int i4 = i - 1; i4 >= 0; i4--) {
            iArr[i4] = ((int) j) & 15;
            j >>= 4;
        }
        try {
            new c(com.google.zxing.common.b.a.AZTEC_PARAM).decode(iArr, i3);
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                i5 = (i5 << 4) + iArr[i6];
            }
            return i5;
        } catch (d unused) {
            throw h.getNotFoundInstance();
        }
    }

    private C0081a a() {
        m mVar;
        m mVar2;
        m mVar3;
        m mVar4;
        m mVar5;
        m mVar6;
        m mVar7;
        m mVar8;
        try {
            m[] detect = new com.google.zxing.common.a.b(this.f4234b).detect();
            mVar3 = detect[0];
            mVar2 = detect[1];
            mVar = detect[2];
            mVar4 = detect[3];
        } catch (h unused) {
            int width = this.f4234b.getWidth() / 2;
            int height = this.f4234b.getHeight() / 2;
            int i = width + 7;
            int i2 = height - 7;
            m a2 = a(new C0081a(i, i2), false, 1, -1).a();
            int i3 = height + 7;
            m a3 = a(new C0081a(i, i3), false, 1, 1).a();
            int i4 = width - 7;
            m a4 = a(new C0081a(i4, i3), false, -1, 1).a();
            mVar4 = a(new C0081a(i4, i2), false, -1, -1).a();
            m mVar9 = a3;
            mVar = a4;
            mVar3 = a2;
            mVar2 = mVar9;
        }
        int round = com.google.zxing.common.a.a.round((((mVar3.getX() + mVar4.getX()) + mVar2.getX()) + mVar.getX()) / 4.0f);
        int round2 = com.google.zxing.common.a.a.round((((mVar3.getY() + mVar4.getY()) + mVar2.getY()) + mVar.getY()) / 4.0f);
        try {
            m[] detect2 = new com.google.zxing.common.a.b(this.f4234b, 15, round, round2).detect();
            mVar6 = detect2[0];
            mVar5 = detect2[1];
            mVar7 = detect2[2];
            mVar8 = detect2[3];
        } catch (h unused2) {
            int i5 = round + 7;
            int i6 = round2 - 7;
            mVar6 = a(new C0081a(i5, i6), false, 1, -1).a();
            int i7 = round2 + 7;
            mVar5 = a(new C0081a(i5, i7), false, 1, 1).a();
            int i8 = round - 7;
            mVar7 = a(new C0081a(i8, i7), false, -1, 1).a();
            mVar8 = a(new C0081a(i8, i6), false, -1, -1).a();
        }
        return new C0081a(com.google.zxing.common.a.a.round((((mVar6.getX() + mVar8.getX()) + mVar5.getX()) + mVar7.getX()) / 4.0f), com.google.zxing.common.a.a.round((((mVar6.getY() + mVar8.getY()) + mVar5.getY()) + mVar7.getY()) / 4.0f));
    }

    private int a(m mVar, m mVar2, int i) {
        float a2 = a(mVar, mVar2);
        float f2 = a2 / ((float) i);
        float x = mVar.getX();
        float y = mVar.getY();
        float x2 = ((mVar2.getX() - mVar.getX()) * f2) / a2;
        float y2 = (f2 * (mVar2.getY() - mVar.getY())) / a2;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            float f3 = (float) i3;
            if (this.f4234b.get(com.google.zxing.common.a.a.round((f3 * x2) + x), com.google.zxing.common.a.a.round((f3 * y2) + y))) {
                i2 |= 1 << ((i - i3) - 1);
            }
        }
        return i2;
    }

    private int a(C0081a aVar, C0081a aVar2) {
        float b2 = b(aVar, aVar2);
        float f2 = ((float) (aVar2.f4235a - aVar.f4235a)) / b2;
        float f3 = ((float) (aVar2.f4236b - aVar.f4236b)) / b2;
        boolean z = this.f4234b.get(aVar.f4235a, aVar.f4236b);
        int ceil = (int) Math.ceil((double) b2);
        boolean z2 = false;
        float f4 = (float) aVar.f4235a;
        float f5 = (float) aVar.f4236b;
        int i = 0;
        for (int i2 = 0; i2 < ceil; i2++) {
            f4 += f2;
            f5 += f3;
            if (this.f4234b.get(com.google.zxing.common.a.a.round(f4), com.google.zxing.common.a.a.round(f5)) != z) {
                i++;
            }
        }
        float f6 = ((float) i) / b2;
        if (f6 > 0.1f && f6 < 0.9f) {
            return 0;
        }
        if (f6 <= 0.1f) {
            z2 = true;
        }
        return z2 == z ? 1 : -1;
    }

    private static m[] a(m[] mVarArr, int i, int i2) {
        float f2 = ((float) i2) / (((float) i) * 2.0f);
        float x = mVarArr[0].getX() - mVarArr[2].getX();
        float y = mVarArr[0].getY() - mVarArr[2].getY();
        float x2 = (mVarArr[0].getX() + mVarArr[2].getX()) / 2.0f;
        float y2 = (mVarArr[0].getY() + mVarArr[2].getY()) / 2.0f;
        float f3 = x * f2;
        float f4 = y * f2;
        m mVar = new m(x2 + f3, y2 + f4);
        m mVar2 = new m(x2 - f3, y2 - f4);
        float x3 = mVarArr[1].getX() - mVarArr[3].getX();
        float y3 = mVarArr[1].getY() - mVarArr[3].getY();
        float x4 = (mVarArr[1].getX() + mVarArr[3].getX()) / 2.0f;
        float y4 = (mVarArr[1].getY() + mVarArr[3].getY()) / 2.0f;
        float f5 = x3 * f2;
        float f6 = f2 * y3;
        return new m[]{mVar, new m(x4 + f5, y4 + f6), mVar2, new m(x4 - f5, y4 - f6)};
    }

    private boolean a(int i, int i2) {
        return i >= 0 && i < this.f4234b.getWidth() && i2 > 0 && i2 < this.f4234b.getHeight();
    }

    private boolean a(m mVar) {
        return a(com.google.zxing.common.a.a.round(mVar.getX()), com.google.zxing.common.a.a.round(mVar.getY()));
    }

    private static float a(m mVar, m mVar2) {
        return com.google.zxing.common.a.a.distance(mVar.getX(), mVar.getY(), mVar2.getX(), mVar2.getY());
    }

    private int b() {
        if (this.c) {
            return (this.d * 4) + 11;
        }
        int i = this.d;
        if (i <= 4) {
            return (i * 4) + 15;
        }
        return (i * 4) + ((((i - 4) / 8) + 1) * 2) + 15;
    }

    private C0081a a(C0081a aVar, boolean z, int i, int i2) {
        int i3 = aVar.f4235a + i;
        int i4 = aVar.f4236b;
        while (true) {
            i4 += i2;
            if (!a(i3, i4) || this.f4234b.get(i3, i4) != z) {
                int i5 = i3 - i;
                int i6 = i4 - i2;
            } else {
                i3 += i;
            }
        }
        int i52 = i3 - i;
        int i62 = i4 - i2;
        while (a(i52, i62) && this.f4234b.get(i52, i62) == z) {
            i52 += i;
        }
        int i7 = i52 - i;
        while (a(i7, i62) && this.f4234b.get(i7, i62) == z) {
            i62 += i2;
        }
        return new C0081a(i7, i62 - i2);
    }

    private static float b(C0081a aVar, C0081a aVar2) {
        return com.google.zxing.common.a.a.distance(aVar.f4235a, aVar.f4236b, aVar2.f4235a, aVar2.f4236b);
    }
}
