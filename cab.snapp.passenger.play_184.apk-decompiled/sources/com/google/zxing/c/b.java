package com.google.zxing.c;

import com.google.zxing.common.a;
import com.google.zxing.h;

public final class b extends k {

    /* renamed from: a  reason: collision with root package name */
    static final int[][] f4275a = {new int[]{2, 1, 2, 2, 2, 2}, new int[]{2, 2, 2, 1, 2, 2}, new int[]{2, 2, 2, 2, 2, 1}, new int[]{1, 2, 1, 2, 2, 3}, new int[]{1, 2, 1, 3, 2, 2}, new int[]{1, 3, 1, 2, 2, 2}, new int[]{1, 2, 2, 2, 1, 3}, new int[]{1, 2, 2, 3, 1, 2}, new int[]{1, 3, 2, 2, 1, 2}, new int[]{2, 2, 1, 2, 1, 3}, new int[]{2, 2, 1, 3, 1, 2}, new int[]{2, 3, 1, 2, 1, 2}, new int[]{1, 1, 2, 2, 3, 2}, new int[]{1, 2, 2, 1, 3, 2}, new int[]{1, 2, 2, 2, 3, 1}, new int[]{1, 1, 3, 2, 2, 2}, new int[]{1, 2, 3, 1, 2, 2}, new int[]{1, 2, 3, 2, 2, 1}, new int[]{2, 2, 3, 2, 1, 1}, new int[]{2, 2, 1, 1, 3, 2}, new int[]{2, 2, 1, 2, 3, 1}, new int[]{2, 1, 3, 2, 1, 2}, new int[]{2, 2, 3, 1, 1, 2}, new int[]{3, 1, 2, 1, 3, 1}, new int[]{3, 1, 1, 2, 2, 2}, new int[]{3, 2, 1, 1, 2, 2}, new int[]{3, 2, 1, 2, 2, 1}, new int[]{3, 1, 2, 2, 1, 2}, new int[]{3, 2, 2, 1, 1, 2}, new int[]{3, 2, 2, 2, 1, 1}, new int[]{2, 1, 2, 1, 2, 3}, new int[]{2, 1, 2, 3, 2, 1}, new int[]{2, 3, 2, 1, 2, 1}, new int[]{1, 1, 1, 3, 2, 3}, new int[]{1, 3, 1, 1, 2, 3}, new int[]{1, 3, 1, 3, 2, 1}, new int[]{1, 1, 2, 3, 1, 3}, new int[]{1, 3, 2, 1, 1, 3}, new int[]{1, 3, 2, 3, 1, 1}, new int[]{2, 1, 1, 3, 1, 3}, new int[]{2, 3, 1, 1, 1, 3}, new int[]{2, 3, 1, 3, 1, 1}, new int[]{1, 1, 2, 1, 3, 3}, new int[]{1, 1, 2, 3, 3, 1}, new int[]{1, 3, 2, 1, 3, 1}, new int[]{1, 1, 3, 1, 2, 3}, new int[]{1, 1, 3, 3, 2, 1}, new int[]{1, 3, 3, 1, 2, 1}, new int[]{3, 1, 3, 1, 2, 1}, new int[]{2, 1, 1, 3, 3, 1}, new int[]{2, 3, 1, 1, 3, 1}, new int[]{2, 1, 3, 1, 1, 3}, new int[]{2, 1, 3, 3, 1, 1}, new int[]{2, 1, 3, 1, 3, 1}, new int[]{3, 1, 1, 1, 2, 3}, new int[]{3, 1, 1, 3, 2, 1}, new int[]{3, 3, 1, 1, 2, 1}, new int[]{3, 1, 2, 1, 1, 3}, new int[]{3, 1, 2, 3, 1, 1}, new int[]{3, 3, 2, 1, 1, 1}, new int[]{3, 1, 4, 1, 1, 1}, new int[]{2, 2, 1, 4, 1, 1}, new int[]{4, 3, 1, 1, 1, 1}, new int[]{1, 1, 1, 2, 2, 4}, new int[]{1, 1, 1, 4, 2, 2}, new int[]{1, 2, 1, 1, 2, 4}, new int[]{1, 2, 1, 4, 2, 1}, new int[]{1, 4, 1, 1, 2, 2}, new int[]{1, 4, 1, 2, 2, 1}, new int[]{1, 1, 2, 2, 1, 4}, new int[]{1, 1, 2, 4, 1, 2}, new int[]{1, 2, 2, 1, 1, 4}, new int[]{1, 2, 2, 4, 1, 1}, new int[]{1, 4, 2, 1, 1, 2}, new int[]{1, 4, 2, 2, 1, 1}, new int[]{2, 4, 1, 2, 1, 1}, new int[]{2, 2, 1, 1, 1, 4}, new int[]{4, 1, 3, 1, 1, 1}, new int[]{2, 4, 1, 1, 1, 2}, new int[]{1, 3, 4, 1, 1, 1}, new int[]{1, 1, 1, 2, 4, 2}, new int[]{1, 2, 1, 1, 4, 2}, new int[]{1, 2, 1, 2, 4, 1}, new int[]{1, 1, 4, 2, 1, 2}, new int[]{1, 2, 4, 1, 1, 2}, new int[]{1, 2, 4, 2, 1, 1}, new int[]{4, 1, 1, 2, 1, 2}, new int[]{4, 2, 1, 1, 1, 2}, new int[]{4, 2, 1, 2, 1, 1}, new int[]{2, 1, 2, 1, 4, 1}, new int[]{2, 1, 4, 1, 2, 1}, new int[]{4, 1, 2, 1, 2, 1}, new int[]{1, 1, 1, 1, 4, 3}, new int[]{1, 1, 1, 3, 4, 1}, new int[]{1, 3, 1, 1, 4, 1}, new int[]{1, 1, 4, 1, 1, 3}, new int[]{1, 1, 4, 3, 1, 1}, new int[]{4, 1, 1, 1, 1, 3}, new int[]{4, 1, 1, 3, 1, 1}, new int[]{1, 1, 3, 1, 4, 1}, new int[]{1, 1, 4, 1, 3, 1}, new int[]{3, 1, 1, 1, 4, 1}, new int[]{4, 1, 1, 1, 3, 1}, new int[]{2, 1, 1, 4, 1, 2}, new int[]{2, 1, 1, 2, 1, 4}, new int[]{2, 1, 1, 2, 3, 2}, new int[]{2, 3, 3, 1, 1, 1, 2}};

