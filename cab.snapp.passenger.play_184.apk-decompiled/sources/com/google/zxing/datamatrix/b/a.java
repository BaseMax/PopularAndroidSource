package com.google.zxing.datamatrix.b;

import com.google.zxing.h;
import com.google.zxing.m;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Map;
import org.eclipse.paho.a.a.w;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.zxing.common.b f4342a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.zxing.common.a.b f4343b;

    /* renamed from: com.google.zxing.datamatrix.b.a$a  reason: collision with other inner class name */
    static final class C0082a {

        /* renamed from: a  reason: collision with root package name */
        final m f4344a;

        /* renamed from: b  reason: collision with root package name */
        final m f4345b;
        final int c;

        /* synthetic */ C0082a(m mVar, m mVar2, int i, byte b2) {
            this(mVar, mVar2, i);
        }

        private C0082a(m mVar, m mVar2, int i) {
            this.f4344a = mVar;
            this.f4345b = mVar2;
            this.c = i;
        }

        public final String toString() {
            return this.f4344a + w.TOPIC_LEVEL_SEPARATOR + this.f4345b + '/' + this.c;
        }
    }

    static final class b implements Serializable, Comparator<C0082a> {
        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        public final int compare(C0082a aVar, C0082a aVar2) {
            return aVar.c - aVar2.c;
        }
    }

    public a(com.google.zxing.common.b bVar) throws h {
        this.f4342a = bVar;
        this.f4343b = new com.google.zxing.common.a.b(bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x0198  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x01af  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0285  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0297  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x029f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.zxing.common.f detect() throws com.google.zxing.h {
        /*
            r26 = this;
            r0 = r26
            com.google.zxing.common.a.b r1 = r0.f4343b
            com.google.zxing.m[] r1 = r1.detect()
            r2 = 0
            r3 = r1[r2]
            r4 = 1
            r5 = r1[r4]
            r6 = 2
            r7 = r1[r6]
            r8 = 3
            r1 = r1[r8]
            java.util.ArrayList r9 = new java.util.ArrayList
            r10 = 4
            r9.<init>(r10)
            com.google.zxing.datamatrix.b.a$a r11 = r0.b(r3, r5)
            r9.add(r11)
            com.google.zxing.datamatrix.b.a$a r11 = r0.b(r3, r7)
            r9.add(r11)
            com.google.zxing.datamatrix.b.a$a r11 = r0.b(r5, r1)
            r9.add(r11)
            com.google.zxing.datamatrix.b.a$a r11 = r0.b(r7, r1)
            r9.add(r11)
            com.google.zxing.datamatrix.b.a$b r11 = new com.google.zxing.datamatrix.b.a$b
            r11.<init>(r2)
            java.util.Collections.sort(r9, r11)
            java.lang.Object r11 = r9.get(r2)
            com.google.zxing.datamatrix.b.a$a r11 = (com.google.zxing.datamatrix.b.a.C0082a) r11
            java.lang.Object r9 = r9.get(r4)
            com.google.zxing.datamatrix.b.a$a r9 = (com.google.zxing.datamatrix.b.a.C0082a) r9
            java.util.HashMap r12 = new java.util.HashMap
            r12.<init>()
            com.google.zxing.m r13 = r11.f4344a
            a((java.util.Map<com.google.zxing.m, java.lang.Integer>) r12, (com.google.zxing.m) r13)
            com.google.zxing.m r11 = r11.f4345b
            a((java.util.Map<com.google.zxing.m, java.lang.Integer>) r12, (com.google.zxing.m) r11)
            com.google.zxing.m r11 = r9.f4344a
            a((java.util.Map<com.google.zxing.m, java.lang.Integer>) r12, (com.google.zxing.m) r11)
            com.google.zxing.m r9 = r9.f4345b
            a((java.util.Map<com.google.zxing.m, java.lang.Integer>) r12, (com.google.zxing.m) r9)
            java.util.Set r9 = r12.entrySet()
            java.util.Iterator r9 = r9.iterator()
            r13 = 0
            r14 = 0
            r15 = 0
        L_0x006e:
            boolean r16 = r9.hasNext()
            if (r16 == 0) goto L_0x0097
            java.lang.Object r16 = r9.next()
            java.util.Map$Entry r16 = (java.util.Map.Entry) r16
            java.lang.Object r17 = r16.getKey()
            com.google.zxing.m r17 = (com.google.zxing.m) r17
            java.lang.Object r16 = r16.getValue()
            java.lang.Integer r16 = (java.lang.Integer) r16
            int r11 = r16.intValue()
            if (r11 != r6) goto L_0x008f
            r14 = r17
            goto L_0x006e
        L_0x008f:
            if (r13 != 0) goto L_0x0094
            r13 = r17
            goto L_0x006e
        L_0x0094:
            r15 = r17
            goto L_0x006e
        L_0x0097:
            if (r13 == 0) goto L_0x02c3
            if (r14 == 0) goto L_0x02c3
            if (r15 == 0) goto L_0x02c3
            com.google.zxing.m[] r9 = new com.google.zxing.m[r8]
            r9[r2] = r13
            r9[r4] = r14
            r9[r6] = r15
            com.google.zxing.m.orderBestPatterns(r9)
            r11 = r9[r2]
            r13 = r9[r4]
            r9 = r9[r6]
            boolean r14 = r12.containsKey(r3)
            if (r14 != 0) goto L_0x00b6
            r1 = r3
            goto L_0x00c5
        L_0x00b6:
            boolean r3 = r12.containsKey(r5)
            if (r3 != 0) goto L_0x00be
            r1 = r5
            goto L_0x00c5
        L_0x00be:
            boolean r3 = r12.containsKey(r7)
            if (r3 != 0) goto L_0x00c5
            r1 = r7
        L_0x00c5:
            com.google.zxing.datamatrix.b.a$a r3 = r0.b(r9, r1)
            int r3 = r3.c
            com.google.zxing.datamatrix.b.a$a r5 = r0.b(r11, r1)
            int r5 = r5.c
            r7 = r3 & 1
            if (r7 != r4) goto L_0x00d7
            int r3 = r3 + 1
        L_0x00d7:
            int r3 = r3 + r6
            r7 = r5 & 1
            if (r7 != r4) goto L_0x00de
            int r5 = r5 + 1
        L_0x00de:
            int r5 = r5 + r6
            int r7 = r3 * 4
            int r12 = r5 * 7
            if (r7 >= r12) goto L_0x01c7
            int r7 = r5 * 4
            int r12 = r3 * 7
            if (r7 < r12) goto L_0x00ed
            goto L_0x01c7
        L_0x00ed:
            int r3 = java.lang.Math.min(r5, r3)
            int r5 = a((com.google.zxing.m) r13, (com.google.zxing.m) r11)
            float r5 = (float) r5
            float r3 = (float) r3
            float r5 = r5 / r3
            int r7 = a((com.google.zxing.m) r9, (com.google.zxing.m) r1)
            float r12 = r1.getX()
            float r14 = r9.getX()
            float r12 = r12 - r14
            float r7 = (float) r7
            float r12 = r12 / r7
            float r14 = r1.getY()
            float r15 = r9.getY()
            float r14 = r14 - r15
            float r14 = r14 / r7
            com.google.zxing.m r7 = new com.google.zxing.m
            float r15 = r1.getX()
            float r12 = r12 * r5
            float r15 = r15 + r12
            float r12 = r1.getY()
            float r5 = r5 * r14
            float r12 = r12 + r5
            r7.<init>(r15, r12)
            int r5 = a((com.google.zxing.m) r13, (com.google.zxing.m) r9)
            float r5 = (float) r5
            float r5 = r5 / r3
            int r3 = a((com.google.zxing.m) r11, (com.google.zxing.m) r1)
            float r12 = r1.getX()
            float r14 = r11.getX()
            float r12 = r12 - r14
            float r3 = (float) r3
            float r12 = r12 / r3
            float r14 = r1.getY()
            float r15 = r11.getY()
            float r14 = r14 - r15
            float r14 = r14 / r3
            com.google.zxing.m r3 = new com.google.zxing.m
            float r15 = r1.getX()
            float r12 = r12 * r5
            float r15 = r15 + r12
            float r12 = r1.getY()
            float r5 = r5 * r14
            float r12 = r12 + r5
            r3.<init>(r15, r12)
            boolean r5 = r0.a(r7)
            if (r5 != 0) goto L_0x0165
            boolean r5 = r0.a(r3)
            if (r5 != 0) goto L_0x0193
            r18 = 0
            goto L_0x0195
        L_0x0165:
            boolean r5 = r0.a(r3)
            if (r5 != 0) goto L_0x016c
            goto L_0x0190
        L_0x016c:
            com.google.zxing.datamatrix.b.a$a r5 = r0.b(r9, r7)
            int r5 = r5.c
            com.google.zxing.datamatrix.b.a$a r12 = r0.b(r11, r7)
            int r12 = r12.c
            int r5 = r5 - r12
            int r5 = java.lang.Math.abs(r5)
            com.google.zxing.datamatrix.b.a$a r12 = r0.b(r9, r3)
            int r12 = r12.c
            com.google.zxing.datamatrix.b.a$a r14 = r0.b(r11, r3)
            int r14 = r14.c
            int r12 = r12 - r14
            int r12 = java.lang.Math.abs(r12)
            if (r5 > r12) goto L_0x0193
        L_0x0190:
            r18 = r7
            goto L_0x0195
        L_0x0193:
            r18 = r3
        L_0x0195:
            if (r18 != 0) goto L_0x0198
            goto L_0x019a
        L_0x0198:
            r1 = r18
        L_0x019a:
            com.google.zxing.datamatrix.b.a$a r3 = r0.b(r9, r1)
            int r3 = r3.c
            com.google.zxing.datamatrix.b.a$a r5 = r0.b(r11, r1)
            int r5 = r5.c
            int r3 = java.lang.Math.max(r3, r5)
            int r3 = r3 + r4
            r5 = r3 & 1
            if (r5 != r4) goto L_0x01b1
            int r3 = r3 + 1
        L_0x01b1:
            r25 = r3
            com.google.zxing.common.b r3 = r0.f4342a
            r19 = r3
            r20 = r9
            r21 = r13
            r22 = r11
            r23 = r1
            r24 = r25
            com.google.zxing.common.b r3 = a(r19, r20, r21, r22, r23, r24, r25)
            goto L_0x02b3
        L_0x01c7:
            int r7 = a((com.google.zxing.m) r13, (com.google.zxing.m) r11)
            float r7 = (float) r7
            float r12 = (float) r3
            float r7 = r7 / r12
            int r12 = a((com.google.zxing.m) r9, (com.google.zxing.m) r1)
            float r14 = r1.getX()
            float r15 = r9.getX()
            float r14 = r14 - r15
            float r12 = (float) r12
            float r14 = r14 / r12
            float r15 = r1.getY()
            float r16 = r9.getY()
            float r15 = r15 - r16
            float r15 = r15 / r12
            com.google.zxing.m r12 = new com.google.zxing.m
            float r16 = r1.getX()
            float r14 = r14 * r7
            float r14 = r16 + r14
            float r16 = r1.getY()
            float r7 = r7 * r15
            float r7 = r16 + r7
            r12.<init>(r14, r7)
            int r7 = a((com.google.zxing.m) r13, (com.google.zxing.m) r9)
            float r7 = (float) r7
            float r14 = (float) r5
            float r7 = r7 / r14
            int r14 = a((com.google.zxing.m) r11, (com.google.zxing.m) r1)
            float r15 = r1.getX()
            float r16 = r11.getX()
            float r15 = r15 - r16
            float r14 = (float) r14
            float r15 = r15 / r14
            float r16 = r1.getY()
            float r17 = r11.getY()
            float r16 = r16 - r17
            float r16 = r16 / r14
            com.google.zxing.m r14 = new com.google.zxing.m
            float r17 = r1.getX()
            float r15 = r15 * r7
            float r15 = r17 + r15
            float r17 = r1.getY()
            float r7 = r7 * r16
            float r7 = r17 + r7
            r14.<init>(r15, r7)
            boolean r7 = r0.a(r12)
            if (r7 != 0) goto L_0x0244
            boolean r3 = r0.a(r14)
            if (r3 != 0) goto L_0x0280
            r18 = 0
            goto L_0x0282
        L_0x0244:
            boolean r7 = r0.a(r14)
            if (r7 != 0) goto L_0x024b
            goto L_0x027d
        L_0x024b:
            com.google.zxing.datamatrix.b.a$a r7 = r0.b(r9, r12)
            int r7 = r7.c
            int r7 = r3 - r7
            int r7 = java.lang.Math.abs(r7)
            com.google.zxing.datamatrix.b.a$a r15 = r0.b(r11, r12)
            int r15 = r15.c
            int r15 = r5 - r15
            int r15 = java.lang.Math.abs(r15)
            int r7 = r7 + r15
            com.google.zxing.datamatrix.b.a$a r15 = r0.b(r9, r14)
            int r15 = r15.c
            int r3 = r3 - r15
            int r3 = java.lang.Math.abs(r3)
            com.google.zxing.datamatrix.b.a$a r15 = r0.b(r11, r14)
            int r15 = r15.c
            int r5 = r5 - r15
            int r5 = java.lang.Math.abs(r5)
            int r3 = r3 + r5
            if (r7 > r3) goto L_0x0280
        L_0x027d:
            r18 = r12
            goto L_0x0282
        L_0x0280:
            r18 = r14
        L_0x0282:
            if (r18 != 0) goto L_0x0285
            goto L_0x0287
        L_0x0285:
            r1 = r18
        L_0x0287:
            com.google.zxing.datamatrix.b.a$a r3 = r0.b(r9, r1)
            int r3 = r3.c
            com.google.zxing.datamatrix.b.a$a r5 = r0.b(r11, r1)
            int r5 = r5.c
            r7 = r3 & 1
            if (r7 != r4) goto L_0x0299
            int r3 = r3 + 1
        L_0x0299:
            r24 = r3
            r3 = r5 & 1
            if (r3 != r4) goto L_0x02a1
            int r5 = r5 + 1
        L_0x02a1:
            r25 = r5
            com.google.zxing.common.b r3 = r0.f4342a
            r19 = r3
            r20 = r9
            r21 = r13
            r22 = r11
            r23 = r1
            com.google.zxing.common.b r3 = a(r19, r20, r21, r22, r23, r24, r25)
        L_0x02b3:
            com.google.zxing.common.f r5 = new com.google.zxing.common.f
            com.google.zxing.m[] r7 = new com.google.zxing.m[r10]
            r7[r2] = r9
            r7[r4] = r13
            r7[r6] = r11
            r7[r8] = r1
            r5.<init>(r3, r7)
            return r5
        L_0x02c3:
            com.google.zxing.h r1 = com.google.zxing.h.getNotFoundInstance()
            goto L_0x02c9
        L_0x02c8:
            throw r1
        L_0x02c9:
            goto L_0x02c8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.b.a.detect():com.google.zxing.common.f");
    }

    private boolean a(m mVar) {
        return mVar.getX() >= 0.0f && mVar.getX() < ((float) this.f4342a.getWidth()) && mVar.getY() > 0.0f && mVar.getY() < ((float) this.f4342a.getHeight());
    }

    private static int a(m mVar, m mVar2) {
        return com.google.zxing.common.a.a.round(m.distance(mVar, mVar2));
    }

    private static void a(Map<m, Integer> map, m mVar) {
        Integer num = map.get(mVar);
        int i = 1;
        if (num != null) {
            i = 1 + num.intValue();
        }
        map.put(mVar, Integer.valueOf(i));
    }

    private static com.google.zxing.common.b a(com.google.zxing.common.b bVar, m mVar, m mVar2, m mVar3, m mVar4, int i, int i2) throws h {
        float f = ((float) i) - 0.5f;
        float f2 = ((float) i2) - 0.5f;
        return com.google.zxing.common.h.getInstance().sampleGrid(bVar, i, i2, 0.5f, 0.5f, f, 0.5f, f, f2, 0.5f, f2, mVar.getX(), mVar.getY(), mVar4.getX(), mVar4.getY(), mVar3.getX(), mVar3.getY(), mVar2.getX(), mVar2.getY());
    }

    private C0082a b(m mVar, m mVar2) {
        int x = (int) mVar.getX();
        int y = (int) mVar.getY();
        int x2 = (int) mVar2.getX();
        int y2 = (int) mVar2.getY();
        int i = 1;
        boolean z = Math.abs(y2 - y) > Math.abs(x2 - x);
        if (z) {
            int i2 = y;
            y = x;
            x = i2;
            int i3 = y2;
            y2 = x2;
            x2 = i3;
        }
        int abs = Math.abs(x2 - x);
        int abs2 = Math.abs(y2 - y);
        int i4 = (-abs) / 2;
        int i5 = y < y2 ? 1 : -1;
        if (x >= x2) {
            i = -1;
        }
        boolean z2 = this.f4342a.get(z ? y : x, z ? x : y);
        int i6 = i4;
        int i7 = 0;
        while (x != x2) {
            boolean z3 = this.f4342a.get(z ? y : x, z ? x : y);
            if (z3 != z2) {
                i7++;
                z2 = z3;
            }
            i6 += abs2;
            if (i6 > 0) {
                if (y == y2) {
                    break;
                }
                y += i5;
                i6 -= abs;
            }
            x += i;
        }
        return new C0082a(mVar, mVar2, i7, (byte) 0);
    }
}
