package com.google.zxing.c;

import com.google.zxing.c;
import okhttp3.internal.http.StatusLine;

public final class d extends k {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f4278a;

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f4279b = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();
    private static final int c;
    private final StringBuilder d = new StringBuilder(20);
    private final int[] e = new int[6];

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, 424, 420, 418, 404, 402, 394, 360, 356, 354, StatusLine.HTTP_PERM_REDIRECT, 282, 344, 332, 326, 300, 278, 436, 434, 428, 422, 406, 410, 364, 358, 310, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
        f4278a = iArr;
        c = iArr[47];
    }

    private static int a(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int length = iArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int round = Math.round((((float) iArr[i4]) * 9.0f) / ((float) i));
            if (round <= 0 || round > 4) {
                return -1;
            }
            if ((i4 & 1) == 0) {
                int i5 = i3;
                for (int i6 = 0; i6 < round; i6++) {
                    i5 = (i5 << 1) | 1;
                }
                i3 = i5;
            } else {
                i3 <<= round;
            }
        }
        return i3;
    }

    private static void a(CharSequence charSequence, int i, int i2) throws c {
        int i3 = 0;
        int i4 = 1;
        for (int i5 = i - 1; i5 >= 0; i5--) {
            i3 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(charSequence.charAt(i5)) * i4;
            i4++;
            if (i4 > i2) {
                i4 = 1;
            }
        }
        if (charSequence.charAt(i) != f4279b[i3 % 47]) {
            throw c.getChecksumInstance();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0064, code lost:
        r8 = f4279b[r9];
        r7.append(r8);
        r9 = r6.length;
        r12 = r4;
        r10 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x006e, code lost:
        if (r10 >= r9) goto L_0x0076;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0070, code lost:
        r12 = r12 + r6[r10];
        r10 = r10 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0076, code lost:
        r9 = r1.getNextSet(r12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x007c, code lost:
        if (r8 != '*') goto L_0x018c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x007e, code lost:
        r7.deleteCharAt(r7.length() - 1);
        r8 = r6.length;
        r10 = 0;
        r12 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0089, code lost:
        if (r10 >= r8) goto L_0x0091;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x008b, code lost:
        r12 = r12 + r6[r10];
        r10 = r10 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0091, code lost:
        if (r9 == r5) goto L_0x0187;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0097, code lost:
        if (r1.get(r9) == false) goto L_0x0187;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x009d, code lost:
        if (r7.length() < 2) goto L_0x0182;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x009f, code lost:
        a(r7, r7.length() - 2, 20);
        a(r7, r1 - 1, 15);
        r7.setLength(r7.length() - 2);
        r1 = r7.length();
        r5 = new java.lang.StringBuilder(r1);
        r6 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00c2, code lost:
        if (r6 >= r1) goto L_0x0155;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00c4, code lost:
        r8 = r7.charAt(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00ca, code lost:
        if (r8 < 'a') goto L_0x014f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00ce, code lost:
        if (r8 > 'd') goto L_0x014f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00d2, code lost:
        if (r6 >= (r1 - 1)) goto L_0x014a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00d4, code lost:
        r6 = r6 + 1;
        r9 = r7.charAt(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00e0, code lost:
        switch(r8) {
            case 97: goto L_0x0139;
            case 98: goto L_0x0103;
            case 99: goto L_0x00f2;
            case 100: goto L_0x00e6;
            default: goto L_0x00e3;
        };
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00e3, code lost:
        r8 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00e6, code lost:
        if (r9 < 'A') goto L_0x00ed;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00e8, code lost:
        if (r9 > 'Z') goto L_0x00ed;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00ea, code lost:
        r9 = r9 + ' ';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00f1, code lost:
        throw com.google.zxing.d.getFormatInstance();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00f2, code lost:
        if (r9 < 'A') goto L_0x00f9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00f4, code lost:
        if (r9 > 'O') goto L_0x00f9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00f6, code lost:
        r9 = r9 - ' ';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00f9, code lost:
        if (r9 != 'Z') goto L_0x00fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00fb, code lost:
        r8 = ':';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0102, code lost:
        throw com.google.zxing.d.getFormatInstance();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0103, code lost:
        if (r9 < 'A') goto L_0x010c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0107, code lost:
        if (r9 > 'E') goto L_0x010c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0109, code lost:
        r9 = r9 - '&';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x010e, code lost:
        if (r9 < 'F') goto L_0x0117;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0112, code lost:
        if (r9 > 'J') goto L_0x0117;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0114, code lost:
        r9 = r9 - 11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0119, code lost:
        if (r9 < 'K') goto L_0x0120;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x011b, code lost:
        if (r9 > 'O') goto L_0x0120;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x011d, code lost:
        r9 = r9 + 16;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0122, code lost:
        if (r9 < 'P') goto L_0x012b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0126, code lost:
        if (r9 > 'S') goto L_0x012b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0128, code lost:
        r9 = r9 + '+';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x012d, code lost:
        if (r9 < 'T') goto L_0x0134;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x012f, code lost:
        if (r9 > 'Z') goto L_0x0134;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x0131, code lost:
        r8 = 127;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x0138, code lost:
        throw com.google.zxing.d.getFormatInstance();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x0139, code lost:
        if (r9 < 'A') goto L_0x0141;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x013b, code lost:
        if (r9 > 'Z') goto L_0x0141;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x013d, code lost:
        r9 = r9 - '@';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x013f, code lost:
        r8 = (char) r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0145, code lost:
        throw com.google.zxing.d.getFormatInstance();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0146, code lost:
        r5.append(r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x014e, code lost:
        throw com.google.zxing.d.getFormatInstance();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x014f, code lost:
        r5.append(r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0152, code lost:
        r6 = r6 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x0155, code lost:
        r9 = (float) r17;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x0181, code lost:
        return new com.google.zxing.l(r5.toString(), null, new com.google.zxing.m[]{new com.google.zxing.m(((float) (r2[1] + r2[0])) / 2.0f, r9), new com.google.zxing.m(((float) r4) + (((float) r12) / 2.0f), r9)}, com.google.zxing.BarcodeFormat.CODE_93);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0186, code lost:
        throw com.google.zxing.h.getNotFoundInstance();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x018b, code lost:
        throw com.google.zxing.h.getNotFoundInstance();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.zxing.l decodeRow(int r17, com.google.zxing.common.a r18, java.util.Map<com.google.zxing.DecodeHintType, ?> r19) throws com.google.zxing.h, com.google.zxing.c, com.google.zxing.d {
        /*
            r16 = this;
            r0 = r16
            r1 = r18
            int r2 = r18.getSize()
            r3 = 0
            int r4 = r1.getNextSet(r3)
            int[] r5 = r0.e
            java.util.Arrays.fill(r5, r3)
            int[] r5 = r0.e
            int r6 = r5.length
            r9 = r4
            r7 = 0
            r8 = 0
        L_0x0018:
            if (r4 >= r2) goto L_0x01c1
            boolean r10 = r1.get(r4)
            r11 = 1
            if (r10 == r7) goto L_0x002a
            r10 = r5[r8]
            int r10 = r10 + r11
            r5[r8] = r10
            r10 = r17
            goto L_0x01bd
        L_0x002a:
            int r10 = r6 + -1
            if (r8 != r10) goto L_0x01b5
            int r10 = a(r5)
            int r12 = c
            r13 = 2
            if (r10 != r12) goto L_0x01a1
            int[] r2 = new int[r13]
            r2[r3] = r9
            r2[r11] = r4
            r4 = r2[r11]
            int r4 = r1.getNextSet(r4)
            int r5 = r18.getSize()
            int[] r6 = r0.e
            java.util.Arrays.fill(r6, r3)
            java.lang.StringBuilder r7 = r0.d
            r7.setLength(r3)
        L_0x0051:
            a(r1, r4, r6)
            int r8 = a(r6)
            if (r8 < 0) goto L_0x019c
            r9 = 0
        L_0x005b:
            int[] r10 = f4278a
            int r12 = r10.length
            if (r9 >= r12) goto L_0x0197
            r10 = r10[r9]
            if (r10 != r8) goto L_0x0191
            char[] r8 = f4279b
            char r8 = r8[r9]
            r7.append(r8)
            int r9 = r6.length
            r12 = r4
            r10 = 0
        L_0x006e:
            if (r10 >= r9) goto L_0x0076
            r14 = r6[r10]
            int r12 = r12 + r14
            int r10 = r10 + 1
            goto L_0x006e
        L_0x0076:
            int r9 = r1.getNextSet(r12)
            r10 = 42
            if (r8 != r10) goto L_0x018c
            int r8 = r7.length()
            int r8 = r8 - r11
            r7.deleteCharAt(r8)
            int r8 = r6.length
            r10 = 0
            r12 = 0
        L_0x0089:
            if (r10 >= r8) goto L_0x0091
            r14 = r6[r10]
            int r12 = r12 + r14
            int r10 = r10 + 1
            goto L_0x0089
        L_0x0091:
            if (r9 == r5) goto L_0x0187
            boolean r1 = r1.get(r9)
            if (r1 == 0) goto L_0x0187
            int r1 = r7.length()
            if (r1 < r13) goto L_0x0182
            int r1 = r7.length()
            int r5 = r1 + -2
            r6 = 20
            a(r7, r5, r6)
            int r1 = r1 - r11
            r5 = 15
            a(r7, r1, r5)
            int r1 = r7.length()
            int r1 = r1 - r13
            r7.setLength(r1)
            int r1 = r7.length()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>(r1)
            r6 = 0
        L_0x00c2:
            if (r6 >= r1) goto L_0x0155
            char r8 = r7.charAt(r6)
            r9 = 97
            if (r8 < r9) goto L_0x014f
            r9 = 100
            if (r8 > r9) goto L_0x014f
            int r9 = r1 + -1
            if (r6 >= r9) goto L_0x014a
            int r6 = r6 + 1
            char r9 = r7.charAt(r6)
            r10 = 79
            r14 = 90
            r15 = 65
            switch(r8) {
                case 97: goto L_0x0139;
                case 98: goto L_0x0103;
                case 99: goto L_0x00f2;
                case 100: goto L_0x00e6;
                default: goto L_0x00e3;
            }
        L_0x00e3:
            r8 = 0
            goto L_0x0146
        L_0x00e6:
            if (r9 < r15) goto L_0x00ed
            if (r9 > r14) goto L_0x00ed
            int r9 = r9 + 32
            goto L_0x013f
        L_0x00ed:
            com.google.zxing.d r1 = com.google.zxing.d.getFormatInstance()
            throw r1
        L_0x00f2:
            if (r9 < r15) goto L_0x00f9
            if (r9 > r10) goto L_0x00f9
            int r9 = r9 + -32
            goto L_0x013f
        L_0x00f9:
            if (r9 != r14) goto L_0x00fe
            r8 = 58
            goto L_0x0146
        L_0x00fe:
            com.google.zxing.d r1 = com.google.zxing.d.getFormatInstance()
            throw r1
        L_0x0103:
            if (r9 < r15) goto L_0x010c
            r8 = 69
            if (r9 > r8) goto L_0x010c
            int r9 = r9 + -38
            goto L_0x013f
        L_0x010c:
            r8 = 70
            if (r9 < r8) goto L_0x0117
            r8 = 74
            if (r9 > r8) goto L_0x0117
            int r9 = r9 + -11
            goto L_0x013f
        L_0x0117:
            r8 = 75
            if (r9 < r8) goto L_0x0120
            if (r9 > r10) goto L_0x0120
            int r9 = r9 + 16
            goto L_0x013f
        L_0x0120:
            r8 = 80
            if (r9 < r8) goto L_0x012b
            r8 = 83
            if (r9 > r8) goto L_0x012b
            int r9 = r9 + 43
            goto L_0x013f
        L_0x012b:
            r8 = 84
            if (r9 < r8) goto L_0x0134
            if (r9 > r14) goto L_0x0134
            r8 = 127(0x7f, float:1.78E-43)
            goto L_0x0146
        L_0x0134:
            com.google.zxing.d r1 = com.google.zxing.d.getFormatInstance()
            throw r1
        L_0x0139:
            if (r9 < r15) goto L_0x0141
            if (r9 > r14) goto L_0x0141
            int r9 = r9 + -64
        L_0x013f:
            char r8 = (char) r9
            goto L_0x0146
        L_0x0141:
            com.google.zxing.d r1 = com.google.zxing.d.getFormatInstance()
            throw r1
        L_0x0146:
            r5.append(r8)
            goto L_0x0152
        L_0x014a:
            com.google.zxing.d r1 = com.google.zxing.d.getFormatInstance()
            throw r1
        L_0x014f:
            r5.append(r8)
        L_0x0152:
            int r6 = r6 + r11
            goto L_0x00c2
        L_0x0155:
            java.lang.String r1 = r5.toString()
            r5 = r2[r11]
            r2 = r2[r3]
            int r5 = r5 + r2
            float r2 = (float) r5
            r5 = 1073741824(0x40000000, float:2.0)
            float r2 = r2 / r5
            float r4 = (float) r4
            float r6 = (float) r12
            float r6 = r6 / r5
            float r4 = r4 + r6
            com.google.zxing.l r5 = new com.google.zxing.l
            r6 = 0
            com.google.zxing.m[] r7 = new com.google.zxing.m[r13]
            com.google.zxing.m r8 = new com.google.zxing.m
            r10 = r17
            float r9 = (float) r10
            r8.<init>(r2, r9)
            r7[r3] = r8
            com.google.zxing.m r2 = new com.google.zxing.m
            r2.<init>(r4, r9)
            r7[r11] = r2
            com.google.zxing.BarcodeFormat r2 = com.google.zxing.BarcodeFormat.CODE_93
            r5.<init>(r1, r6, r7, r2)
            return r5
        L_0x0182:
            com.google.zxing.h r1 = com.google.zxing.h.getNotFoundInstance()
            throw r1
        L_0x0187:
            com.google.zxing.h r1 = com.google.zxing.h.getNotFoundInstance()
            throw r1
        L_0x018c:
            r10 = r17
            r4 = r9
            goto L_0x0051
        L_0x0191:
            r10 = r17
            int r9 = r9 + 1
            goto L_0x005b
        L_0x0197:
            com.google.zxing.h r1 = com.google.zxing.h.getNotFoundInstance()
            throw r1
        L_0x019c:
            com.google.zxing.h r1 = com.google.zxing.h.getNotFoundInstance()
            throw r1
        L_0x01a1:
            r10 = r17
            r12 = r5[r3]
            r14 = r5[r11]
            int r12 = r12 + r14
            int r9 = r9 + r12
            int r12 = r8 + -1
            java.lang.System.arraycopy(r5, r13, r5, r3, r12)
            r5[r12] = r3
            r5[r8] = r3
            int r8 = r8 + -1
            goto L_0x01b9
        L_0x01b5:
            r10 = r17
            int r8 = r8 + 1
        L_0x01b9:
            r5[r8] = r11
            r7 = r7 ^ 1
        L_0x01bd:
            int r4 = r4 + 1
            goto L_0x0018
        L_0x01c1:
            com.google.zxing.h r1 = com.google.zxing.h.getNotFoundInstance()
            goto L_0x01c7
        L_0x01c6:
            throw r1
        L_0x01c7:
            goto L_0x01c6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.c.d.decodeRow(int, com.google.zxing.common.a, java.util.Map):com.google.zxing.l");
    }
}
