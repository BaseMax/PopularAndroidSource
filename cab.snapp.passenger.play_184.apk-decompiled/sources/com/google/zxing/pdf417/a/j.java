package com.google.zxing.pdf417.a;

import com.google.zxing.c;
import com.google.zxing.common.b;
import com.google.zxing.common.d;
import com.google.zxing.h;
import com.google.zxing.m;
import com.google.zxing.pdf417.a.a.a;

public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final a f4382a = new a();

    private static boolean a(int i, int i2, int i3) {
        return i2 + -2 <= i && i <= i3 + 2;
    }

    private j() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0064, code lost:
        if (r3.e == r4.e) goto L_0x006f;
     */
    /* JADX WARNING: Removed duplicated region for block: B:115:0x01af  */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x01de  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:291:0x00c0 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00a0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.zxing.common.d decode(com.google.zxing.common.b r22, com.google.zxing.m r23, com.google.zxing.m r24, com.google.zxing.m r25, com.google.zxing.m r26, int r27, int r28) throws com.google.zxing.h, com.google.zxing.d, com.google.zxing.c {
        /*
            com.google.zxing.pdf417.a.c r6 = new com.google.zxing.pdf417.a.c
            r0 = r6
            r1 = r22
            r2 = r23
            r3 = r24
            r4 = r25
            r5 = r26
            r0.<init>(r1, r2, r3, r4, r5)
            r1 = 0
            r9 = r6
            r2 = 0
            r3 = 0
            r4 = 0
            r10 = 0
        L_0x0016:
            r11 = 2
            if (r2 >= r11) goto L_0x00c5
            if (r23 == 0) goto L_0x0029
            r6 = 1
            r3 = r22
            r4 = r9
            r5 = r23
            r7 = r27
            r8 = r28
            com.google.zxing.pdf417.a.h r3 = a((com.google.zxing.common.b) r3, (com.google.zxing.pdf417.a.c) r4, (com.google.zxing.m) r5, (boolean) r6, (int) r7, (int) r8)
        L_0x0029:
            r12 = r3
            if (r25 == 0) goto L_0x003b
            r6 = 0
            r3 = r22
            r4 = r9
            r5 = r25
            r7 = r27
            r8 = r28
            com.google.zxing.pdf417.a.h r3 = a((com.google.zxing.common.b) r3, (com.google.zxing.pdf417.a.c) r4, (com.google.zxing.m) r5, (boolean) r6, (int) r7, (int) r8)
            r10 = r3
        L_0x003b:
            if (r12 != 0) goto L_0x0042
            if (r10 != 0) goto L_0x0042
        L_0x003f:
            r4 = 0
            goto L_0x009e
        L_0x0042:
            if (r12 == 0) goto L_0x0067
            com.google.zxing.pdf417.a.a r3 = r12.b()
            if (r3 != 0) goto L_0x004b
            goto L_0x0067
        L_0x004b:
            if (r10 == 0) goto L_0x006f
            com.google.zxing.pdf417.a.a r4 = r10.b()
            if (r4 != 0) goto L_0x0054
            goto L_0x006f
        L_0x0054:
            int r5 = r3.f4361a
            int r6 = r4.f4361a
            if (r5 == r6) goto L_0x006f
            int r5 = r3.f4362b
            int r6 = r4.f4362b
            if (r5 == r6) goto L_0x006f
            int r5 = r3.e
            int r4 = r4.e
            if (r5 == r4) goto L_0x006f
            goto L_0x0069
        L_0x0067:
            if (r10 != 0) goto L_0x006b
        L_0x0069:
            r3 = 0
            goto L_0x006f
        L_0x006b:
            com.google.zxing.pdf417.a.a r3 = r10.b()
        L_0x006f:
            if (r3 != 0) goto L_0x0072
            goto L_0x003f
        L_0x0072:
            com.google.zxing.pdf417.a.c r4 = a((com.google.zxing.pdf417.a.h) r12)
            com.google.zxing.pdf417.a.c r5 = a((com.google.zxing.pdf417.a.h) r10)
            if (r4 != 0) goto L_0x007e
            r4 = r5
            goto L_0x0098
        L_0x007e:
            if (r5 != 0) goto L_0x0081
            goto L_0x0098
        L_0x0081:
            com.google.zxing.pdf417.a.c r6 = new com.google.zxing.pdf417.a.c
            com.google.zxing.common.b r14 = r4.f4369a
            com.google.zxing.m r15 = r4.f4370b
            com.google.zxing.m r4 = r4.c
            com.google.zxing.m r7 = r5.d
            com.google.zxing.m r5 = r5.e
            r13 = r6
            r16 = r4
            r17 = r7
            r18 = r5
            r13.<init>(r14, r15, r16, r17, r18)
            r4 = r6
        L_0x0098:
            com.google.zxing.pdf417.a.f r5 = new com.google.zxing.pdf417.a.f
            r5.<init>(r3, r4)
            r4 = r5
        L_0x009e:
            if (r4 == 0) goto L_0x00c0
            if (r2 != 0) goto L_0x00bd
            com.google.zxing.pdf417.a.c r3 = r4.c
            if (r3 == 0) goto L_0x00bd
            com.google.zxing.pdf417.a.c r3 = r4.c
            int r3 = r3.h
            int r5 = r9.h
            if (r3 < r5) goto L_0x00b6
            com.google.zxing.pdf417.a.c r3 = r4.c
            int r3 = r3.i
            int r5 = r9.i
            if (r3 <= r5) goto L_0x00bd
        L_0x00b6:
            com.google.zxing.pdf417.a.c r9 = r4.c
            int r2 = r2 + 1
            r3 = r12
            goto L_0x0016
        L_0x00bd:
            r4.c = r9
            goto L_0x00c6
        L_0x00c0:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x00c5:
            r12 = r3
        L_0x00c6:
            int r2 = r4.d
            r3 = 1
            int r2 = r2 + r3
            com.google.zxing.pdf417.a.g[] r5 = r4.f4378b
            r5[r1] = r12
            com.google.zxing.pdf417.a.g[] r5 = r4.f4378b
            r5[r2] = r10
            if (r12 == 0) goto L_0x00d6
            r5 = 1
            goto L_0x00d7
        L_0x00d6:
            r5 = 0
        L_0x00d7:
            r7 = r27
            r8 = r28
            r6 = 1
        L_0x00dc:
            if (r6 > r2) goto L_0x01fd
            if (r5 == 0) goto L_0x00e2
            r10 = r6
            goto L_0x00e4
        L_0x00e2:
            int r10 = r2 - r6
        L_0x00e4:
            com.google.zxing.pdf417.a.g[] r12 = r4.f4378b
            r12 = r12[r10]
            if (r12 != 0) goto L_0x01f2
            if (r10 == 0) goto L_0x00f5
            if (r10 != r2) goto L_0x00ef
            goto L_0x00f5
        L_0x00ef:
            com.google.zxing.pdf417.a.g r12 = new com.google.zxing.pdf417.a.g
            r12.<init>(r9)
            goto L_0x00ff
        L_0x00f5:
            com.google.zxing.pdf417.a.h r12 = new com.google.zxing.pdf417.a.h
            if (r10 != 0) goto L_0x00fb
            r13 = 1
            goto L_0x00fc
        L_0x00fb:
            r13 = 0
        L_0x00fc:
            r12.<init>(r9, r13)
        L_0x00ff:
            com.google.zxing.pdf417.a.g[] r13 = r4.f4378b
            r13[r10] = r12
            int r13 = r9.h
            r14 = r7
            r7 = r13
            r13 = r8
            r8 = -1
        L_0x0109:
            int r0 = r9.i
            if (r7 > r0) goto L_0x01eb
            if (r5 == 0) goto L_0x0111
            r0 = 1
            goto L_0x0112
        L_0x0111:
            r0 = -1
        L_0x0112:
            int r3 = r10 - r0
            boolean r16 = a(r4, r3)
            if (r16 == 0) goto L_0x0123
            com.google.zxing.pdf417.a.g[] r1 = r4.f4378b
            r1 = r1[r3]
            com.google.zxing.pdf417.a.d r1 = r1.c(r7)
            goto L_0x0124
        L_0x0123:
            r1 = 0
        L_0x0124:
            if (r1 == 0) goto L_0x0131
            if (r5 == 0) goto L_0x012b
            int r0 = r1.f4372b
            goto L_0x012d
        L_0x012b:
            int r0 = r1.f4371a
        L_0x012d:
            r21 = r2
            goto L_0x01a2
        L_0x0131:
            com.google.zxing.pdf417.a.g[] r1 = r4.f4378b
            r1 = r1[r10]
            com.google.zxing.pdf417.a.d r1 = r1.a(r7)
            if (r1 == 0) goto L_0x0143
            if (r5 == 0) goto L_0x0140
            int r0 = r1.f4371a
            goto L_0x012d
        L_0x0140:
            int r0 = r1.f4372b
            goto L_0x012d
        L_0x0143:
            boolean r16 = a(r4, r3)
            if (r16 == 0) goto L_0x0151
            com.google.zxing.pdf417.a.g[] r1 = r4.f4378b
            r1 = r1[r3]
            com.google.zxing.pdf417.a.d r1 = r1.a(r7)
        L_0x0151:
            if (r1 == 0) goto L_0x015b
            if (r5 == 0) goto L_0x0158
            int r0 = r1.f4372b
            goto L_0x012d
        L_0x0158:
            int r0 = r1.f4371a
            goto L_0x012d
        L_0x015b:
            r1 = r10
            r3 = 0
        L_0x015d:
            int r1 = r1 - r0
            boolean r16 = a(r4, r1)
            if (r16 == 0) goto L_0x0195
            com.google.zxing.pdf417.a.g[] r11 = r4.f4378b
            r11 = r11[r1]
            com.google.zxing.pdf417.a.d[] r11 = r11.f4380b
            int r15 = r11.length
            r27 = r1
            r1 = 0
        L_0x016e:
            if (r1 >= r15) goto L_0x018d
            r21 = r2
            r2 = r11[r1]
            if (r2 == 0) goto L_0x0188
            if (r5 == 0) goto L_0x017b
            int r1 = r2.f4372b
            goto L_0x017d
        L_0x017b:
            int r1 = r2.f4371a
        L_0x017d:
            int r0 = r0 * r3
            int r3 = r2.f4372b
            int r2 = r2.f4371a
            int r3 = r3 - r2
            int r0 = r0 * r3
            int r0 = r0 + r1
            goto L_0x01a2
        L_0x0188:
            int r1 = r1 + 1
            r2 = r21
            goto L_0x016e
        L_0x018d:
            r21 = r2
            int r3 = r3 + 1
            r1 = r27
            r11 = 2
            goto L_0x015d
        L_0x0195:
            r21 = r2
            if (r5 == 0) goto L_0x019e
            com.google.zxing.pdf417.a.c r0 = r4.c
            int r0 = r0.f
            goto L_0x01a2
        L_0x019e:
            com.google.zxing.pdf417.a.c r0 = r4.c
            int r0 = r0.g
        L_0x01a2:
            if (r0 < 0) goto L_0x01ac
            int r1 = r9.g
            if (r0 <= r1) goto L_0x01a9
            goto L_0x01ac
        L_0x01a9:
            r1 = r0
            r0 = -1
            goto L_0x01b0
        L_0x01ac:
            r0 = -1
            if (r8 == r0) goto L_0x01de
            r1 = r8
        L_0x01b0:
            int r2 = r9.f
            int r15 = r9.g
            r3 = r13
            r13 = r22
            r11 = r14
            r14 = r2
            r16 = r5
            r17 = r1
            r18 = r7
            r19 = r11
            r20 = r3
            com.google.zxing.pdf417.a.d r2 = a(r13, r14, r15, r16, r17, r18, r19, r20)
            if (r2 == 0) goto L_0x01e0
            r12.a(r7, r2)
            int r8 = r2.c()
            int r14 = java.lang.Math.min(r11, r8)
            int r2 = r2.c()
            int r13 = java.lang.Math.max(r3, r2)
            r8 = r1
            goto L_0x01e2
        L_0x01de:
            r3 = r13
            r11 = r14
        L_0x01e0:
            r13 = r3
            r14 = r11
        L_0x01e2:
            int r7 = r7 + 1
            r2 = r21
            r1 = 0
            r3 = 1
            r11 = 2
            goto L_0x0109
        L_0x01eb:
            r21 = r2
            r3 = r13
            r11 = r14
            r8 = r3
            r7 = r11
            goto L_0x01f4
        L_0x01f2:
            r21 = r2
        L_0x01f4:
            int r6 = r6 + 1
            r2 = r21
            r1 = 0
            r3 = 1
            r11 = 2
            goto L_0x00dc
        L_0x01fd:
            com.google.zxing.pdf417.a.a r0 = r4.f4377a
            int r0 = r0.e
            int r1 = r4.d
            r2 = 2
            int r1 = r1 + r2
            int[] r0 = new int[]{r0, r1}
            java.lang.Class<com.google.zxing.pdf417.a.b> r1 = com.google.zxing.pdf417.a.b.class
            java.lang.Object r0 = java.lang.reflect.Array.newInstance(r1, r0)
            com.google.zxing.pdf417.a.b[][] r0 = (com.google.zxing.pdf417.a.b[][]) r0
            r1 = 0
        L_0x0212:
            int r2 = r0.length
            if (r1 >= r2) goto L_0x022a
            r2 = 0
        L_0x0216:
            r3 = r0[r1]
            int r3 = r3.length
            if (r2 >= r3) goto L_0x0227
            r3 = r0[r1]
            com.google.zxing.pdf417.a.b r5 = new com.google.zxing.pdf417.a.b
            r5.<init>()
            r3[r2] = r5
            int r2 = r2 + 1
            goto L_0x0216
        L_0x0227:
            int r1 = r1 + 1
            goto L_0x0212
        L_0x022a:
            com.google.zxing.pdf417.a.g[] r1 = r4.f4378b
            r2 = 0
            r1 = r1[r2]
            r4.a(r1)
            com.google.zxing.pdf417.a.g[] r1 = r4.f4378b
            int r3 = r4.d
            r5 = 1
            int r3 = r3 + r5
            r1 = r1[r3]
            r4.a(r1)
            r1 = 928(0x3a0, float:1.3E-42)
            r3 = 928(0x3a0, float:1.3E-42)
        L_0x0241:
            com.google.zxing.pdf417.a.g[] r6 = r4.f4378b
            r6 = r6[r2]
            if (r6 == 0) goto L_0x02a3
            com.google.zxing.pdf417.a.g[] r6 = r4.f4378b
            int r7 = r4.d
            int r7 = r7 + r5
            r6 = r6[r7]
            if (r6 != 0) goto L_0x0251
            goto L_0x02a3
        L_0x0251:
            com.google.zxing.pdf417.a.g[] r6 = r4.f4378b
            r6 = r6[r2]
            com.google.zxing.pdf417.a.d[] r2 = r6.f4380b
            com.google.zxing.pdf417.a.g[] r6 = r4.f4378b
            int r7 = r4.d
            int r7 = r7 + r5
            r5 = r6[r7]
            com.google.zxing.pdf417.a.d[] r5 = r5.f4380b
            r6 = 0
        L_0x0261:
            int r7 = r2.length
            if (r6 >= r7) goto L_0x02a3
            r7 = r2[r6]
            if (r7 == 0) goto L_0x029f
            r7 = r5[r6]
            if (r7 == 0) goto L_0x029f
            r7 = r2[r6]
            int r7 = r7.e
            r8 = r5[r6]
            int r8 = r8.e
            if (r7 != r8) goto L_0x029f
            r7 = 1
        L_0x0277:
            int r8 = r4.d
            if (r7 > r8) goto L_0x029f
            com.google.zxing.pdf417.a.g[] r8 = r4.f4378b
            r8 = r8[r7]
            com.google.zxing.pdf417.a.d[] r8 = r8.f4380b
            r8 = r8[r6]
            if (r8 == 0) goto L_0x029b
            r9 = r2[r6]
            int r9 = r9.e
            r8.e = r9
            boolean r8 = r8.a()
            if (r8 != 0) goto L_0x029b
            com.google.zxing.pdf417.a.g[] r8 = r4.f4378b
            r8 = r8[r7]
            com.google.zxing.pdf417.a.d[] r8 = r8.f4380b
            r9 = 0
            r8[r6] = r9
            goto L_0x029c
        L_0x029b:
            r9 = 0
        L_0x029c:
            int r7 = r7 + 1
            goto L_0x0277
        L_0x029f:
            r9 = 0
            int r6 = r6 + 1
            goto L_0x0261
        L_0x02a3:
            r9 = 0
            com.google.zxing.pdf417.a.g[] r2 = r4.f4378b
            r5 = 0
            r2 = r2[r5]
            if (r2 != 0) goto L_0x02ac
            goto L_0x02e9
        L_0x02ac:
            com.google.zxing.pdf417.a.g[] r2 = r4.f4378b
            r2 = r2[r5]
            com.google.zxing.pdf417.a.d[] r2 = r2.f4380b
            r5 = 0
            r6 = 0
        L_0x02b4:
            int r7 = r2.length
            if (r5 >= r7) goto L_0x02e8
            r7 = r2[r5]
            if (r7 == 0) goto L_0x02e5
            r7 = r2[r5]
            int r7 = r7.e
            r10 = r6
            r6 = 1
            r8 = 0
        L_0x02c2:
            int r11 = r4.d
            r12 = 1
            int r11 = r11 + r12
            if (r6 >= r11) goto L_0x02e4
            r11 = 2
            if (r8 >= r11) goto L_0x02e4
            com.google.zxing.pdf417.a.g[] r11 = r4.f4378b
            r11 = r11[r6]
            com.google.zxing.pdf417.a.d[] r11 = r11.f4380b
            r11 = r11[r5]
            if (r11 == 0) goto L_0x02e1
            int r8 = com.google.zxing.pdf417.a.f.a(r7, r8, r11)
            boolean r11 = r11.a()
            if (r11 != 0) goto L_0x02e1
            int r10 = r10 + 1
        L_0x02e1:
            int r6 = r6 + 1
            goto L_0x02c2
        L_0x02e4:
            r6 = r10
        L_0x02e5:
            int r5 = r5 + 1
            goto L_0x02b4
        L_0x02e8:
            r5 = r6
        L_0x02e9:
            com.google.zxing.pdf417.a.g[] r2 = r4.f4378b
            int r6 = r4.d
            r7 = 1
            int r6 = r6 + r7
            r2 = r2[r6]
            if (r2 != 0) goto L_0x02f5
            r8 = 0
            goto L_0x0331
        L_0x02f5:
            com.google.zxing.pdf417.a.g[] r2 = r4.f4378b
            int r6 = r4.d
            int r6 = r6 + r7
            r2 = r2[r6]
            com.google.zxing.pdf417.a.d[] r2 = r2.f4380b
            r6 = 0
            r8 = 0
        L_0x0300:
            int r10 = r2.length
            if (r6 >= r10) goto L_0x0331
            r10 = r2[r6]
            if (r10 == 0) goto L_0x032d
            r10 = r2[r6]
            int r10 = r10.e
            int r11 = r4.d
            int r11 = r11 + r7
            r7 = 0
        L_0x030f:
            if (r11 <= 0) goto L_0x032d
            r12 = 2
            if (r7 >= r12) goto L_0x032d
            com.google.zxing.pdf417.a.g[] r12 = r4.f4378b
            r12 = r12[r11]
            com.google.zxing.pdf417.a.d[] r12 = r12.f4380b
            r12 = r12[r6]
            if (r12 == 0) goto L_0x032a
            int r7 = com.google.zxing.pdf417.a.f.a(r10, r7, r12)
            boolean r12 = r12.a()
            if (r12 != 0) goto L_0x032a
            int r8 = r8 + 1
        L_0x032a:
            int r11 = r11 + -1
            goto L_0x030f
        L_0x032d:
            int r6 = r6 + 1
            r7 = 1
            goto L_0x0300
        L_0x0331:
            int r2 = r5 + r8
            if (r2 != 0) goto L_0x0338
            r2 = 0
            goto L_0x03fd
        L_0x0338:
            r5 = 1
        L_0x0339:
            int r6 = r4.d
            r7 = 1
            int r6 = r6 + r7
            if (r5 >= r6) goto L_0x03fd
            com.google.zxing.pdf417.a.g[] r6 = r4.f4378b
            r6 = r6[r5]
            com.google.zxing.pdf417.a.d[] r6 = r6.f4380b
            r7 = 0
        L_0x0346:
            int r8 = r6.length
            if (r7 >= r8) goto L_0x03f9
            r8 = r6[r7]
            if (r8 == 0) goto L_0x03f5
            r8 = r6[r7]
            boolean r8 = r8.a()
            if (r8 != 0) goto L_0x03f5
            r8 = r6[r7]
            com.google.zxing.pdf417.a.g[] r10 = r4.f4378b
            int r11 = r5 + -1
            r10 = r10[r11]
            com.google.zxing.pdf417.a.d[] r10 = r10.f4380b
            com.google.zxing.pdf417.a.g[] r11 = r4.f4378b
            int r12 = r5 + 1
            r11 = r11[r12]
            if (r11 == 0) goto L_0x036e
            com.google.zxing.pdf417.a.g[] r11 = r4.f4378b
            r11 = r11[r12]
            com.google.zxing.pdf417.a.d[] r11 = r11.f4380b
            goto L_0x036f
        L_0x036e:
            r11 = r10
        L_0x036f:
            r12 = 14
            com.google.zxing.pdf417.a.d[] r13 = new com.google.zxing.pdf417.a.d[r12]
            r14 = r10[r7]
            r15 = 2
            r13[r15] = r14
            r14 = 3
            r15 = r11[r7]
            r13[r14] = r15
            if (r7 <= 0) goto L_0x0391
            int r14 = r7 + -1
            r15 = r6[r14]
            r16 = 0
            r13[r16] = r15
            r15 = 4
            r16 = r10[r14]
            r13[r15] = r16
            r15 = 5
            r14 = r11[r14]
            r13[r15] = r14
        L_0x0391:
            r14 = 1
            if (r7 <= r14) goto L_0x03a8
            r14 = 8
            int r15 = r7 + -2
            r16 = r6[r15]
            r13[r14] = r16
            r14 = 10
            r16 = r10[r15]
            r13[r14] = r16
            r14 = 11
            r15 = r11[r15]
            r13[r14] = r15
        L_0x03a8:
            int r14 = r6.length
            r15 = 1
            int r14 = r14 - r15
            if (r7 >= r14) goto L_0x03bd
            int r14 = r7 + 1
            r16 = r6[r14]
            r13[r15] = r16
            r15 = 6
            r16 = r10[r14]
            r13[r15] = r16
            r15 = 7
            r14 = r11[r14]
            r13[r15] = r14
        L_0x03bd:
            int r14 = r6.length
            r15 = 2
            int r14 = r14 - r15
            if (r7 >= r14) goto L_0x03d6
            r14 = 9
            int r15 = r7 + 2
            r16 = r6[r15]
            r13[r14] = r16
            r14 = 12
            r10 = r10[r15]
            r13[r14] = r10
            r10 = 13
            r11 = r11[r15]
            r13[r10] = r11
        L_0x03d6:
            r10 = 0
        L_0x03d7:
            if (r10 >= r12) goto L_0x03f5
            r11 = r13[r10]
            if (r11 == 0) goto L_0x03ef
            boolean r14 = r11.a()
            if (r14 == 0) goto L_0x03ef
            int r14 = r11.c
            int r15 = r8.c
            if (r14 != r15) goto L_0x03ef
            int r11 = r11.e
            r8.e = r11
            r11 = 1
            goto L_0x03f0
        L_0x03ef:
            r11 = 0
        L_0x03f0:
            if (r11 != 0) goto L_0x03f5
            int r10 = r10 + 1
            goto L_0x03d7
        L_0x03f5:
            int r7 = r7 + 1
            goto L_0x0346
        L_0x03f9:
            int r5 = r5 + 1
            goto L_0x0339
        L_0x03fd:
            if (r2 <= 0) goto L_0x0407
            if (r2 < r3) goto L_0x0402
            goto L_0x0407
        L_0x0402:
            r3 = r2
            r2 = 0
            r5 = 1
            goto L_0x0241
        L_0x0407:
            com.google.zxing.pdf417.a.g[] r2 = r4.f4378b
            int r3 = r2.length
            r5 = 0
            r6 = 0
        L_0x040c:
            if (r5 >= r3) goto L_0x0434
            r7 = r2[r5]
            if (r7 == 0) goto L_0x042f
            com.google.zxing.pdf417.a.d[] r7 = r7.f4380b
            int r8 = r7.length
            r9 = 0
        L_0x0416:
            if (r9 >= r8) goto L_0x042f
            r10 = r7[r9]
            if (r10 == 0) goto L_0x042c
            int r11 = r10.e
            if (r11 < 0) goto L_0x042c
            int r12 = r0.length
            if (r11 >= r12) goto L_0x042c
            r11 = r0[r11]
            r11 = r11[r6]
            int r10 = r10.d
            r11.a(r10)
        L_0x042c:
            int r9 = r9 + 1
            goto L_0x0416
        L_0x042f:
            int r6 = r6 + 1
            int r5 = r5 + 1
            goto L_0x040c
        L_0x0434:
            r5 = 0
            r2 = r0[r5]
            r3 = 1
            r2 = r2[r3]
            int[] r3 = r2.a()
            int r5 = r4.d
            com.google.zxing.pdf417.a.a r6 = r4.f4377a
            int r6 = r6.e
            int r5 = r5 * r6
            com.google.zxing.pdf417.a.a r6 = r4.f4377a
            int r6 = r6.f4362b
            r7 = 2
            int r6 = r7 << r6
            int r5 = r5 - r6
            int r6 = r3.length
            if (r6 != 0) goto L_0x045e
            if (r5 <= 0) goto L_0x0459
            if (r5 > r1) goto L_0x0459
            r2.a(r5)
            goto L_0x0466
        L_0x0459:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x045e:
            r1 = 0
            r3 = r3[r1]
            if (r3 == r5) goto L_0x0466
            r2.a(r5)
        L_0x0466:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            com.google.zxing.pdf417.a.a r2 = r4.f4377a
            int r2 = r2.e
            int r3 = r4.d
            int r2 = r2 * r3
            int[] r2 = new int[r2]
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            r6 = 0
        L_0x0480:
            com.google.zxing.pdf417.a.a r7 = r4.f4377a
            int r7 = r7.e
            if (r6 >= r7) goto L_0x04c3
            r7 = 0
        L_0x0487:
            int r8 = r4.d
            if (r7 >= r8) goto L_0x04be
            r8 = r0[r6]
            int r9 = r7 + 1
            r8 = r8[r9]
            int[] r8 = r8.a()
            int r10 = r4.d
            int r10 = r10 * r6
            int r10 = r10 + r7
            int r7 = r8.length
            if (r7 != 0) goto L_0x04a7
            java.lang.Integer r7 = java.lang.Integer.valueOf(r10)
            r1.add(r7)
            r7 = 0
            r11 = 1
            goto L_0x04bc
        L_0x04a7:
            int r7 = r8.length
            r11 = 1
            if (r7 != r11) goto L_0x04b1
            r7 = 0
            r8 = r8[r7]
            r2[r10] = r8
            goto L_0x04bc
        L_0x04b1:
            r7 = 0
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)
            r5.add(r10)
            r3.add(r8)
        L_0x04bc:
            r7 = r9
            goto L_0x0487
        L_0x04be:
            r7 = 0
            r11 = 1
            int r6 = r6 + 1
            goto L_0x0480
        L_0x04c3:
            r7 = 0
            int r0 = r3.size()
            int[][] r0 = new int[r0][]
        L_0x04ca:
            int r6 = r0.length
            if (r7 >= r6) goto L_0x04d8
            java.lang.Object r6 = r3.get(r7)
            int[] r6 = (int[]) r6
            r0[r7] = r6
            int r7 = r7 + 1
            goto L_0x04ca
        L_0x04d8:
            com.google.zxing.pdf417.a.a r3 = r4.f4377a
            int r3 = r3.f4362b
            int[] r1 = com.google.zxing.pdf417.a.toIntArray(r1)
            int[] r4 = com.google.zxing.pdf417.a.toIntArray(r5)
            com.google.zxing.common.d r0 = a(r3, r2, r1, r4, r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.a.j.decode(com.google.zxing.common.b, com.google.zxing.m, com.google.zxing.m, com.google.zxing.m, com.google.zxing.m, int, int):com.google.zxing.common.d");
    }

    private static c a(h hVar) throws h {
        if (hVar == null) {
            return null;
        }
        int[] a2 = hVar.a();
        if (a2 == null) {
            return null;
        }
        int a3 = a(a2);
        int i = 0;
        int i2 = 0;
        for (int i3 : a2) {
            i2 += a3 - i3;
            if (i3 > 0) {
                break;
            }
        }
        d[] dVarArr = hVar.f4380b;
        int i4 = 0;
        while (i2 > 0 && dVarArr[i4] == null) {
            i2--;
            i4++;
        }
        for (int length = a2.length - 1; length >= 0; length--) {
            i += a3 - a2[length];
            if (a2[length] > 0) {
                break;
            }
        }
        int length2 = dVarArr.length - 1;
        while (i > 0 && dVarArr[length2] == null) {
            i--;
            length2--;
        }
        return hVar.f4379a.a(i2, i, hVar.c);
    }

    private static int a(int[] iArr) {
        int i = -1;
        for (int max : iArr) {
            i = Math.max(i, max);
        }
        return i;
    }

    private static h a(b bVar, c cVar, m mVar, boolean z, int i, int i2) {
        c cVar2 = cVar;
        boolean z2 = z;
        h hVar = new h(cVar2, z2);
        int i3 = 0;
        while (i3 < 2) {
            int i4 = i3 == 0 ? 1 : -1;
            int x = (int) mVar.getX();
            int y = (int) mVar.getY();
            while (y <= cVar2.i && y >= cVar2.h) {
                d a2 = a(bVar, 0, bVar.getWidth(), z, x, y, i, i2);
                if (a2 != null) {
                    hVar.a(y, a2);
                    if (z2) {
                        x = a2.f4371a;
                    } else {
                        x = a2.f4372b;
                    }
                }
                y += i4;
            }
            i3++;
        }
        return hVar;
    }

    private static d a(int i, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4) throws com.google.zxing.d, c {
        int[] iArr5 = new int[iArr3.length];
        int i2 = 100;
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                for (int i4 = 0; i4 < iArr5.length; i4++) {
                    iArr[iArr3[i4]] = iArr4[i4][iArr5[i4]];
                }
                try {
                    if (iArr.length != 0) {
                        int i5 = 1 << (i + 1);
                        if ((iArr2 == null || iArr2.length <= (i5 / 2) + 3) && i5 >= 0 && i5 <= 512) {
                            int decode = f4382a.decode(iArr, i5, iArr2);
                            if (iArr.length >= 4) {
                                int i6 = iArr[0];
                                if (i6 <= iArr.length) {
                                    if (i6 == 0) {
                                        if (i5 < iArr.length) {
                                            iArr[0] = iArr.length - i5;
                                        } else {
                                            throw com.google.zxing.d.getFormatInstance();
                                        }
                                    }
                                    d a2 = e.a(iArr, String.valueOf(i));
                                    a2.setErrorsCorrected(Integer.valueOf(decode));
                                    a2.setErasures(Integer.valueOf(iArr2.length));
                                    return a2;
                                }
                                throw com.google.zxing.d.getFormatInstance();
                            }
                            throw com.google.zxing.d.getFormatInstance();
                        }
                        throw c.getChecksumInstance();
                    }
                    throw com.google.zxing.d.getFormatInstance();
                } catch (c unused) {
                    if (iArr5.length != 0) {
                        int i7 = 0;
                        while (true) {
                            if (i7 >= iArr5.length) {
                                break;
                            } else if (iArr5[i7] < iArr4[i7].length - 1) {
                                iArr5[i7] = iArr5[i7] + 1;
                                break;
                            } else {
                                iArr5[i7] = 0;
                                if (i7 != iArr5.length - 1) {
                                    i7++;
                                } else {
                                    throw c.getChecksumInstance();
                                }
                            }
                        }
                        i2 = i3;
                    } else {
                        throw c.getChecksumInstance();
                    }
                }
            } else {
                throw c.getChecksumInstance();
            }
        }
    }

    private static d a(b bVar, int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        int i7;
        int b2 = b(bVar, i, i2, z, i3, i4);
        int[] a2 = a(bVar, i, i2, z, b2, i4);
        if (a2 == null) {
            return null;
        }
        int sum = com.google.zxing.common.a.a.sum(a2);
        if (z) {
            int i8 = b2;
            b2 += sum;
            i7 = i8;
        } else {
            for (int i9 = 0; i9 < a2.length / 2; i9++) {
                int i10 = a2[i9];
                a2[i9] = a2[(a2.length - 1) - i9];
                a2[(a2.length - 1) - i9] = i10;
            }
            i7 = b2 - sum;
        }
        if (!a(sum, i5, i6)) {
            return null;
        }
        int a3 = i.a(a2);
        int codeword = com.google.zxing.pdf417.a.getCodeword(a3);
        if (codeword == -1) {
            return null;
        }
        return new d(i7, b2, b(a3), codeword);
    }

    private static int[] a(b bVar, int i, int i2, boolean z, int i3, int i4) {
        int[] iArr = new int[8];
        int i5 = z ? 1 : -1;
        int i6 = 0;
        boolean z2 = z;
        while (true) {
            if (!z) {
                if (i3 < i) {
                    break;
                }
            } else if (i3 >= i2) {
                break;
            }
            if (i6 >= 8) {
                break;
            } else if (bVar.get(i3, i4) == z2) {
                iArr[i6] = iArr[i6] + 1;
                i3 += i5;
            } else {
                i6++;
                z2 = !z2;
            }
        }
        if (i6 != 8) {
            if (z) {
                i = i2;
            }
            if (!(i3 == i && i6 == 7)) {
                return null;
            }
        }
        return iArr;
    }

    private static int b(b bVar, int i, int i2, boolean z, int i3, int i4) {
        int i5 = z ? -1 : 1;
        boolean z2 = z;
        int i6 = i3;
        for (int i7 = 0; i7 < 2; i7++) {
            while (true) {
                if (!z2) {
                    if (i6 >= i2) {
                        continue;
                        break;
                    }
                } else if (i6 < i) {
                    continue;
                    break;
                }
                if (z2 != bVar.get(i6, i4)) {
                    continue;
                    break;
                } else if (Math.abs(i3 - i6) > 2) {
                    return i3;
                } else {
                    i6 += i5;
                }
            }
            i5 = -i5;
            z2 = !z2;
        }
        return i6;
    }

    private static int[] a(int i) {
        int[] iArr = new int[8];
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i & 1;
            if (i4 != i2) {
                i3--;
                if (i3 < 0) {
                    return iArr;
                }
                i2 = i4;
            }
            iArr[i3] = iArr[i3] + 1;
            i >>= 1;
        }
    }

    private static int b(int i) {
        return b(a(i));
    }

    private static int b(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x006f, code lost:
        r9 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0074, code lost:
        throw r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String toString(com.google.zxing.pdf417.a.b[][] r9) {
        /*
            java.util.Formatter r0 = new java.util.Formatter
            r0.<init>()
            r1 = 0
            r2 = 0
        L_0x0007:
            int r3 = r9.length     // Catch:{ all -> 0x006d }
            if (r2 >= r3) goto L_0x0065
            java.lang.String r3 = "Row %2d: "
            r4 = 1
            java.lang.Object[] r5 = new java.lang.Object[r4]     // Catch:{ all -> 0x006d }
            java.lang.Integer r6 = java.lang.Integer.valueOf(r2)     // Catch:{ all -> 0x006d }
            r5[r1] = r6     // Catch:{ all -> 0x006d }
            r0.format(r3, r5)     // Catch:{ all -> 0x006d }
            r3 = 0
        L_0x0019:
            r5 = r9[r2]     // Catch:{ all -> 0x006d }
            int r5 = r5.length     // Catch:{ all -> 0x006d }
            if (r3 >= r5) goto L_0x005b
            r5 = r9[r2]     // Catch:{ all -> 0x006d }
            r5 = r5[r3]     // Catch:{ all -> 0x006d }
            int[] r6 = r5.a()     // Catch:{ all -> 0x006d }
            int r6 = r6.length     // Catch:{ all -> 0x006d }
            if (r6 != 0) goto L_0x0030
            java.lang.String r5 = "        "
            r6 = 0
            r0.format(r5, r6)     // Catch:{ all -> 0x006d }
            goto L_0x0058
        L_0x0030:
            java.lang.String r6 = "%4d(%2d)"
            r7 = 2
            java.lang.Object[] r7 = new java.lang.Object[r7]     // Catch:{ all -> 0x006d }
            int[] r8 = r5.a()     // Catch:{ all -> 0x006d }
            r8 = r8[r1]     // Catch:{ all -> 0x006d }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x006d }
            r7[r1] = r8     // Catch:{ all -> 0x006d }
            int[] r8 = r5.a()     // Catch:{ all -> 0x006d }
            r8 = r8[r1]     // Catch:{ all -> 0x006d }
            java.util.Map<java.lang.Integer, java.lang.Integer> r5 = r5.f4368a     // Catch:{ all -> 0x006d }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x006d }
            java.lang.Object r5 = r5.get(r8)     // Catch:{ all -> 0x006d }
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch:{ all -> 0x006d }
            r7[r4] = r5     // Catch:{ all -> 0x006d }
            r0.format(r6, r7)     // Catch:{ all -> 0x006d }
        L_0x0058:
            int r3 = r3 + 1
            goto L_0x0019
        L_0x005b:
            java.lang.String r3 = "%n"
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch:{ all -> 0x006d }
            r0.format(r3, r4)     // Catch:{ all -> 0x006d }
            int r2 = r2 + 1
            goto L_0x0007
        L_0x0065:
            java.lang.String r9 = r0.toString()     // Catch:{ all -> 0x006d }
            r0.close()
            return r9
        L_0x006d:
            r9 = move-exception
            throw r9     // Catch:{ all -> 0x006f }
        L_0x006f:
            r9 = move-exception
            r0.close()     // Catch:{ all -> 0x0073 }
        L_0x0073:
            goto L_0x0075
        L_0x0074:
            throw r9
        L_0x0075:
            goto L_0x0074
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.a.j.toString(com.google.zxing.pdf417.a.b[][]):java.lang.String");
    }

    private static boolean a(f fVar, int i) {
        return i >= 0 && i <= fVar.d + 1;
    }
}
