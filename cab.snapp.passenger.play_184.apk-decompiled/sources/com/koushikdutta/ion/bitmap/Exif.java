package com.koushikdutta.ion.bitmap;

import com.pusher.java_websocket.drafts.c;

public class Exif {
    private static final String TAG = "CameraExif";

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x005a, code lost:
        r10 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x005b, code lost:
        r11 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x005c, code lost:
        if (r11 <= 8) goto L_0x00b8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x005e, code lost:
        r1 = pack(r9, r10, 4, false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0065, code lost:
        if (r1 == 1229531648) goto L_0x006d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x006a, code lost:
        if (r1 == 1296891946) goto L_0x006d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x006c, code lost:
        return 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x006d, code lost:
        if (r1 != 1229531648) goto L_0x0071;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x006f, code lost:
        r1 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0071, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0072, code lost:
        r2 = pack(r9, r10 + 4, 4, r1) + 2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x007b, code lost:
        if (r2 < 10) goto L_0x00b8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x007d, code lost:
        if (r2 <= r11) goto L_0x0080;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0080, code lost:
        r10 = r10 + r2;
        r11 = r11 - r2;
        r2 = pack(r9, r10 - 2, 2, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0088, code lost:
        r6 = r2 - 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x008a, code lost:
        if (r2 <= 0) goto L_0x00b8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x008e, code lost:
        if (r11 < 12) goto L_0x00b8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0096, code lost:
        if (pack(r9, r10, 2, r1) != 274) goto L_0x00b2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0098, code lost:
        r9 = pack(r9, r10 + 8, 2, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x009d, code lost:
        if (r9 == 1) goto L_0x00b1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00a0, code lost:
        if (r9 == 3) goto L_0x00ae;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x00a3, code lost:
        if (r9 == 6) goto L_0x00ab;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x00a5, code lost:
        if (r9 == 8) goto L_0x00a8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x00a7, code lost:
        return 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x00aa, code lost:
        return 270;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x00ad, code lost:
        return 90;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x00b0, code lost:
        return 180;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x00b1, code lost:
        return 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x00b2, code lost:
        r10 = r10 + 12;
        r11 = r11 - 12;
        r2 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x00b8, code lost:
        return 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int getOrientation(byte[] r9, int r10, int r11) {
        /*
            r0 = 0
            if (r9 != 0) goto L_0x0004
            return r0
        L_0x0004:
            int r11 = r11 + r10
        L_0x0005:
            int r1 = r10 + 3
            r2 = 4
            r3 = 1
            r4 = 8
            r5 = 2
            if (r1 >= r11) goto L_0x005b
            int r1 = r10 + 1
            byte r10 = r9[r10]
            r6 = 255(0xff, float:3.57E-43)
            r10 = r10 & r6
            if (r10 != r6) goto L_0x005a
            byte r10 = r9[r1]
            r10 = r10 & r6
            if (r10 == r6) goto L_0x0058
            int r1 = r1 + 1
            r6 = 216(0xd8, float:3.03E-43)
            if (r10 == r6) goto L_0x0058
            if (r10 == r3) goto L_0x0058
            r6 = 217(0xd9, float:3.04E-43)
            if (r10 == r6) goto L_0x005a
            r6 = 218(0xda, float:3.05E-43)
            if (r10 == r6) goto L_0x005a
            int r6 = pack(r9, r1, r5, r0)
            if (r6 < r5) goto L_0x0057
            int r7 = r1 + r6
            if (r7 <= r11) goto L_0x0037
            goto L_0x0057
        L_0x0037:
            r8 = 225(0xe1, float:3.15E-43)
            if (r10 != r8) goto L_0x0055
            if (r6 < r4) goto L_0x0055
            int r10 = r1 + 2
            int r10 = pack(r9, r10, r2, r0)
            r8 = 1165519206(0x45786966, float:3974.5874)
            if (r10 != r8) goto L_0x0055
            int r10 = r1 + 6
            int r10 = pack(r9, r10, r5, r0)
            if (r10 != 0) goto L_0x0055
            int r10 = r1 + 8
            int r11 = r6 + -8
            goto L_0x005c
        L_0x0055:
            r10 = r7
            goto L_0x0005
        L_0x0057:
            return r0
        L_0x0058:
            r10 = r1
            goto L_0x0005
        L_0x005a:
            r10 = r1
        L_0x005b:
            r11 = 0
        L_0x005c:
            if (r11 <= r4) goto L_0x00b8
            int r1 = pack(r9, r10, r2, r0)
            r6 = 1229531648(0x49492a00, float:823968.0)
            if (r1 == r6) goto L_0x006d
            r7 = 1296891946(0x4d4d002a, float:2.14958752E8)
            if (r1 == r7) goto L_0x006d
            return r0
        L_0x006d:
            if (r1 != r6) goto L_0x0071
            r1 = 1
            goto L_0x0072
        L_0x0071:
            r1 = 0
        L_0x0072:
            int r6 = r10 + 4
            int r2 = pack(r9, r6, r2, r1)
            int r2 = r2 + r5
            r6 = 10
            if (r2 < r6) goto L_0x00b8
            if (r2 <= r11) goto L_0x0080
            goto L_0x00b8
        L_0x0080:
            int r10 = r10 + r2
            int r11 = r11 - r2
            int r2 = r10 + -2
            int r2 = pack(r9, r2, r5, r1)
        L_0x0088:
            int r6 = r2 + -1
            if (r2 <= 0) goto L_0x00b8
            r2 = 12
            if (r11 < r2) goto L_0x00b8
            int r2 = pack(r9, r10, r5, r1)
            r7 = 274(0x112, float:3.84E-43)
            if (r2 != r7) goto L_0x00b2
            int r10 = r10 + r4
            int r9 = pack(r9, r10, r5, r1)
            if (r9 == r3) goto L_0x00b1
            r10 = 3
            if (r9 == r10) goto L_0x00ae
            r10 = 6
            if (r9 == r10) goto L_0x00ab
            if (r9 == r4) goto L_0x00a8
            return r0
        L_0x00a8:
            r9 = 270(0x10e, float:3.78E-43)
            return r9
        L_0x00ab:
            r9 = 90
            return r9
        L_0x00ae:
            r9 = 180(0xb4, float:2.52E-43)
            return r9
        L_0x00b1:
            return r0
        L_0x00b2:
            int r10 = r10 + 12
            int r11 = r11 + -12
            r2 = r6
            goto L_0x0088
        L_0x00b8:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.ion.bitmap.Exif.getOrientation(byte[], int, int):int");
    }

    private static int pack(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        if (z) {
            i += i2 - 1;
            i3 = -1;
        } else {
            i3 = 1;
        }
        byte b2 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i2 <= 0) {
                return b2;
            }
            b2 = (bArr[i] & c.END_OF_FRAME) | (b2 << 8);
            i += i3;
            i2 = i4;
        }
    }
}
