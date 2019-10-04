package com.google.zxing.qrcode.a;

import com.google.zxing.n;
import java.util.ArrayList;
import java.util.List;

final class b {

    /* renamed from: a  reason: collision with root package name */
    final com.google.zxing.common.b f4392a;

    /* renamed from: b  reason: collision with root package name */
    final List<a> f4393b = new ArrayList(5);
    final int c;
    final int d;
    final int e;
    final int f;
    private final float g;
    private final int[] h;
    private final n i;

    b(com.google.zxing.common.b bVar, int i2, int i3, int i4, int i5, float f2, n nVar) {
        this.f4392a = bVar;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.g = f2;
        this.h = new int[3];
        this.i = nVar;
    }

    private static float a(int[] iArr, int i2) {
        return ((float) (i2 - iArr[2])) - (((float) iArr[1]) / 2.0f);
    }

    /* access modifiers changed from: package-private */
    public final boolean a(int[] iArr) {
        float f2 = this.g;
        float f3 = f2 / 2.0f;
        for (int i2 = 0; i2 < 3; i2++) {
            if (Math.abs(f2 - ((float) iArr[i2])) >= f3) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0106 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.zxing.qrcode.a.a a(int[] r13, int r14, int r15) {
        /*
            r12 = this;
            r0 = 0
            r1 = r13[r0]
            r2 = 1
            r3 = r13[r2]
            int r1 = r1 + r3
            r3 = 2
            r4 = r13[r3]
            int r1 = r1 + r4
            float r15 = a(r13, r15)
            int r4 = (int) r15
            r5 = r13[r2]
            int r5 = r5 * 2
            com.google.zxing.common.b r6 = r12.f4392a
            int r7 = r6.getHeight()
            int[] r8 = r12.h
            r8[r0] = r0
            r8[r2] = r0
            r8[r3] = r0
            r9 = r14
        L_0x0023:
            if (r9 < 0) goto L_0x0037
            boolean r10 = r6.get(r4, r9)
            if (r10 == 0) goto L_0x0037
            r10 = r8[r2]
            if (r10 > r5) goto L_0x0037
            r10 = r8[r2]
            int r10 = r10 + r2
            r8[r2] = r10
            int r9 = r9 + -1
            goto L_0x0023
        L_0x0037:
            r10 = 2143289344(0x7fc00000, float:NaN)
            if (r9 < 0) goto L_0x00ad
            r11 = r8[r2]
            if (r11 <= r5) goto L_0x0041
            goto L_0x00ad
        L_0x0041:
            if (r9 < 0) goto L_0x0055
            boolean r11 = r6.get(r4, r9)
            if (r11 != 0) goto L_0x0055
            r11 = r8[r0]
            if (r11 > r5) goto L_0x0055
            r11 = r8[r0]
            int r11 = r11 + r2
            r8[r0] = r11
            int r9 = r9 + -1
            goto L_0x0041
        L_0x0055:
            r9 = r8[r0]
            if (r9 <= r5) goto L_0x005a
            goto L_0x00ad
        L_0x005a:
            int r14 = r14 + r2
        L_0x005b:
            if (r14 >= r7) goto L_0x006f
            boolean r9 = r6.get(r4, r14)
            if (r9 == 0) goto L_0x006f
            r9 = r8[r2]
            if (r9 > r5) goto L_0x006f
            r9 = r8[r2]
            int r9 = r9 + r2
            r8[r2] = r9
            int r14 = r14 + 1
            goto L_0x005b
        L_0x006f:
            if (r14 == r7) goto L_0x00ad
            r9 = r8[r2]
            if (r9 <= r5) goto L_0x0076
            goto L_0x00ad
        L_0x0076:
            if (r14 >= r7) goto L_0x008a
            boolean r9 = r6.get(r4, r14)
            if (r9 != 0) goto L_0x008a
            r9 = r8[r3]
            if (r9 > r5) goto L_0x008a
            r9 = r8[r3]
            int r9 = r9 + r2
            r8[r3] = r9
            int r14 = r14 + 1
            goto L_0x0076
        L_0x008a:
            r4 = r8[r3]
            if (r4 <= r5) goto L_0x008f
            goto L_0x00ad
        L_0x008f:
            r4 = r8[r0]
            r5 = r8[r2]
            int r4 = r4 + r5
            r5 = r8[r3]
            int r4 = r4 + r5
            int r4 = r4 - r1
            int r4 = java.lang.Math.abs(r4)
            int r4 = r4 * 5
            int r1 = r1 * 2
            if (r4 < r1) goto L_0x00a3
            goto L_0x00ad
        L_0x00a3:
            boolean r1 = r12.a(r8)
            if (r1 == 0) goto L_0x00ad
            float r10 = a(r8, r14)
        L_0x00ad:
            boolean r14 = java.lang.Float.isNaN(r10)
            if (r14 != 0) goto L_0x012f
            r14 = r13[r0]
            r1 = r13[r2]
            int r14 = r14 + r1
            r13 = r13[r3]
            int r14 = r14 + r13
            float r13 = (float) r14
            r14 = 1077936128(0x40400000, float:3.0)
            float r13 = r13 / r14
            java.util.List<com.google.zxing.qrcode.a.a> r14 = r12.f4393b
            java.util.Iterator r14 = r14.iterator()
        L_0x00c5:
            boolean r1 = r14.hasNext()
            if (r1 == 0) goto L_0x011e
            java.lang.Object r1 = r14.next()
            com.google.zxing.qrcode.a.a r1 = (com.google.zxing.qrcode.a.a) r1
            float r3 = r1.getY()
            float r3 = r10 - r3
            float r3 = java.lang.Math.abs(r3)
            int r3 = (r3 > r13 ? 1 : (r3 == r13 ? 0 : -1))
            if (r3 > 0) goto L_0x0103
            float r3 = r1.getX()
            float r3 = r15 - r3
            float r3 = java.lang.Math.abs(r3)
            int r3 = (r3 > r13 ? 1 : (r3 == r13 ? 0 : -1))
            if (r3 > 0) goto L_0x0103
            float r3 = r1.f4391a
            float r3 = r13 - r3
            float r3 = java.lang.Math.abs(r3)
            r4 = 1065353216(0x3f800000, float:1.0)
            int r4 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r4 <= 0) goto L_0x0101
            float r4 = r1.f4391a
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 > 0) goto L_0x0103
        L_0x0101:
            r3 = 1
            goto L_0x0104
        L_0x0103:
            r3 = 0
        L_0x0104:
            if (r3 == 0) goto L_0x00c5
            float r14 = r1.getX()
            float r14 = r14 + r15
            r15 = 1073741824(0x40000000, float:2.0)
            float r14 = r14 / r15
            float r0 = r1.getY()
            float r0 = r0 + r10
            float r0 = r0 / r15
            float r1 = r1.f4391a
            float r1 = r1 + r13
            float r1 = r1 / r15
            com.google.zxing.qrcode.a.a r13 = new com.google.zxing.qrcode.a.a
            r13.<init>(r14, r0, r1)
            return r13
        L_0x011e:
            com.google.zxing.qrcode.a.a r14 = new com.google.zxing.qrcode.a.a
            r14.<init>(r15, r10, r13)
            java.util.List<com.google.zxing.qrcode.a.a> r13 = r12.f4393b
            r13.add(r14)
            com.google.zxing.n r13 = r12.i
            if (r13 == 0) goto L_0x012f
            r13.foundPossibleResultPoint(r14)
        L_0x012f:
            r13 = 0
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.a.b.a(int[], int, int):com.google.zxing.qrcode.a.a");
    }
}
