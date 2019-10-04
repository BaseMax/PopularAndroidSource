package com.google.zxing.pdf417.a;

import com.google.zxing.m;

final class f {

    /* renamed from: a  reason: collision with root package name */
    final a f4377a;

    /* renamed from: b  reason: collision with root package name */
    final g[] f4378b = new g[(this.d + 2)];
    c c;
    final int d;

    f(a aVar, c cVar) {
        this.f4377a = aVar;
        this.d = aVar.f4361a;
        this.c = cVar;
    }

    /* access modifiers changed from: package-private */
    public final void a(g gVar) {
        m mVar;
        m mVar2;
        if (gVar != null) {
            h hVar = (h) gVar;
            a aVar = this.f4377a;
            d[] dVarArr = hVar.f4380b;
            for (d dVar : hVar.f4380b) {
                if (dVar != null) {
                    dVar.b();
                }
            }
            hVar.a(dVarArr, aVar);
            c cVar = hVar.f4379a;
            if (hVar.c) {
                mVar = cVar.f4370b;
            } else {
                mVar = cVar.d;
            }
            if (hVar.c) {
                mVar2 = cVar.c;
            } else {
                mVar2 = cVar.e;
            }
            int b2 = hVar.b((int) mVar.getY());
            int b3 = hVar.b((int) mVar2.getY());
            int i = -1;
            int i2 = 0;
            int i3 = 1;
            while (b2 < b3) {
                if (dVarArr[b2] != null) {
                    d dVar2 = dVarArr[b2];
                    int i4 = dVar2.e - i;
                    if (i4 == 0) {
                        i2++;
                    } else {
                        if (i4 == 1) {
                            i3 = Math.max(i3, i2);
                            i = dVar2.e;
                        } else if (i4 < 0 || dVar2.e >= aVar.e || i4 > b2) {
                            dVarArr[b2] = null;
                        } else {
                            if (i3 > 2) {
                                i4 *= i3 - 2;
                            }
                            boolean z = i4 >= b2;
                            for (int i5 = 1; i5 <= i4 && !z; i5++) {
                                z = dVarArr[b2 - i5] != null;
                            }
                            if (z) {
                                dVarArr[b2] = null;
                            } else {
                                i = dVar2.e;
                            }
                        }
                        i2 = 1;
                    }
                }
                b2++;
            }
        }
    }

    static int a(int i, int i2, d dVar) {
        if (dVar == null) {
            return i2;
        }
        if (!dVar.a()) {
            if (dVar.a(i)) {
                dVar.e = i;
                i2 = 0;
            } else {
                i2++;
            }
        }
        return i2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0078, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x007d, code lost:
        throw r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String toString() {
        /*
            r10 = this;
            com.google.zxing.pdf417.a.g[] r0 = r10.f4378b
            r1 = 0
            r2 = r0[r1]
            r3 = 1
            if (r2 != 0) goto L_0x000d
            int r2 = r10.d
            int r2 = r2 + r3
            r2 = r0[r2]
        L_0x000d:
            java.util.Formatter r0 = new java.util.Formatter
            r0.<init>()
            r4 = 0
        L_0x0013:
            com.google.zxing.pdf417.a.d[] r5 = r2.f4380b     // Catch:{ all -> 0x0076 }
            int r5 = r5.length     // Catch:{ all -> 0x0076 }
            if (r4 >= r5) goto L_0x006e
            java.lang.String r5 = "CW %3d:"
            java.lang.Object[] r6 = new java.lang.Object[r3]     // Catch:{ all -> 0x0076 }
            java.lang.Integer r7 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x0076 }
            r6[r1] = r7     // Catch:{ all -> 0x0076 }
            r0.format(r5, r6)     // Catch:{ all -> 0x0076 }
            r5 = 0
        L_0x0026:
            int r6 = r10.d     // Catch:{ all -> 0x0076 }
            r7 = 2
            int r6 = r6 + r7
            if (r5 >= r6) goto L_0x0064
            com.google.zxing.pdf417.a.g[] r6 = r10.f4378b     // Catch:{ all -> 0x0076 }
            r6 = r6[r5]     // Catch:{ all -> 0x0076 }
            java.lang.String r8 = "    |   "
            if (r6 != 0) goto L_0x003a
            java.lang.Object[] r6 = new java.lang.Object[r1]     // Catch:{ all -> 0x0076 }
            r0.format(r8, r6)     // Catch:{ all -> 0x0076 }
            goto L_0x0061
        L_0x003a:
            com.google.zxing.pdf417.a.g[] r6 = r10.f4378b     // Catch:{ all -> 0x0076 }
            r6 = r6[r5]     // Catch:{ all -> 0x0076 }
            com.google.zxing.pdf417.a.d[] r6 = r6.f4380b     // Catch:{ all -> 0x0076 }
            r6 = r6[r4]     // Catch:{ all -> 0x0076 }
            if (r6 != 0) goto L_0x004a
            java.lang.Object[] r6 = new java.lang.Object[r1]     // Catch:{ all -> 0x0076 }
            r0.format(r8, r6)     // Catch:{ all -> 0x0076 }
            goto L_0x0061
        L_0x004a:
            java.lang.String r8 = " %3d|%3d"
            java.lang.Object[] r7 = new java.lang.Object[r7]     // Catch:{ all -> 0x0076 }
            int r9 = r6.e     // Catch:{ all -> 0x0076 }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ all -> 0x0076 }
            r7[r1] = r9     // Catch:{ all -> 0x0076 }
            int r6 = r6.d     // Catch:{ all -> 0x0076 }
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ all -> 0x0076 }
            r7[r3] = r6     // Catch:{ all -> 0x0076 }
            r0.format(r8, r7)     // Catch:{ all -> 0x0076 }
        L_0x0061:
            int r5 = r5 + 1
            goto L_0x0026
        L_0x0064:
            java.lang.String r5 = "%n"
            java.lang.Object[] r6 = new java.lang.Object[r1]     // Catch:{ all -> 0x0076 }
            r0.format(r5, r6)     // Catch:{ all -> 0x0076 }
            int r4 = r4 + 1
            goto L_0x0013
        L_0x006e:
            java.lang.String r1 = r0.toString()     // Catch:{ all -> 0x0076 }
            r0.close()
            return r1
        L_0x0076:
            r1 = move-exception
            throw r1     // Catch:{ all -> 0x0078 }
        L_0x0078:
            r1 = move-exception
            r0.close()     // Catch:{ all -> 0x007c }
        L_0x007c:
            goto L_0x007e
        L_0x007d:
            throw r1
        L_0x007e:
            goto L_0x007d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.a.f.toString():java.lang.String");
    }
}
