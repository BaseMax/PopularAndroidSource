package com.google.zxing.c.a;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.common.a;
import com.google.zxing.h;
import com.google.zxing.l;
import com.google.zxing.m;
import com.google.zxing.n;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class e extends a {
    private static final int[] g = {1, 10, 34, 70, 126};
    private static final int[] h = {4, 20, 48, 81};
    private static final int[] i = {0, 161, 961, 2015, 2715};
    private static final int[] j = {0, 336, 1036, 1516};
    private static final int[] k = {8, 6, 4, 3, 1};
    private static final int[] l = {2, 4, 6, 8};
    private static final int[][] m = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};
    private final List<d> n = new ArrayList();
    private final List<d> o = new ArrayList();

    public final l decodeRow(int i2, a aVar, Map<DecodeHintType, ?> map) throws h {
        a((Collection<d>) this.n, a(aVar, false, i2, map));
        aVar.reverse();
        a((Collection<d>) this.o, a(aVar, true, i2, map));
        aVar.reverse();
        for (d next : this.n) {
            if (next.f4274b > 1) {
                for (d next2 : this.o) {
                    if (next2.f4274b > 1) {
                        int checksumPortion = (next.getChecksumPortion() + (next2.getChecksumPortion() * 16)) % 79;
                        int value = (next.f4273a.getValue() * 9) + next2.f4273a.getValue();
                        if (value > 72) {
                            value--;
                        }
                        if (value > 8) {
                            value--;
                        }
                        if (checksumPortion == value) {
                            String valueOf = String.valueOf((((long) next.getValue()) * 4537077) + ((long) next2.getValue()));
                            StringBuilder sb = new StringBuilder(14);
                            for (int length = 13 - valueOf.length(); length > 0; length--) {
                                sb.append('0');
                            }
                            sb.append(valueOf);
                            int i3 = 0;
                            for (int i4 = 0; i4 < 13; i4++) {
                                int charAt = sb.charAt(i4) - '0';
                                if ((i4 & 1) == 0) {
                                    charAt *= 3;
                                }
                                i3 += charAt;
                            }
                            int i5 = 10 - (i3 % 10);
                            if (i5 == 10) {
                                i5 = 0;
                            }
                            sb.append(i5);
                            m[] resultPoints = next.f4273a.getResultPoints();
                            m[] resultPoints2 = next2.f4273a.getResultPoints();
                            return new l(sb.toString(), null, new m[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_14);
                        }
                    }
                }
                continue;
            }
        }
        throw h.getNotFoundInstance();
    }

    private static void a(Collection<d> collection, d dVar) {
        if (dVar != null) {
            boolean z = false;
            Iterator<d> it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                d next = it.next();
                if (next.getValue() == dVar.getValue()) {
                    next.a();
                    z = true;
                    break;
                }
            }
            if (!z) {
                collection.add(dVar);
            }
        }
    }

    public final void reset() {
        this.n.clear();
        this.o.clear();
    }

    private d a(a aVar, boolean z, int i2, Map<DecodeHintType, ?> map) {
        int i3;
        int i4;
        n nVar;
        a aVar2 = aVar;
        boolean z2 = z;
        Map<DecodeHintType, ?> map2 = map;
        try {
            int[] iArr = this.f4247a;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            int size = aVar.getSize();
            int i5 = 0;
            boolean z3 = false;
            while (i5 < size) {
                z3 = !aVar2.get(i5);
                if (z2 == z3) {
                    break;
                }
                i5++;
            }
            int i6 = i5;
            int i7 = 0;
            while (i5 < size) {
                if (aVar2.get(i5) != z3) {
                    iArr[i7] = iArr[i7] + 1;
                    int i8 = i2;
                } else {
                    if (i7 != 3) {
                        int i9 = i2;
                        i7++;
                    } else if (a(iArr)) {
                        int[] iArr2 = {i6, i5};
                        boolean z4 = aVar2.get(iArr2[0]);
                        int i10 = iArr2[0] - 1;
                        while (i10 >= 0 && z4 != aVar2.get(i10)) {
                            i10--;
                        }
                        int i11 = i10 + 1;
                        int[] iArr3 = this.f4247a;
                        System.arraycopy(iArr3, 0, iArr3, 1, iArr3.length - 1);
                        iArr3[0] = iArr2[0] - i11;
                        int a2 = a(iArr3, m);
                        int i12 = iArr2[1];
                        if (z2) {
                            i4 = (aVar.getSize() - 1) - i11;
                            i3 = (aVar.getSize() - 1) - i12;
                        } else {
                            i3 = i12;
                            i4 = i11;
                        }
                        c cVar = new c(a2, new int[]{i11, iArr2[1]}, i4, i3, i2);
                        if (map2 == null) {
                            nVar = null;
                        } else {
                            nVar = (n) map2.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
                        }
                        if (nVar != null) {
                            float f = ((float) (iArr2[0] + iArr2[1])) / 2.0f;
                            if (z2) {
                                f = ((float) (aVar.getSize() - 1)) - f;
                            }
                            nVar.foundPossibleResultPoint(new m(f, (float) i2));
                        }
                        b a3 = a(aVar2, cVar, true);
                        b a4 = a(aVar2, cVar, false);
                        return new d((a3.getValue() * 1597) + a4.getValue(), a3.getChecksumPortion() + (a4.getChecksumPortion() * 4), cVar);
                    } else {
                        int i13 = i2;
                        i6 += iArr[0] + iArr[1];
                        iArr[0] = iArr[2];
                        iArr[1] = iArr[3];
                        iArr[2] = 0;
                        iArr[3] = 0;
                        i7--;
                    }
                    iArr[i7] = 1;
                    z3 = !z3;
                }
                i5++;
            }
            throw h.getNotFoundInstance();
        } catch (h unused) {
            return null;
        }
    }

    private b a(a aVar, c cVar, boolean z) throws h {
        int[] iArr = this.f4248b;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = 0;
        }
        if (z) {
            b(aVar, cVar.getStartEnd()[0], iArr);
        } else {
            a(aVar, cVar.getStartEnd()[1] + 1, iArr);
            int i3 = 0;
            for (int length = iArr.length - 1; i3 < length; length--) {
                int i4 = iArr[i3];
                iArr[i3] = iArr[length];
                iArr[length] = i4;
                i3++;
            }
        }
        int i5 = z ? 16 : 15;
        float sum = ((float) com.google.zxing.common.a.a.sum(iArr)) / ((float) i5);
        int[] iArr2 = this.e;
        int[] iArr3 = this.f;
        float[] fArr = this.c;
        float[] fArr2 = this.d;
        for (int i6 = 0; i6 < iArr.length; i6++) {
            float f = ((float) iArr[i6]) / sum;
            int i7 = (int) (0.5f + f);
            if (i7 <= 0) {
                i7 = 1;
            } else if (i7 > 8) {
                i7 = 8;
            }
            int i8 = i6 / 2;
            if ((i6 & 1) == 0) {
                iArr2[i8] = i7;
                fArr[i8] = f - ((float) i7);
            } else {
                iArr3[i8] = i7;
                fArr2[i8] = f - ((float) i7);
            }
        }
        a(z, i5);
        int i9 = 0;
        int i10 = 0;
        for (int length2 = iArr2.length - 1; length2 >= 0; length2--) {
            i9 = (i9 * 9) + iArr2[length2];
            i10 += iArr2[length2];
        }
        int i11 = 0;
        int i12 = 0;
        for (int length3 = iArr3.length - 1; length3 >= 0; length3--) {
            i11 = (i11 * 9) + iArr3[length3];
            i12 += iArr3[length3];
        }
        int i13 = i9 + (i11 * 3);
        if (z) {
            if ((i10 & 1) != 0 || i10 > 12 || i10 < 4) {
                throw h.getNotFoundInstance();
            }
            int i14 = (12 - i10) / 2;
            int i15 = k[i14];
            return new b((f.getRSSvalue(iArr2, i15, false) * g[i14]) + f.getRSSvalue(iArr3, 9 - i15, true) + i[i14], i13);
        } else if ((i12 & 1) != 0 || i12 > 10 || i12 < 4) {
            throw h.getNotFoundInstance();
        } else {
            int i16 = (10 - i12) / 2;
            int i17 = l[i16];
            return new b((f.getRSSvalue(iArr3, 9 - i17, false) * h[i16]) + f.getRSSvalue(iArr2, i17, true) + j[i16], i13);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0024, code lost:
        if (r1 < 4) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x003c, code lost:
        if (r1 < 4) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x003e, code lost:
        r2 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0040, code lost:
        r2 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0041, code lost:
        r7 = false;
     */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x001f  */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0022  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x00be  */
    /* JADX WARNING: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(boolean r10, int r11) throws com.google.zxing.h {
        /*
            r9 = this;
            int[] r0 = r9.e
            int r0 = com.google.zxing.common.a.a.sum(r0)
            int[] r1 = r9.f
            int r1 = com.google.zxing.common.a.a.sum(r1)
            r2 = 4
            r3 = 0
            r4 = 1
            if (r10 == 0) goto L_0x0027
            r5 = 12
            if (r0 <= r5) goto L_0x0017
            r6 = 1
            goto L_0x001c
        L_0x0017:
            r6 = 0
            if (r0 >= r2) goto L_0x001c
            r7 = 1
            goto L_0x001d
        L_0x001c:
            r7 = 0
        L_0x001d:
            if (r1 <= r5) goto L_0x0022
            r5 = r6
            r6 = r7
            goto L_0x0039
        L_0x0022:
            r5 = r6
            r6 = r7
            if (r1 >= r2) goto L_0x0040
            goto L_0x003e
        L_0x0027:
            r5 = 11
            if (r0 <= r5) goto L_0x002d
            r5 = 1
            goto L_0x0034
        L_0x002d:
            r5 = 5
            if (r0 >= r5) goto L_0x0033
            r5 = 0
            r6 = 1
            goto L_0x0035
        L_0x0033:
            r5 = 0
        L_0x0034:
            r6 = 0
        L_0x0035:
            r7 = 10
            if (r1 <= r7) goto L_0x003c
        L_0x0039:
            r2 = 0
            r7 = 1
            goto L_0x0042
        L_0x003c:
            if (r1 >= r2) goto L_0x0040
        L_0x003e:
            r2 = 1
            goto L_0x0041
        L_0x0040:
            r2 = 0
        L_0x0041:
            r7 = 0
        L_0x0042:
            int r8 = r0 + r1
            int r8 = r8 - r11
            r11 = r0 & 1
            if (r11 != r10) goto L_0x004b
            r10 = 1
            goto L_0x004c
        L_0x004b:
            r10 = 0
        L_0x004c:
            r11 = r1 & 1
            if (r11 != r4) goto L_0x0051
            r3 = 1
        L_0x0051:
            if (r8 != r4) goto L_0x0067
            if (r10 == 0) goto L_0x005e
            if (r3 != 0) goto L_0x0059
        L_0x0057:
            r5 = 1
            goto L_0x0091
        L_0x0059:
            com.google.zxing.h r10 = com.google.zxing.h.getNotFoundInstance()
            throw r10
        L_0x005e:
            if (r3 == 0) goto L_0x0062
        L_0x0060:
            r7 = 1
            goto L_0x0091
        L_0x0062:
            com.google.zxing.h r10 = com.google.zxing.h.getNotFoundInstance()
            throw r10
        L_0x0067:
            r11 = -1
            if (r8 != r11) goto L_0x007e
            if (r10 == 0) goto L_0x0075
            if (r3 != 0) goto L_0x0070
            r6 = 1
            goto L_0x0091
        L_0x0070:
            com.google.zxing.h r10 = com.google.zxing.h.getNotFoundInstance()
            throw r10
        L_0x0075:
            if (r3 == 0) goto L_0x0079
            r2 = 1
            goto L_0x0091
        L_0x0079:
            com.google.zxing.h r10 = com.google.zxing.h.getNotFoundInstance()
            throw r10
        L_0x007e:
            if (r8 != 0) goto L_0x00cb
            if (r10 == 0) goto L_0x008f
            if (r3 == 0) goto L_0x008a
            if (r0 >= r1) goto L_0x0088
            r6 = 1
            goto L_0x0060
        L_0x0088:
            r2 = 1
            goto L_0x0057
        L_0x008a:
            com.google.zxing.h r10 = com.google.zxing.h.getNotFoundInstance()
            throw r10
        L_0x008f:
            if (r3 != 0) goto L_0x00c6
        L_0x0091:
            if (r6 == 0) goto L_0x00a2
            if (r5 != 0) goto L_0x009d
            int[] r10 = r9.e
            float[] r11 = r9.c
            a((int[]) r10, (float[]) r11)
            goto L_0x00a2
        L_0x009d:
            com.google.zxing.h r10 = com.google.zxing.h.getNotFoundInstance()
            throw r10
        L_0x00a2:
            if (r5 == 0) goto L_0x00ab
            int[] r10 = r9.e
            float[] r11 = r9.c
            b(r10, r11)
        L_0x00ab:
            if (r2 == 0) goto L_0x00bc
            if (r7 != 0) goto L_0x00b7
            int[] r10 = r9.f
            float[] r11 = r9.c
            a((int[]) r10, (float[]) r11)
            goto L_0x00bc
        L_0x00b7:
            com.google.zxing.h r10 = com.google.zxing.h.getNotFoundInstance()
            throw r10
        L_0x00bc:
            if (r7 == 0) goto L_0x00c5
            int[] r10 = r9.f
            float[] r11 = r9.d
            b(r10, r11)
        L_0x00c5:
            return
        L_0x00c6:
            com.google.zxing.h r10 = com.google.zxing.h.getNotFoundInstance()
            throw r10
        L_0x00cb:
            com.google.zxing.h r10 = com.google.zxing.h.getNotFoundInstance()
            goto L_0x00d1
        L_0x00d0:
            throw r10
        L_0x00d1:
            goto L_0x00d0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.c.a.e.a(boolean, int):void");
    }
}