    private static int a(a aVar, int[] iArr, int i) throws h {
        a(aVar, i, iArr);
        float f = 0.25f;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            int[][] iArr2 = f4275a;
            if (i3 >= iArr2.length) {
                break;
            }
            float patternMatchVariance = patternMatchVariance(iArr, iArr2[i3], 0.7f);
            if (patternMatchVariance < f) {
                i2 = i3;
                f = patternMatchVariance;
            }
            i3++;
        }
        if (i2 >= 0) {
            return i2;
        }
        throw h.getNotFoundInstance();
    }

    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARNING: type inference failed for: r3v2 */
    /* JADX WARNING: Code restructure failed: missing block: B:117:0x01d4, code lost:
        r10 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x01d5, code lost:
        if (r15 == false) goto L_0x01e1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x01d9, code lost:
        if (r3 != 'e') goto L_0x01de;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:0x01db, code lost:
        r3 = 'd';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:0x01de, code lost:
        r3 = 'e';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x01e3, code lost:
        r13 = r8;
        r15 = r10;
        r8 = r21;
        r6 = 6;
        r23 = r16;
        r16 = r9;
        r9 = r23;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x0135, code lost:
        if (r11 != false) goto L_0x0189;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x013f, code lost:
        r5 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x0156, code lost:
        r10 = false;
        r11 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x017f, code lost:
        r10 = false;
        r11 = false;
        r12 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x0187, code lost:
        if (r11 != false) goto L_0x0189;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x0189, code lost:
        r10 = false;
        r11 = false;
        r12 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x018f, code lost:
        r10 = false;
        r11 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x0194, code lost:
        r3 = 'c';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x0199, code lost:
        r10 = true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.zxing.l decodeRow(int r25, com.google.zxing.common.a r26, java.util.Map<com.google.zxing.DecodeHintType, ?> r27) throws com.google.zxing.h, com.google.zxing.d, com.google.zxing.c {
        /*
            r24 = this;
            r0 = r26
            r1 = r27
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L_0x0012
            com.google.zxing.DecodeHintType r4 = com.google.zxing.DecodeHintType.ASSUME_GS1
            boolean r1 = r1.containsKey(r4)
            if (r1 == 0) goto L_0x0012
            r1 = 1
            goto L_0x0013
        L_0x0012:
            r1 = 0
        L_0x0013:
            int r4 = r26.getSize()
            int r5 = r0.getNextSet(r3)
            r6 = 6
            int[] r7 = new int[r6]
            r10 = r5
            r8 = 0
            r9 = 0
        L_0x0021:
            if (r5 >= r4) goto L_0x02b0
            boolean r11 = r0.get(r5)
            if (r11 == r8) goto L_0x0034
            r11 = r7[r9]
            int r11 = r11 + r2
            r7[r9] = r11
            r11 = r25
            r2 = 0
            r3 = 1
            goto L_0x02a9
        L_0x0034:
            r11 = 5
            if (r9 != r11) goto L_0x029e
            r11 = 1048576000(0x3e800000, float:0.25)
            r13 = -1
            r11 = 103(0x67, float:1.44E-43)
            r14 = 1048576000(0x3e800000, float:0.25)
        L_0x003e:
            r15 = 105(0x69, float:1.47E-43)
            if (r11 > r15) goto L_0x0056
            int[][] r15 = f4275a
            r15 = r15[r11]
            r12 = 1060320051(0x3f333333, float:0.7)
            float r12 = patternMatchVariance(r7, r15, r12)
            int r15 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r15 >= 0) goto L_0x0053
            r13 = r11
            r14 = r12
        L_0x0053:
            int r11 = r11 + 1
            goto L_0x003e
        L_0x0056:
            r11 = 2
            if (r13 < 0) goto L_0x0287
            int r12 = r5 - r10
            int r12 = r12 / r11
            int r12 = r10 - r12
            int r12 = java.lang.Math.max(r3, r12)
            boolean r12 = r0.isRange(r12, r10, r3)
            if (r12 == 0) goto L_0x0287
            r4 = 3
            int[] r4 = new int[r4]
            r4[r3] = r10
            r4[r2] = r5
            r4[r11] = r13
            r5 = r4[r11]
            java.util.ArrayList r7 = new java.util.ArrayList
            r8 = 20
            r7.<init>(r8)
            byte r9 = (byte) r5
            java.lang.Byte r9 = java.lang.Byte.valueOf(r9)
            r7.add(r9)
            switch(r5) {
                case 103: goto L_0x0090;
                case 104: goto L_0x008d;
                case 105: goto L_0x008a;
                default: goto L_0x0085;
            }
        L_0x0085:
            com.google.zxing.d r0 = com.google.zxing.d.getFormatInstance()
            throw r0
        L_0x008a:
            r13 = 99
            goto L_0x0092
        L_0x008d:
            r13 = 100
            goto L_0x0092
        L_0x0090:
            r13 = 101(0x65, float:1.42E-43)
        L_0x0092:
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>(r8)
            r8 = r4[r3]
            r15 = r4[r2]
            int[] r2 = new int[r6]
            r17 = r5
            r3 = r13
            r5 = 0
            r9 = 0
            r11 = 0
            r12 = 0
            r16 = 0
            r18 = 0
            r19 = 1
            r13 = r8
            r8 = r15
            r15 = 0
        L_0x00ad:
            if (r5 != 0) goto L_0x01f0
            int r9 = a(r0, r2, r8)
            byte r13 = (byte) r9
            java.lang.Byte r13 = java.lang.Byte.valueOf(r13)
            r7.add(r13)
            r13 = 106(0x6a, float:1.49E-43)
            if (r9 == r13) goto L_0x00c1
            r19 = 1
        L_0x00c1:
            if (r9 == r13) goto L_0x00c9
            int r18 = r18 + 1
            int r20 = r18 * r9
            int r17 = r17 + r20
        L_0x00c9:
            r21 = r8
            r10 = 0
        L_0x00cc:
            if (r10 >= r6) goto L_0x00d5
            r22 = r2[r10]
            int r21 = r21 + r22
            int r10 = r10 + 1
            goto L_0x00cc
        L_0x00d5:
            switch(r9) {
                case 103: goto L_0x00df;
                case 104: goto L_0x00df;
                case 105: goto L_0x00df;
                default: goto L_0x00d8;
            }
        L_0x00d8:
            java.lang.String r10 = "]C1"
            switch(r3) {
                case 99: goto L_0x01a0;
                case 100: goto L_0x0141;
                case 101: goto L_0x00e4;
                default: goto L_0x00dd;
            }
        L_0x00dd:
            goto L_0x019d
        L_0x00df:
            com.google.zxing.d r0 = com.google.zxing.d.getFormatInstance()
            throw r0
        L_0x00e4:
            r6 = 64
            if (r9 >= r6) goto L_0x00fb
            if (r11 != r12) goto L_0x00f2
            int r6 = r9 + 32
            char r6 = (char) r6
            r14.append(r6)
            goto L_0x0156
        L_0x00f2:
            int r6 = r9 + 32
            int r6 = r6 + 128
            char r6 = (char) r6
            r14.append(r6)
            goto L_0x0156
        L_0x00fb:
            r6 = 96
            if (r9 >= r6) goto L_0x010f
            if (r11 != r12) goto L_0x0108
            int r6 = r9 + -64
            char r6 = (char) r6
            r14.append(r6)
            goto L_0x0156
        L_0x0108:
            int r6 = r9 + 64
            char r6 = (char) r6
            r14.append(r6)
            goto L_0x0156
        L_0x010f:
            if (r9 == r13) goto L_0x0113
            r19 = 0
        L_0x0113:
            if (r9 == r13) goto L_0x013f
            switch(r9) {
                case 96: goto L_0x019d;
                case 97: goto L_0x019d;
                case 98: goto L_0x013c;
                case 99: goto L_0x0194;
                case 100: goto L_0x0138;
                case 101: goto L_0x012e;
                case 102: goto L_0x011a;
                default: goto L_0x0118;
            }
        L_0x0118:
            goto L_0x019d
        L_0x011a:
            if (r1 == 0) goto L_0x019d
            int r6 = r14.length()
            if (r6 != 0) goto L_0x0127
            r14.append(r10)
            goto L_0x019d
        L_0x0127:
            r6 = 29
            r14.append(r6)
            goto L_0x019d
        L_0x012e:
            if (r12 != 0) goto L_0x0133
            if (r11 == 0) goto L_0x0133
            goto L_0x017f
        L_0x0133:
            if (r12 == 0) goto L_0x018f
            if (r11 == 0) goto L_0x018f
            goto L_0x0189
        L_0x0138:
            r3 = 100
            goto L_0x019d
        L_0x013c:
            r3 = 100
            goto L_0x0199
        L_0x013f:
            r5 = 1
            goto L_0x019d
        L_0x0141:
            r6 = 96
            if (r9 >= r6) goto L_0x015c
            if (r11 != r12) goto L_0x014e
            int r6 = r9 + 32
            char r6 = (char) r6
            r14.append(r6)
            goto L_0x0156
        L_0x014e:
            int r6 = r9 + 32
            int r6 = r6 + 128
            char r6 = (char) r6
            r14.append(r6)
        L_0x0156:
            r6 = 100
            r10 = 0
            r11 = 0
            goto L_0x01d5
        L_0x015c:
            if (r9 == r13) goto L_0x0160
            r19 = 0
        L_0x0160:
            if (r9 == r13) goto L_0x013f
            switch(r9) {
                case 96: goto L_0x019d;
                case 97: goto L_0x019d;
                case 98: goto L_0x0197;
                case 99: goto L_0x0194;
                case 100: goto L_0x017b;
                case 101: goto L_0x0178;
                case 102: goto L_0x0166;
                default: goto L_0x0165;
            }
        L_0x0165:
            goto L_0x019d
        L_0x0166:
            if (r1 == 0) goto L_0x019d
            int r6 = r14.length()
            if (r6 != 0) goto L_0x0172
            r14.append(r10)
            goto L_0x019d
        L_0x0172:
            r6 = 29
            r14.append(r6)
            goto L_0x019d
        L_0x0178:
            r3 = 101(0x65, float:1.42E-43)
            goto L_0x019d
        L_0x017b:
            if (r12 != 0) goto L_0x0185
            if (r11 == 0) goto L_0x0185
        L_0x017f:
            r6 = 100
            r10 = 0
            r11 = 0
            r12 = 1
            goto L_0x01d5
        L_0x0185:
            if (r12 == 0) goto L_0x018f
            if (r11 == 0) goto L_0x018f
        L_0x0189:
            r6 = 100
            r10 = 0
            r11 = 0
            r12 = 0
            goto L_0x01d5
        L_0x018f:
            r6 = 100
            r10 = 0
            r11 = 1
            goto L_0x01d5
        L_0x0194:
            r3 = 99
            goto L_0x019d
        L_0x0197:
            r3 = 101(0x65, float:1.42E-43)
        L_0x0199:
            r6 = 100
            r10 = 1
            goto L_0x01d5
        L_0x019d:
            r6 = 100
            goto L_0x01d4
        L_0x01a0:
            r6 = 100
            if (r9 >= r6) goto L_0x01b1
            r10 = 10
            if (r9 >= r10) goto L_0x01ad
            r10 = 48
            r14.append(r10)
        L_0x01ad:
            r14.append(r9)
            goto L_0x01d4
        L_0x01b1:
            if (r9 == r13) goto L_0x01b5
            r19 = 0
        L_0x01b5:
            if (r9 == r13) goto L_0x01d3
            switch(r9) {
                case 100: goto L_0x01d0;
                case 101: goto L_0x01cd;
                case 102: goto L_0x01bb;
                default: goto L_0x01ba;
            }
        L_0x01ba:
            goto L_0x01d4
        L_0x01bb:
            if (r1 == 0) goto L_0x01d4
            int r13 = r14.length()
            if (r13 != 0) goto L_0x01c7
            r14.append(r10)
            goto L_0x01d4
        L_0x01c7:
            r10 = 29
            r14.append(r10)
            goto L_0x01d4
        L_0x01cd:
            r3 = 101(0x65, float:1.42E-43)
            goto L_0x01d4
        L_0x01d0:
            r3 = 100
            goto L_0x01d4
        L_0x01d3:
            r5 = 1
        L_0x01d4:
            r10 = 0
        L_0x01d5:
            if (r15 == 0) goto L_0x01e1
            r15 = 101(0x65, float:1.42E-43)
            if (r3 != r15) goto L_0x01de
            r3 = 100
            goto L_0x01e3
        L_0x01de:
            r3 = 101(0x65, float:1.42E-43)
            goto L_0x01e3
        L_0x01e1:
            r15 = 101(0x65, float:1.42E-43)
        L_0x01e3:
            r13 = r8
            r15 = r10
            r8 = r21
            r6 = 6
            r23 = r16
            r16 = r9
            r9 = r23
            goto L_0x00ad
        L_0x01f0:
            int r1 = r8 - r13
            int r2 = r0.getNextUnset(r8)
            int r5 = r26.getSize()
            int r6 = r2 - r13
            r8 = 2
            int r6 = r6 / r8
            int r6 = r6 + r2
            int r5 = java.lang.Math.min(r5, r6)
            r6 = 0
            boolean r0 = r0.isRange(r2, r5, r6)
            if (r0 == 0) goto L_0x0282
            int r18 = r18 * r9
            int r17 = r17 - r18
            r0 = 103(0x67, float:1.44E-43)
            int r0 = r17 % 103
            if (r0 != r9) goto L_0x027d
            int r0 = r14.length()
            if (r0 == 0) goto L_0x0278
            if (r0 <= 0) goto L_0x022d
            if (r19 == 0) goto L_0x022d
            r2 = 99
            if (r3 != r2) goto L_0x0228
            int r2 = r0 + -2
            r14.delete(r2, r0)
            goto L_0x022d
        L_0x0228:
            int r2 = r0 + -1
            r14.delete(r2, r0)
        L_0x022d:
            r0 = 1
            r2 = r4[r0]
            r0 = 0
            r3 = r4[r0]
            int r2 = r2 + r3
            float r0 = (float) r2
            r2 = 1073741824(0x40000000, float:2.0)
            float r0 = r0 / r2
            float r2 = (float) r13
            float r1 = (float) r1
            r3 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 / r3
            float r2 = r2 + r1
            int r1 = r7.size()
            byte[] r3 = new byte[r1]
            r4 = 0
        L_0x0245:
            if (r4 >= r1) goto L_0x0256
            java.lang.Object r5 = r7.get(r4)
            java.lang.Byte r5 = (java.lang.Byte) r5
            byte r5 = r5.byteValue()
            r3[r4] = r5
            int r4 = r4 + 1
            goto L_0x0245
        L_0x0256:
            com.google.zxing.l r1 = new com.google.zxing.l
            java.lang.String r4 = r14.toString()
            r5 = 2
            com.google.zxing.m[] r5 = new com.google.zxing.m[r5]
            com.google.zxing.m r6 = new com.google.zxing.m
            r11 = r25
            float r7 = (float) r11
            r6.<init>(r0, r7)
            r0 = 0
            r5[r0] = r6
            com.google.zxing.m r0 = new com.google.zxing.m
            r0.<init>(r2, r7)
            r2 = 1
            r5[r2] = r0
            com.google.zxing.BarcodeFormat r0 = com.google.zxing.BarcodeFormat.CODE_128
            r1.<init>(r4, r3, r5, r0)
            return r1
        L_0x0278:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x027d:
            com.google.zxing.c r0 = com.google.zxing.c.getChecksumInstance()
            throw r0
        L_0x0282:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x0287:
            r11 = r25
            r2 = 0
            r3 = r7[r2]
            r6 = 1
            r12 = r7[r6]
            int r3 = r3 + r12
            int r10 = r10 + r3
            int r3 = r9 + -1
            r6 = 2
            java.lang.System.arraycopy(r7, r6, r7, r2, r3)
            r7[r3] = r2
            r7[r9] = r2
            int r9 = r9 + -1
            goto L_0x02a3
        L_0x029e:
            r11 = r25
            r2 = 0
            int r9 = r9 + 1
        L_0x02a3:
            r3 = 1
            r7[r9] = r3
            r6 = r8 ^ 1
            r8 = r6
        L_0x02a9:
            int r5 = r5 + 1
            r2 = 1
            r3 = 0
            r6 = 6
            goto L_0x0021
        L_0x02b0:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            goto L_0x02b6
        L_0x02b5:
            throw r0
        L_0x02b6:
            goto L_0x02b5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.c.b.decodeRow(int, com.google.zxing.common.a, java.util.Map):com.google.zxing.l");
    }
}
