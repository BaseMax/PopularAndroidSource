package com.google.zxing.c.a.a;

import cab.snapp.passenger.c;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.c.a.a;
import com.google.zxing.c.a.a.a.j;
import com.google.zxing.c.a.b;
import com.google.zxing.c.a.f;
import com.google.zxing.h;
import com.google.zxing.l;
import com.google.zxing.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class d extends a {
    private static final int[] g = {7, 5, 4, 3, 1};
    private static final int[] h = {4, 20, 52, 104, 204};
    private static final int[] i = {0, 348, 1388, 2948, 3988};
    private static final int[][] j = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};
    private static final int[][] k = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, 143, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, 140, 209, 205}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, 108}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, 203, 187, 139, 206, 196, 166}, new int[]{76, 17, 51, 153, 37, 111, 122, 155}, new int[]{43, 129, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, 116, 137, 200, 178, 112, 125, 164}, new int[]{70, 210, 208, 202, c.VERSION_CODE, 130, 179, 115}, new int[]{134, 191, 151, 31, 93, 68, 204, 190}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, 167}, new int[]{79, 26, 78, 23, 69, 207, 199, 175}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};
    private static final int[][] l = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};
    private final List<b> m = new ArrayList(11);
    private final List<c> n = new ArrayList();
    private final int[] o = new int[2];
    private boolean p;

    public final l decodeRow(int i2, com.google.zxing.common.a aVar, Map<DecodeHintType, ?> map) throws h, com.google.zxing.d {
        this.m.clear();
        this.p = false;
        try {
            return a(a(i2, aVar));
        } catch (h unused) {
            this.m.clear();
            this.p = true;
            return a(a(i2, aVar));
        }
    }

    public final void reset() {
        this.m.clear();
        this.n.clear();
    }

    private List<b> a(int i2, com.google.zxing.common.a aVar) throws h {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7 = false;
        while (!z7) {
            try {
                this.m.add(a(aVar, this.m, i2));
            } catch (h e) {
                if (!this.m.isEmpty()) {
                    z7 = true;
                } else {
                    throw e;
                }
            }
        }
        if (a()) {
            return this.m;
        }
        boolean z8 = !this.n.isEmpty();
        int i3 = 0;
        boolean z9 = false;
        while (true) {
            if (i3 >= this.n.size()) {
                z = false;
                break;
            }
            c cVar = this.n.get(i3);
            if (cVar.f4268b > i2) {
                z = cVar.a(this.m);
                break;
            }
            z9 = cVar.a(this.m);
            i3++;
        }
        if (!z && !z9) {
            List<b> list = this.m;
            Iterator<T> it = this.n.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                c cVar2 = (c) it.next();
                Iterator<T> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z5 = true;
                        continue;
                        break;
                    }
                    b bVar = (b) it2.next();
                    Iterator<b> it3 = cVar2.f4267a.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (bVar.equals(it3.next())) {
                                z6 = true;
                                continue;
                                break;
                            }
                        } else {
                            z6 = false;
                            continue;
                            break;
                        }
                    }
                    if (!z6) {
                        z5 = false;
                        continue;
                        break;
                    }
                }
                if (z5) {
                    z2 = true;
                    break;
                }
            }
            if (!z2) {
                this.n.add(i3, new c(this.m, i2));
                List<b> list2 = this.m;
                Iterator<c> it4 = this.n.iterator();
                while (it4.hasNext()) {
                    c next = it4.next();
                    if (next.f4267a.size() != list2.size()) {
                        Iterator<b> it5 = next.f4267a.iterator();
                        while (true) {
                            if (!it5.hasNext()) {
                                z3 = true;
                                break;
                            }
                            b next2 = it5.next();
                            Iterator<b> it6 = list2.iterator();
                            while (true) {
                                if (it6.hasNext()) {
                                    if (next2.equals(it6.next())) {
                                        z4 = true;
                                        continue;
                                        break;
                                    }
                                } else {
                                    z4 = false;
                                    continue;
                                    break;
                                }
                            }
                            if (!z4) {
                                z3 = false;
                                break;
                            }
                        }
                        if (z3) {
                            it4.remove();
                        }
                    }
                }
            }
        }
        if (z8) {
            List<b> a2 = a(false);
            if (a2 != null) {
                return a2;
            }
            List<b> a3 = a(true);
            if (a3 != null) {
                return a3;
            }
        }
        throw h.getNotFoundInstance();
    }

    private List<b> a(boolean z) {
        List<b> list = null;
        if (this.n.size() > 25) {
            this.n.clear();
            return null;
        }
        this.m.clear();
        if (z) {
            Collections.reverse(this.n);
        }
        try {
            list = a((List<c>) new ArrayList(), 0);
        } catch (h unused) {
        }
        if (z) {
            Collections.reverse(this.n);
        }
        return list;
    }

    private List<b> a(List<c> list, int i2) throws h {
        boolean z;
        while (i2 < this.n.size()) {
            c cVar = this.n.get(i2);
            this.m.clear();
            for (c cVar2 : list) {
                this.m.addAll(cVar2.f4267a);
            }
            this.m.addAll(cVar.f4267a);
            List<b> list2 = this.m;
            int[][] iArr = l;
            int length = iArr.length;
            boolean z2 = false;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    break;
                }
                int[] iArr2 = iArr[i3];
                if (list2.size() <= iArr2.length) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= list2.size()) {
                            z = true;
                            break;
                        } else if (list2.get(i4).c.getValue() != iArr2[i4]) {
                            z = false;
                            break;
                        } else {
                            i4++;
                        }
                    }
                    if (z) {
                        z2 = true;
                        break;
                    }
                }
                i3++;
            }
            if (!z2) {
                i2++;
            } else if (a()) {
                return this.m;
            } else {
                ArrayList arrayList = new ArrayList(list);
                arrayList.add(cVar);
                try {
                    return a((List<c>) arrayList, i2 + 1);
                } catch (h unused) {
                }
            }
        }
        throw h.getNotFoundInstance();
    }

    private static l a(List<b> list) throws h, com.google.zxing.d {
        String parseInformation = j.createDecoder(a.a(list)).parseInformation();
        m[] resultPoints = list.get(0).c.getResultPoints();
        m[] resultPoints2 = list.get(list.size() - 1).c.getResultPoints();
        return new l(parseInformation, null, new m[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_EXPANDED);
    }

    private boolean a() {
        b bVar = this.m.get(0);
        b bVar2 = bVar.f4265a;
        b bVar3 = bVar.f4266b;
        if (bVar3 == null) {
            return false;
        }
        int checksumPortion = bVar3.getChecksumPortion();
        int i2 = 2;
        for (int i3 = 1; i3 < this.m.size(); i3++) {
            b bVar4 = this.m.get(i3);
            checksumPortion += bVar4.f4265a.getChecksumPortion();
            i2++;
            b bVar5 = bVar4.f4266b;
            if (bVar5 != null) {
                checksumPortion += bVar5.getChecksumPortion();
                i2++;
            }
        }
        if (((i2 - 4) * 211) + (checksumPortion % 211) == bVar2.getValue()) {
            return true;
        }
        return false;
    }

    private b a(com.google.zxing.common.a aVar, List<b> list, int i2) throws h {
        int i3;
        b bVar;
        com.google.zxing.common.a aVar2 = aVar;
        List<b> list2 = list;
        int i4 = 2;
        boolean z = list.size() % 2 == 0;
        if (this.p) {
            z = !z;
        }
        int i5 = -1;
        boolean z2 = true;
        while (true) {
            int[] iArr = this.f4247a;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[i4] = 0;
            iArr[3] = 0;
            int size = aVar.getSize();
            if (i5 < 0) {
                i3 = list.isEmpty() ? 0 : list2.get(list.size() - 1).c.getStartEnd()[1];
            } else {
                i3 = i5;
            }
            boolean z3 = list.size() % i4 != 0;
            if (this.p) {
                z3 = !z3;
            }
            boolean z4 = false;
            while (i3 < size) {
                z4 = !aVar2.get(i3);
                if (!z4) {
                    break;
                }
                i3++;
            }
            int i6 = i3;
            int i7 = 0;
            while (i3 < size) {
                if (aVar2.get(i3) != z4) {
                    iArr[i7] = iArr[i7] + 1;
                    int i8 = i2;
                } else {
                    if (i7 == 3) {
                        if (z3) {
                            b(iArr);
                        }
                        if (a(iArr)) {
                            int[] iArr2 = this.o;
                            iArr2[0] = i6;
                            iArr2[1] = i3;
                            com.google.zxing.c.a.c a2 = a(aVar2, i2, z);
                            if (a2 == null) {
                                int i9 = this.o[0];
                                if (aVar2.get(i9)) {
                                    i5 = aVar2.getNextSet(aVar2.getNextUnset(i9));
                                } else {
                                    i5 = aVar2.getNextUnset(aVar2.getNextSet(i9));
                                }
                            } else {
                                z2 = false;
                            }
                            if (!z2) {
                                b a3 = a(aVar2, a2, z, true);
                                if (list.isEmpty() || !list2.get(list.size() - 1).mustBeLast()) {
                                    try {
                                        bVar = a(aVar2, a2, z, false);
                                    } catch (h unused) {
                                        bVar = null;
                                    }
                                    return new b(a3, bVar, a2);
                                }
                                throw h.getNotFoundInstance();
                            }
                            i4 = 2;
                        } else {
                            int i10 = i2;
                            if (z3) {
                                b(iArr);
                            }
                            i6 += iArr[0] + iArr[1];
                            iArr[0] = iArr[2];
                            iArr[1] = iArr[3];
                            iArr[2] = 0;
                            iArr[3] = 0;
                            i7--;
                        }
                    } else {
                        int i11 = i2;
                        i7++;
                    }
                    iArr[i7] = 1;
                    z4 = !z4;
                }
                i3++;
            }
            throw h.getNotFoundInstance();
        }
    }

    private static void b(int[] iArr) {
        int length = iArr.length;
        for (int i2 = 0; i2 < length / 2; i2++) {
            int i3 = iArr[i2];
            int i4 = (length - i2) - 1;
            iArr[i2] = iArr[i4];
            iArr[i4] = i3;
        }
    }

    private com.google.zxing.c.a.c a(com.google.zxing.common.a aVar, int i2, boolean z) {
        int i3;
        int i4;
        int i5;
        if (z) {
            int i6 = this.o[0] - 1;
            while (i6 >= 0 && !aVar.get(i6)) {
                i6--;
            }
            int i7 = i6 + 1;
            int[] iArr = this.o;
            i4 = iArr[1];
            i5 = i7;
            i3 = iArr[0] - i7;
        } else {
            int[] iArr2 = this.o;
            int i8 = iArr2[0];
            int nextUnset = aVar.getNextUnset(iArr2[1] + 1);
            i3 = nextUnset - this.o[1];
            i4 = nextUnset;
            i5 = i8;
        }
        int[] iArr3 = this.f4247a;
        System.arraycopy(iArr3, 0, iArr3, 1, iArr3.length - 1);
        iArr3[0] = i3;
        try {
            com.google.zxing.c.a.c cVar = new com.google.zxing.c.a.c(a(iArr3, j), new int[]{i5, i4}, i5, i4, i2);
            return cVar;
        } catch (h unused) {
            return null;
        }
    }

    private static boolean a(com.google.zxing.c.a.c cVar, boolean z, boolean z2) {
        return cVar.getValue() != 0 || !z || !z2;
    }

    private b a(com.google.zxing.common.a aVar, com.google.zxing.c.a.c cVar, boolean z, boolean z2) throws h {
        com.google.zxing.common.a aVar2 = aVar;
        int[] iArr = this.f4248b;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = 0;
        }
        if (z2) {
            b(aVar2, cVar.getStartEnd()[0], iArr);
        } else {
            a(aVar2, cVar.getStartEnd()[1], iArr);
            int i3 = 0;
            for (int length = iArr.length - 1; i3 < length; length--) {
                int i4 = iArr[i3];
                iArr[i3] = iArr[length];
                iArr[length] = i4;
                i3++;
            }
        }
        float sum = ((float) com.google.zxing.common.a.a.sum(iArr)) / 17.0f;
        float f = ((float) (cVar.getStartEnd()[1] - cVar.getStartEnd()[0])) / 15.0f;
        if (Math.abs(sum - f) / f <= 0.3f) {
            int[] iArr2 = this.e;
            int[] iArr3 = this.f;
            float[] fArr = this.c;
            float[] fArr2 = this.d;
            for (int i5 = 0; i5 < iArr.length; i5++) {
                float f2 = (((float) iArr[i5]) * 1.0f) / sum;
                int i6 = (int) (0.5f + f2);
                if (i6 <= 0) {
                    if (f2 >= 0.3f) {
                        i6 = 1;
                    } else {
                        throw h.getNotFoundInstance();
                    }
                } else if (i6 > 8) {
                    if (f2 <= 8.7f) {
                        i6 = 8;
                    } else {
                        throw h.getNotFoundInstance();
                    }
                }
                int i7 = i5 / 2;
                if ((i5 & 1) == 0) {
                    iArr2[i7] = i6;
                    fArr[i7] = f2 - ((float) i6);
                } else {
                    iArr3[i7] = i6;
                    fArr2[i7] = f2 - ((float) i6);
                }
            }
            b();
            int value = (((cVar.getValue() * 4) + (z ? 0 : 2)) + (z2 ^ true ? 1 : 0)) - 1;
            int i8 = 0;
            int i9 = 0;
            for (int length2 = iArr2.length - 1; length2 >= 0; length2--) {
                if (a(cVar, z, z2)) {
                    i8 += iArr2[length2] * k[value][length2 * 2];
                }
                i9 += iArr2[length2];
            }
            int i10 = 0;
            for (int length3 = iArr3.length - 1; length3 >= 0; length3--) {
                if (a(cVar, z, z2)) {
                    i10 += iArr3[length3] * k[value][(length3 * 2) + 1];
                }
            }
            int i11 = i8 + i10;
            if ((i9 & 1) != 0 || i9 > 13 || i9 < 4) {
                throw h.getNotFoundInstance();
            }
            int i12 = (13 - i9) / 2;
            int i13 = g[i12];
            return new b((f.getRSSvalue(iArr2, i13, true) * h[i12]) + f.getRSSvalue(iArr3, 9 - i13, false) + i[i12], i11);
        }
        throw h.getNotFoundInstance();
    }

    /* JADX WARNING: Removed duplicated region for block: B:51:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b() throws com.google.zxing.h {
        /*
            r11 = this;
            int[] r0 = r11.e
            int r0 = com.google.zxing.common.a.a.sum(r0)
            int[] r1 = r11.f
            int r1 = com.google.zxing.common.a.a.sum(r1)
            r2 = 4
            r3 = 13
            r4 = 0
            r5 = 1
            if (r0 <= r3) goto L_0x0016
            r6 = 0
            r7 = 1
            goto L_0x001c
        L_0x0016:
            if (r0 >= r2) goto L_0x001a
            r6 = 1
            goto L_0x001b
        L_0x001a:
            r6 = 0
        L_0x001b:
            r7 = 0
        L_0x001c:
            if (r1 <= r3) goto L_0x0021
            r2 = 0
            r3 = 1
            goto L_0x0027
        L_0x0021:
            if (r1 >= r2) goto L_0x0025
            r2 = 1
            goto L_0x0026
        L_0x0025:
            r2 = 0
        L_0x0026:
            r3 = 0
        L_0x0027:
            int r8 = r0 + r1
            int r8 = r8 + -17
            r9 = r0 & 1
            if (r9 != r5) goto L_0x0031
            r9 = 1
            goto L_0x0032
        L_0x0031:
            r9 = 0
        L_0x0032:
            r10 = r1 & 1
            if (r10 != 0) goto L_0x0037
            r4 = 1
        L_0x0037:
            if (r8 != r5) goto L_0x004d
            if (r9 == 0) goto L_0x0044
            if (r4 != 0) goto L_0x003f
        L_0x003d:
            r7 = 1
            goto L_0x0077
        L_0x003f:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x0044:
            if (r4 == 0) goto L_0x0048
            r3 = 1
            goto L_0x0077
        L_0x0048:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x004d:
            r10 = -1
            if (r8 != r10) goto L_0x0064
            if (r9 == 0) goto L_0x005b
            if (r4 != 0) goto L_0x0056
        L_0x0054:
            r6 = 1
            goto L_0x0077
        L_0x0056:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x005b:
            if (r4 == 0) goto L_0x005f
            r2 = 1
            goto L_0x0077
        L_0x005f:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x0064:
            if (r8 != 0) goto L_0x00b1
            if (r9 == 0) goto L_0x0075
            if (r4 == 0) goto L_0x0070
            if (r0 >= r1) goto L_0x006e
            r3 = 1
            goto L_0x0054
        L_0x006e:
            r2 = 1
            goto L_0x003d
        L_0x0070:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x0075:
            if (r4 != 0) goto L_0x00ac
        L_0x0077:
            if (r6 == 0) goto L_0x0088
            if (r7 != 0) goto L_0x0083
            int[] r0 = r11.e
            float[] r1 = r11.c
            a((int[]) r0, (float[]) r1)
            goto L_0x0088
        L_0x0083:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x0088:
            if (r7 == 0) goto L_0x0091
            int[] r0 = r11.e
            float[] r1 = r11.c
            b(r0, r1)
        L_0x0091:
            if (r2 == 0) goto L_0x00a2
            if (r3 != 0) goto L_0x009d
            int[] r0 = r11.f
            float[] r1 = r11.c
            a((int[]) r0, (float[]) r1)
            goto L_0x00a2
        L_0x009d:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x00a2:
            if (r3 == 0) goto L_0x00ab
            int[] r0 = r11.f
            float[] r1 = r11.d
            b(r0, r1)
        L_0x00ab:
            return
        L_0x00ac:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            throw r0
        L_0x00b1:
            com.google.zxing.h r0 = com.google.zxing.h.getNotFoundInstance()
            goto L_0x00b7
        L_0x00b6:
            throw r0
        L_0x00b7:
            goto L_0x00b6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.c.a.a.d.b():void");
    }
}
