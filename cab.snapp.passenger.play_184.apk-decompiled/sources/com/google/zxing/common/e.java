package com.google.zxing.common;

import com.google.zxing.h;

public final class e extends h {
    public final b sampleGrid(b bVar, int i, int i2, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) throws h {
        b bVar2 = bVar;
        int i3 = i;
        int i4 = i2;
        return sampleGrid(bVar, i, i2, j.quadrilateralToQuadrilateral(f, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16));
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0065  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00a1  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.zxing.common.b sampleGrid(com.google.zxing.common.b r17, int r18, int r19, com.google.zxing.common.j r20) throws com.google.zxing.h {
        /*
            r16 = this;
            r0 = r18
            r1 = r19
            if (r0 <= 0) goto L_0x00d8
            if (r1 <= 0) goto L_0x00d8
            com.google.zxing.common.b r2 = new com.google.zxing.common.b
            r2.<init>(r0, r1)
            int r0 = r0 * 2
            float[] r0 = new float[r0]
            r3 = 0
            r4 = 0
        L_0x0013:
            if (r4 >= r1) goto L_0x00d7
            int r5 = r0.length
            float r6 = (float) r4
            r7 = 1056964608(0x3f000000, float:0.5)
            float r6 = r6 + r7
            r8 = 0
        L_0x001b:
            if (r8 >= r5) goto L_0x002a
            int r9 = r8 / 2
            float r9 = (float) r9
            float r9 = r9 + r7
            r0[r8] = r9
            int r9 = r8 + 1
            r0[r9] = r6
            int r8 = r8 + 2
            goto L_0x001b
        L_0x002a:
            r8 = r20
            r8.transformPoints(r0)
            int r6 = r17.getWidth()
            int r7 = r17.getHeight()
            r9 = 1
            r10 = 0
            r11 = 1
        L_0x003a:
            r12 = 0
            r13 = -1
            if (r10 >= r5) goto L_0x0075
            if (r11 == 0) goto L_0x0075
            r11 = r0[r10]
            int r11 = (int) r11
            int r14 = r10 + 1
            r15 = r0[r14]
            int r15 = (int) r15
            if (r11 < r13) goto L_0x0070
            if (r11 > r6) goto L_0x0070
            if (r15 < r13) goto L_0x0070
            if (r15 > r7) goto L_0x0070
            if (r11 != r13) goto L_0x0056
            r0[r10] = r12
        L_0x0054:
            r11 = 1
            goto L_0x005f
        L_0x0056:
            if (r11 != r6) goto L_0x005e
            int r11 = r6 + -1
            float r11 = (float) r11
            r0[r10] = r11
            goto L_0x0054
        L_0x005e:
            r11 = 0
        L_0x005f:
            if (r15 != r13) goto L_0x0065
            r0[r14] = r12
        L_0x0063:
            r11 = 1
            goto L_0x006d
        L_0x0065:
            if (r15 != r7) goto L_0x006d
            int r11 = r7 + -1
            float r11 = (float) r11
            r0[r14] = r11
            goto L_0x0063
        L_0x006d:
            int r10 = r10 + 2
            goto L_0x003a
        L_0x0070:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x0075:
            int r10 = r5 + -2
            r11 = 1
        L_0x0078:
            if (r10 < 0) goto L_0x00b1
            if (r11 == 0) goto L_0x00b1
            r11 = r0[r10]
            int r11 = (int) r11
            int r14 = r10 + 1
            r15 = r0[r14]
            int r15 = (int) r15
            if (r11 < r13) goto L_0x00ac
            if (r11 > r6) goto L_0x00ac
            if (r15 < r13) goto L_0x00ac
            if (r15 > r7) goto L_0x00ac
            if (r11 != r13) goto L_0x0092
            r0[r10] = r12
        L_0x0090:
            r11 = 1
            goto L_0x009b
        L_0x0092:
            if (r11 != r6) goto L_0x009a
            int r11 = r6 + -1
            float r11 = (float) r11
            r0[r10] = r11
            goto L_0x0090
        L_0x009a:
            r11 = 0
        L_0x009b:
            if (r15 != r13) goto L_0x00a1
            r0[r14] = r12
        L_0x009f:
            r11 = 1
            goto L_0x00a9
        L_0x00a1:
            if (r15 != r7) goto L_0x00a9
            int r11 = r7 + -1
            float r11 = (float) r11
            r0[r14] = r11
            goto L_0x009f
        L_0x00a9:
            int r10 = r10 + -2
            goto L_0x0078
        L_0x00ac:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x00b1:
            r6 = 0
        L_0x00b2:
            if (r6 >= r5) goto L_0x00d1
            r7 = r0[r6]     // Catch:{ ArrayIndexOutOfBoundsException -> 0x00cc }
            int r7 = (int) r7     // Catch:{ ArrayIndexOutOfBoundsException -> 0x00cc }
            int r9 = r6 + 1
            r9 = r0[r9]     // Catch:{ ArrayIndexOutOfBoundsException -> 0x00cc }
            int r9 = (int) r9     // Catch:{ ArrayIndexOutOfBoundsException -> 0x00cc }
            r10 = r17
            boolean r7 = r10.get(r7, r9)     // Catch:{ ArrayIndexOutOfBoundsException -> 0x00cc }
            if (r7 == 0) goto L_0x00c9
            int r7 = r6 / 2
            r2.set(r7, r4)     // Catch:{ ArrayIndexOutOfBoundsException -> 0x00cc }
        L_0x00c9:
            int r6 = r6 + 2
            goto L_0x00b2
        L_0x00cc:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x00d1:
            r10 = r17
            int r4 = r4 + 1
            goto L_0x0013
        L_0x00d7:
            return r2
        L_0x00d8:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            goto L_0x00de
        L_0x00dd:
            throw r0
        L_0x00de:
            goto L_0x00dd
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.e.sampleGrid(com.google.zxing.common.b, int, int, com.google.zxing.common.j):com.google.zxing.common.b");
    }
}
