package com.google.zxing.c;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.common.a;
import com.google.zxing.d;
import com.google.zxing.l;
import com.google.zxing.m;
import java.util.Map;

public final class h extends k {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f4284a = {6, 8, 10, 12, 14};
    private static final int[] c = {1, 1, 1, 1};
    private static final int[][] d = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};
    private static final int[][] e = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* renamed from: b  reason: collision with root package name */
    private int f4285b = -1;

    private static void a(a aVar, int i, int i2, StringBuilder sb) throws com.google.zxing.h {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i < i2) {
            a(aVar, i, iArr);
            for (int i3 = 0; i3 < 5; i3++) {
                int i4 = i3 * 2;
                iArr2[i3] = iArr[i4];
                iArr3[i3] = iArr[i4 + 1];
            }
            sb.append((char) (a(iArr2) + 48));
            sb.append((char) (a(iArr3) + 48));
            for (int i5 = 0; i5 < 10; i5++) {
                i += iArr[i5];
            }
        }
    }

    private void a(a aVar, int i) throws com.google.zxing.h {
        int i2 = this.f4285b * 10;
        if (i2 >= i) {
            i2 = i;
        }
        int i3 = i - 1;
        while (i2 > 0 && i3 >= 0 && !aVar.get(i3)) {
            i2--;
            i3--;
        }
        if (i2 != 0) {
            throw com.google.zxing.h.getNotFoundInstance();
        }
    }

    private static int a(a aVar) throws com.google.zxing.h {
        int size = aVar.getSize();
        int nextSet = aVar.getNextSet(0);
        if (nextSet != size) {
            return nextSet;
        }
        throw com.google.zxing.h.getNotFoundInstance();
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:6|7) */
    /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
        r0 = c(r7, r0, d[1]);
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x0012 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int[] b(com.google.zxing.common.a r7) throws com.google.zxing.h {
        /*
            r6 = this;
            r7.reverse()
            int r0 = a((com.google.zxing.common.a) r7)     // Catch:{ all -> 0x0035 }
            r1 = 1
            r2 = 0
            int[][] r3 = d     // Catch:{ h -> 0x0012 }
            r3 = r3[r2]     // Catch:{ h -> 0x0012 }
            int[] r0 = c(r7, r0, r3)     // Catch:{ h -> 0x0012 }
            goto L_0x001a
        L_0x0012:
            int[][] r3 = d     // Catch:{ all -> 0x0035 }
            r3 = r3[r1]     // Catch:{ all -> 0x0035 }
            int[] r0 = c(r7, r0, r3)     // Catch:{ all -> 0x0035 }
        L_0x001a:
            r3 = r0[r2]     // Catch:{ all -> 0x0035 }
            r6.a(r7, r3)     // Catch:{ all -> 0x0035 }
            r3 = r0[r2]     // Catch:{ all -> 0x0035 }
            int r4 = r7.getSize()     // Catch:{ all -> 0x0035 }
            r5 = r0[r1]     // Catch:{ all -> 0x0035 }
            int r4 = r4 - r5
            r0[r2] = r4     // Catch:{ all -> 0x0035 }
            int r2 = r7.getSize()     // Catch:{ all -> 0x0035 }
            int r2 = r2 - r3
            r0[r1] = r2     // Catch:{ all -> 0x0035 }
            r7.reverse()
            return r0
        L_0x0035:
            r0 = move-exception
            r7.reverse()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.c.h.b(com.google.zxing.common.a):int[]");
    }

    private static int[] c(a aVar, int i, int[] iArr) throws com.google.zxing.h {
        int[] iArr2 = new int[iArr.length];
        int size = aVar.getSize();
        int i2 = i;
        boolean z = false;
        int i3 = 0;
        while (i < size) {
            if (aVar.get(i) != z) {
                iArr2[i3] = iArr2[i3] + 1;
            } else {
                if (i3 != r0 - 1) {
                    i3++;
                } else if (patternMatchVariance(iArr2, iArr, 0.5f) < 0.38f) {
                    return new int[]{i2, i};
                } else {
                    i2 += iArr2[0] + iArr2[1];
                    int i4 = i3 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i4);
                    iArr2[i4] = 0;
                    iArr2[i3] = 0;
                    i3--;
                }
                iArr2[i3] = 1;
                z = !z;
            }
            i++;
        }
        throw com.google.zxing.h.getNotFoundInstance();
    }

    private static int a(int[] iArr) throws com.google.zxing.h {
        int length = e.length;
        int i = -1;
        float f = 0.38f;
        for (int i2 = 0; i2 < length; i2++) {
            float patternMatchVariance = patternMatchVariance(iArr, e[i2], 0.5f);
            if (patternMatchVariance < f) {
                i = i2;
                f = patternMatchVariance;
            } else if (patternMatchVariance == f) {
                i = -1;
            }
        }
        if (i >= 0) {
            return i % 10;
        }
        throw com.google.zxing.h.getNotFoundInstance();
    }

    public final l decodeRow(int i, a aVar, Map<DecodeHintType, ?> map) throws d, com.google.zxing.h {
        boolean z;
        int[] c2 = c(aVar, a(aVar), c);
        this.f4285b = (c2[1] - c2[0]) / 4;
        a(aVar, c2[0]);
        int[] b2 = b(aVar);
        StringBuilder sb = new StringBuilder(20);
        a(aVar, c2[1], b2[0], sb);
        String sb2 = sb.toString();
        int[] iArr = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_LENGTHS) : null;
        if (iArr == null) {
            iArr = f4284a;
        }
        int length = sb2.length();
        int length2 = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length2) {
                z = false;
                break;
            }
            int i4 = iArr[i2];
            if (length == i4) {
                z = true;
                break;
            }
            if (i4 > i3) {
                i3 = i4;
            }
            i2++;
        }
        if (!z && length > i3) {
            z = true;
        }
        if (z) {
            float f = (float) i;
            return new l(sb2, null, new m[]{new m((float) c2[1], f), new m((float) b2[0], f)}, BarcodeFormat.ITF);
        }
        throw d.getFormatInstance();
    }
}
