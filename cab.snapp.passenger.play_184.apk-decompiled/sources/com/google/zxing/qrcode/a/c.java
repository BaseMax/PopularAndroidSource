package com.google.zxing.qrcode.a;

import com.google.zxing.DecodeHintType;
import com.google.zxing.common.a.a;
import com.google.zxing.common.b;
import com.google.zxing.common.f;
import com.google.zxing.d;
import com.google.zxing.h;
import com.google.zxing.m;
import com.google.zxing.n;
import com.google.zxing.qrcode.a.e;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final b f4394a;

    /* renamed from: b  reason: collision with root package name */
    private n f4395b;

    public c(b bVar) {
        this.f4394a = bVar;
    }

    public final f detect() throws h, d {
        return detect(null);
    }

    public final f detect(Map<DecodeHintType, ?> map) throws h, d {
        n nVar;
        int i;
        Map<DecodeHintType, ?> map2 = map;
        if (map2 == null) {
            nVar = null;
        } else {
            nVar = (n) map2.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        }
        this.f4395b = nVar;
        e eVar = new e(this.f4394a, this.f4395b);
        boolean z = map2 != null && map2.containsKey(DecodeHintType.TRY_HARDER);
        int height = eVar.f4398a.getHeight();
        int width = eVar.f4398a.getWidth();
        int i2 = (height * 3) / 388;
        if (i2 < 3 || z) {
            i2 = 3;
        }
        int[] iArr = new int[5];
        int i3 = i2 - 1;
        int i4 = i2;
        boolean z2 = false;
        while (i3 < height && !z2) {
            e.b(iArr);
            boolean z3 = z2;
            int i5 = i4;
            int i6 = 0;
            int i7 = 0;
            while (i6 < width) {
                if (eVar.f4398a.get(i6, i3)) {
                    if ((i7 & 1) == 1) {
                        i7++;
                    }
                    iArr[i7] = iArr[i7] + 1;
                } else if ((i7 & 1) != 0) {
                    iArr[i7] = iArr[i7] + 1;
                } else if (i7 == 4) {
                    if (!e.a(iArr)) {
                        e.c(iArr);
                    } else if (eVar.a(iArr, i3, i6)) {
                        if (eVar.c) {
                            z3 = eVar.a();
                        } else {
                            if (eVar.f4399b.size() > 1) {
                                Iterator<d> it = eVar.f4399b.iterator();
                                d dVar = null;
                                while (true) {
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    d next = it.next();
                                    if (next.f4396a >= 2) {
                                        if (dVar != null) {
                                            eVar.c = true;
                                            i = ((int) (Math.abs(dVar.getX() - next.getX()) - Math.abs(dVar.getY() - next.getY()))) / 2;
                                            break;
                                        }
                                        dVar = next;
                                    }
                                }
                            }
                            i = 0;
                            if (i > iArr[2]) {
                                i3 += (i - iArr[2]) - 2;
                                i6 = width - 1;
                            }
                        }
                        e.b(iArr);
                        i7 = 0;
                        i5 = 2;
                    } else {
                        e.c(iArr);
                    }
                    i7 = 3;
                } else {
                    i7++;
                    iArr[i7] = iArr[i7] + 1;
                }
                i6++;
            }
            if (!e.a(iArr) || !eVar.a(iArr, i3, width)) {
                i4 = i5;
            } else {
                int i8 = iArr[0];
                if (eVar.c) {
                    z2 = eVar.a();
                    i4 = i8;
                    i3 += i4;
                } else {
                    i4 = i8;
                }
            }
            z2 = z3;
            i3 += i4;
        }
        int size = eVar.f4399b.size();
        if (size >= 3) {
            float f = 0.0f;
            if (size > 3) {
                float f2 = 0.0f;
                float f3 = 0.0f;
                for (d estimatedModuleSize : eVar.f4399b) {
                    float estimatedModuleSize2 = estimatedModuleSize.getEstimatedModuleSize();
                    f2 += estimatedModuleSize2;
                    f3 += estimatedModuleSize2 * estimatedModuleSize2;
                }
                float f4 = (float) size;
                float f5 = f2 / f4;
                Collections.sort(eVar.f4399b, new e.b(f5, (byte) 0));
                float max = Math.max(0.2f * f5, (float) Math.sqrt((double) ((f3 / f4) - (f5 * f5))));
                int i9 = 0;
                while (i9 < eVar.f4399b.size() && eVar.f4399b.size() > 3) {
                    if (Math.abs(eVar.f4399b.get(i9).getEstimatedModuleSize() - f5) > max) {
                        eVar.f4399b.remove(i9);
                        i9--;
                    }
                    i9++;
                }
            }
            if (eVar.f4399b.size() > 3) {
                for (d estimatedModuleSize3 : eVar.f4399b) {
                    f += estimatedModuleSize3.getEstimatedModuleSize();
                }
                Collections.sort(eVar.f4399b, new e.a(f / ((float) eVar.f4399b.size()), (byte) 0));
                eVar.f4399b.subList(3, eVar.f4399b.size()).clear();
            }
            d[] dVarArr = {eVar.f4399b.get(0), eVar.f4399b.get(1), eVar.f4399b.get(2)};
            m.orderBestPatterns(dVarArr);
            return a(new f(dVarArr));
        }
        throw h.getNotFoundInstance();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:71:0x01bd, code lost:
        r16 = r4;
     */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x020d  */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x021e  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0274  */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x0281  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.google.zxing.common.f a(com.google.zxing.qrcode.a.f r41) throws com.google.zxing.h, com.google.zxing.d {
        /*
            r40 = this;
            r0 = r40
            com.google.zxing.qrcode.a.d r1 = r41.getTopLeft()
            com.google.zxing.qrcode.a.d r2 = r41.getTopRight()
            com.google.zxing.qrcode.a.d r3 = r41.getBottomLeft()
            float r4 = r0.a(r1, r2)
            float r5 = r0.a(r1, r3)
            float r4 = r4 + r5
            r5 = 1073741824(0x40000000, float:2.0)
            float r4 = r4 / r5
            r5 = 1065353216(0x3f800000, float:1.0)
            int r6 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r6 < 0) goto L_0x0297
            float r6 = com.google.zxing.m.distance(r1, r2)
            float r6 = r6 / r4
            int r6 = com.google.zxing.common.a.a.round(r6)
            float r7 = com.google.zxing.m.distance(r1, r3)
            float r7 = r7 / r4
            int r7 = com.google.zxing.common.a.a.round(r7)
            int r6 = r6 + r7
            r14 = 2
            int r6 = r6 / r14
            int r6 = r6 + 7
            r7 = r6 & 3
            r15 = 3
            if (r7 == 0) goto L_0x004a
            if (r7 == r14) goto L_0x0047
            if (r7 == r15) goto L_0x0042
        L_0x0040:
            r13 = r6
            goto L_0x004d
        L_0x0042:
            com.google.zxing.h r1 = com.google.zxing.h.getNotFoundInstance()
            throw r1
        L_0x0047:
            int r6 = r6 + -1
            goto L_0x0040
        L_0x004a:
            int r6 = r6 + 1
            goto L_0x0040
        L_0x004d:
            com.google.zxing.qrcode.decoder.h r6 = com.google.zxing.qrcode.decoder.h.getProvisionalVersionForDimension(r13)
            int r7 = r6.getDimensionForVersion()
            int r7 = r7 + -7
            r16 = 0
            int[] r6 = r6.getAlignmentPatternCenters()
            int r6 = r6.length
            r17 = 1077936128(0x40400000, float:3.0)
            r11 = 0
            r10 = 1
            if (r6 <= 0) goto L_0x0202
            float r6 = r2.getX()
            float r8 = r1.getX()
            float r6 = r6 - r8
            float r8 = r3.getX()
            float r6 = r6 + r8
            float r8 = r2.getY()
            float r9 = r1.getY()
            float r8 = r8 - r9
            float r9 = r3.getY()
            float r8 = r8 + r9
            float r7 = (float) r7
            float r7 = r17 / r7
            float r5 = r5 - r7
            float r7 = r1.getX()
            float r9 = r1.getX()
            float r6 = r6 - r9
            float r6 = r6 * r5
            float r7 = r7 + r6
            int r9 = (int) r7
            float r6 = r1.getY()
            float r7 = r1.getY()
            float r8 = r8 - r7
            float r5 = r5 * r8
            float r6 = r6 + r5
            int r5 = (int) r6
            r8 = 4
        L_0x009f:
            r6 = 16
            if (r8 > r6) goto L_0x0202
            float r6 = (float) r8
            float r6 = r6 * r4
            int r6 = (int) r6
            int r7 = r9 - r6
            int r18 = java.lang.Math.max(r11, r7)     // Catch:{ h -> 0x01e8 }
            com.google.zxing.common.b r7 = r0.f4394a     // Catch:{ h -> 0x01e8 }
            int r7 = r7.getWidth()     // Catch:{ h -> 0x01e8 }
            int r7 = r7 - r10
            int r12 = r9 + r6
            int r7 = java.lang.Math.min(r7, r12)     // Catch:{ h -> 0x01e8 }
            int r12 = r7 - r18
            float r7 = (float) r12     // Catch:{ h -> 0x01e8 }
            float r19 = r4 * r17
            int r7 = (r7 > r19 ? 1 : (r7 == r19 ? 0 : -1))
            if (r7 < 0) goto L_0x01d9
            int r7 = r5 - r6
            int r20 = java.lang.Math.max(r11, r7)     // Catch:{ h -> 0x01e8 }
            com.google.zxing.common.b r7 = r0.f4394a     // Catch:{ h -> 0x01e8 }
            int r7 = r7.getHeight()     // Catch:{ h -> 0x01e8 }
            int r7 = r7 - r10
            int r6 = r6 + r5
            int r6 = java.lang.Math.min(r7, r6)     // Catch:{ h -> 0x01e8 }
            int r7 = r6 - r20
            float r6 = (float) r7     // Catch:{ h -> 0x01e8 }
            int r6 = (r6 > r19 ? 1 : (r6 == r19 ? 0 : -1))
            if (r6 < 0) goto L_0x01ca
            com.google.zxing.qrcode.a.b r6 = new com.google.zxing.qrcode.a.b     // Catch:{ h -> 0x01e8 }
            com.google.zxing.common.b r10 = r0.f4394a     // Catch:{ h -> 0x01e8 }
            com.google.zxing.n r14 = r0.f4395b     // Catch:{ h -> 0x01e8 }
            r21 = r6
            r6 = r21
            r22 = r7
            r7 = r10
            r23 = r8
            r8 = r18
            r18 = r9
            r9 = r20
            r10 = r12
            r12 = 0
            r11 = r22
            r12 = r4
            r24 = r13
            r13 = r14
            r6.<init>(r7, r8, r9, r10, r11, r12, r13)     // Catch:{ h -> 0x01c5 }
            int r7 = r6.c     // Catch:{ h -> 0x01c5 }
            int r8 = r6.f     // Catch:{ h -> 0x01c5 }
            int r9 = r6.e     // Catch:{ h -> 0x01c5 }
            int r9 = r9 + r7
            int r10 = r6.d     // Catch:{ h -> 0x01c5 }
            int r11 = r8 / 2
            int r10 = r10 + r11
            int[] r11 = new int[r15]     // Catch:{ h -> 0x01c5 }
            r12 = 0
        L_0x010b:
            if (r12 >= r8) goto L_0x01a8
            r13 = r12 & 1
            if (r13 != 0) goto L_0x0116
            int r13 = r12 + 1
            r14 = 2
            int r13 = r13 / r14
            goto L_0x011b
        L_0x0116:
            r14 = 2
            int r13 = r12 + 1
            int r13 = r13 / r14
            int r13 = -r13
        L_0x011b:
            int r13 = r13 + r10
            r15 = 0
            r11[r15] = r15     // Catch:{ h -> 0x01c5 }
            r14 = 1
            r11[r14] = r15     // Catch:{ h -> 0x01c5 }
            r19 = 2
            r11[r19] = r15     // Catch:{ h -> 0x01c5 }
            r15 = r7
        L_0x0127:
            if (r15 >= r9) goto L_0x0135
            com.google.zxing.common.b r14 = r6.f4392a     // Catch:{ h -> 0x01c5 }
            boolean r14 = r14.get(r15, r13)     // Catch:{ h -> 0x01c5 }
            if (r14 != 0) goto L_0x0135
            int r15 = r15 + 1
            r14 = 1
            goto L_0x0127
        L_0x0135:
            r14 = 0
        L_0x0136:
            if (r15 >= r9) goto L_0x018e
            r19 = r4
            com.google.zxing.common.b r4 = r6.f4392a     // Catch:{ h -> 0x01c7 }
            boolean r4 = r4.get(r15, r13)     // Catch:{ h -> 0x01c7 }
            if (r4 == 0) goto L_0x017b
            r4 = 1
            if (r14 != r4) goto L_0x014e
            r20 = r11[r4]     // Catch:{ h -> 0x01c7 }
            int r20 = r20 + 1
            r11[r4] = r20     // Catch:{ h -> 0x01c7 }
            r20 = r5
            goto L_0x0187
        L_0x014e:
            r4 = 2
            if (r14 != r4) goto L_0x0170
            boolean r14 = r6.a(r11)     // Catch:{ h -> 0x01c7 }
            if (r14 == 0) goto L_0x0161
            com.google.zxing.qrcode.a.a r14 = r6.a(r11, r13, r15)     // Catch:{ h -> 0x01c7 }
            if (r14 == 0) goto L_0x0161
            r16 = r14
            goto L_0x0204
        L_0x0161:
            r14 = r11[r4]     // Catch:{ h -> 0x01c7 }
            r20 = 0
            r11[r20] = r14     // Catch:{ h -> 0x01c7 }
            r14 = 1
            r11[r14] = r14     // Catch:{ h -> 0x01c7 }
            r11[r4] = r20     // Catch:{ h -> 0x01c7 }
            r20 = r5
            r14 = 1
            goto L_0x0187
        L_0x0170:
            int r14 = r14 + 1
            r4 = r11[r14]     // Catch:{ h -> 0x01c7 }
            r20 = r5
            r5 = 1
            int r4 = r4 + r5
            r11[r14] = r4     // Catch:{ h -> 0x01f2 }
            goto L_0x0187
        L_0x017b:
            r20 = r5
            r5 = 1
            if (r14 != r5) goto L_0x0182
            int r14 = r14 + 1
        L_0x0182:
            r4 = r11[r14]     // Catch:{ h -> 0x01f2 }
            int r4 = r4 + r5
            r11[r14] = r4     // Catch:{ h -> 0x01f2 }
        L_0x0187:
            int r15 = r15 + 1
            r4 = r19
            r5 = r20
            goto L_0x0136
        L_0x018e:
            r19 = r4
            r20 = r5
            boolean r4 = r6.a(r11)     // Catch:{ h -> 0x01f2 }
            if (r4 == 0) goto L_0x019f
            com.google.zxing.qrcode.a.a r4 = r6.a(r11, r13, r9)     // Catch:{ h -> 0x01f2 }
            if (r4 == 0) goto L_0x019f
            goto L_0x01bd
        L_0x019f:
            int r12 = r12 + 1
            r4 = r19
            r5 = r20
            r15 = 3
            goto L_0x010b
        L_0x01a8:
            r19 = r4
            r20 = r5
            java.util.List<com.google.zxing.qrcode.a.a> r4 = r6.f4393b     // Catch:{ h -> 0x01f2 }
            boolean r4 = r4.isEmpty()     // Catch:{ h -> 0x01f2 }
            if (r4 != 0) goto L_0x01c0
            java.util.List<com.google.zxing.qrcode.a.a> r4 = r6.f4393b     // Catch:{ h -> 0x01f2 }
            r5 = 0
            java.lang.Object r4 = r4.get(r5)     // Catch:{ h -> 0x01f2 }
            com.google.zxing.qrcode.a.a r4 = (com.google.zxing.qrcode.a.a) r4     // Catch:{ h -> 0x01f2 }
        L_0x01bd:
            r16 = r4
            goto L_0x0204
        L_0x01c0:
            com.google.zxing.h r4 = com.google.zxing.h.getNotFoundInstance()     // Catch:{ h -> 0x01f2 }
            throw r4     // Catch:{ h -> 0x01f2 }
        L_0x01c5:
            r19 = r4
        L_0x01c7:
            r20 = r5
            goto L_0x01f2
        L_0x01ca:
            r19 = r4
            r20 = r5
            r23 = r8
            r18 = r9
            r24 = r13
            com.google.zxing.h r4 = com.google.zxing.h.getNotFoundInstance()     // Catch:{ h -> 0x01f2 }
            throw r4     // Catch:{ h -> 0x01f2 }
        L_0x01d9:
            r19 = r4
            r20 = r5
            r23 = r8
            r18 = r9
            r24 = r13
            com.google.zxing.h r4 = com.google.zxing.h.getNotFoundInstance()     // Catch:{ h -> 0x01f2 }
            throw r4     // Catch:{ h -> 0x01f2 }
        L_0x01e8:
            r19 = r4
            r20 = r5
            r23 = r8
            r18 = r9
            r24 = r13
        L_0x01f2:
            int r8 = r23 << 1
            r9 = r18
            r4 = r19
            r5 = r20
            r13 = r24
            r10 = 1
            r11 = 0
            r14 = 2
            r15 = 3
            goto L_0x009f
        L_0x0202:
            r24 = r13
        L_0x0204:
            r6 = r24
            float r4 = (float) r6
            r5 = 1080033280(0x40600000, float:3.5)
            float r31 = r4 - r5
            if (r16 == 0) goto L_0x021e
            float r4 = r16.getX()
            float r5 = r16.getY()
            float r7 = r31 - r17
            r36 = r4
            r37 = r5
            r29 = r7
            goto L_0x0240
        L_0x021e:
            float r4 = r2.getX()
            float r5 = r1.getX()
            float r4 = r4 - r5
            float r5 = r3.getX()
            float r4 = r4 + r5
            float r5 = r2.getY()
            float r7 = r1.getY()
            float r5 = r5 - r7
            float r7 = r3.getY()
            float r5 = r5 + r7
            r36 = r4
            r37 = r5
            r29 = r31
        L_0x0240:
            r24 = 1080033280(0x40600000, float:3.5)
            r25 = 1080033280(0x40600000, float:3.5)
            r27 = 1080033280(0x40600000, float:3.5)
            r30 = 1080033280(0x40600000, float:3.5)
            float r32 = r1.getX()
            float r33 = r1.getY()
            float r34 = r2.getX()
            float r35 = r2.getY()
            float r38 = r3.getX()
            float r39 = r3.getY()
            r26 = r31
            r28 = r29
            com.google.zxing.common.j r4 = com.google.zxing.common.j.quadrilateralToQuadrilateral(r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39)
            com.google.zxing.common.b r5 = r0.f4394a
            com.google.zxing.common.h r7 = com.google.zxing.common.h.getInstance()
            com.google.zxing.common.b r4 = r7.sampleGrid(r5, r6, r6, r4)
            if (r16 != 0) goto L_0x0281
            r5 = 3
            com.google.zxing.m[] r5 = new com.google.zxing.m[r5]
            r6 = 0
            r5[r6] = r3
            r7 = 1
            r5[r7] = r1
            r8 = 2
            r5[r8] = r2
            goto L_0x0291
        L_0x0281:
            r5 = 3
            r6 = 0
            r7 = 1
            r8 = 2
            r9 = 4
            com.google.zxing.m[] r9 = new com.google.zxing.m[r9]
            r9[r6] = r3
            r9[r7] = r1
            r9[r8] = r2
            r9[r5] = r16
            r5 = r9
        L_0x0291:
            com.google.zxing.common.f r1 = new com.google.zxing.common.f
            r1.<init>(r4, r5)
            return r1
        L_0x0297:
            com.google.zxing.h r1 = com.google.zxing.h.getNotFoundInstance()
            goto L_0x029d
        L_0x029c:
            throw r1
        L_0x029d:
            goto L_0x029c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.a.c.a(com.google.zxing.qrcode.a.f):com.google.zxing.common.f");
    }

    private float a(m mVar, m mVar2) {
        float a2 = a((int) mVar.getX(), (int) mVar.getY(), (int) mVar2.getX(), (int) mVar2.getY());
        float a3 = a((int) mVar2.getX(), (int) mVar2.getY(), (int) mVar.getX(), (int) mVar.getY());
        if (Float.isNaN(a2)) {
            return a3 / 7.0f;
        }
        return Float.isNaN(a3) ? a2 / 7.0f : (a2 + a3) / 14.0f;
    }

    private float a(int i, int i2, int i3, int i4) {
        float f;
        int i5;
        float f2;
        float b2 = b(i, i2, i3, i4);
        int i6 = i - (i3 - i);
        int i7 = 0;
        if (i6 < 0) {
            f = ((float) i) / ((float) (i - i6));
            i5 = 0;
        } else if (i6 >= this.f4394a.getWidth()) {
            f = ((float) ((this.f4394a.getWidth() - 1) - i)) / ((float) (i6 - i));
            i5 = this.f4394a.getWidth() - 1;
        } else {
            i5 = i6;
            f = 1.0f;
        }
        float f3 = (float) i2;
        int i8 = (int) (f3 - (((float) (i4 - i2)) * f));
        if (i8 < 0) {
            f2 = f3 / ((float) (i2 - i8));
        } else if (i8 >= this.f4394a.getHeight()) {
            f2 = ((float) ((this.f4394a.getHeight() - 1) - i2)) / ((float) (i8 - i2));
            i7 = this.f4394a.getHeight() - 1;
        } else {
            i7 = i8;
            f2 = 1.0f;
        }
        return (b2 + b(i, i2, (int) (((float) i) + (((float) (i5 - i)) * f2)), i7)) - 1.0f;
    }

    private float b(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        c cVar;
        boolean z2;
        int i10 = 1;
        boolean z3 = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (z3) {
            i5 = i;
            i7 = i2;
            i6 = i3;
            i8 = i4;
        } else {
            i7 = i;
            i5 = i2;
            i8 = i3;
            i6 = i4;
        }
        int abs = Math.abs(i8 - i7);
        int abs2 = Math.abs(i6 - i5);
        int i11 = (-abs) / 2;
        int i12 = -1;
        int i13 = i7 < i8 ? 1 : -1;
        if (i5 < i6) {
            i12 = 1;
        }
        int i14 = i8 + i13;
        int i15 = i5;
        int i16 = i11;
        int i17 = 0;
        int i18 = i7;
        while (true) {
            if (i18 == i14) {
                i9 = i14;
                break;
            }
            int i19 = z3 ? i15 : i18;
            int i20 = z3 ? i18 : i15;
            if (i17 == i10) {
                cVar = this;
                z = z3;
                i9 = i14;
                z2 = true;
            } else {
                cVar = this;
                z = z3;
                i9 = i14;
                z2 = false;
            }
            if (z2 == cVar.f4394a.get(i19, i20)) {
                if (i17 == 2) {
                    return a.distance(i18, i15, i7, i5);
                }
                i17++;
            }
            i16 += abs2;
            if (i16 > 0) {
                if (i15 == i6) {
                    break;
                }
                i15 += i12;
                i16 -= abs;
            }
            i18 += i13;
            i14 = i9;
            z3 = z;
            i10 = 1;
        }
        if (i17 == 2) {
            return a.distance(i9, i6, i7, i5);
        }
        return Float.NaN;
    }
}
