package com.google.zxing.c;

final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f4293a = {1, 1, 2};

    /* renamed from: b  reason: collision with root package name */
    private final m f4294b = new m();
    private final n c = new n();

    o() {
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0137 A[Catch:{ k -> 0x0184 }] */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0139 A[Catch:{ k -> 0x0184 }] */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x016b A[Catch:{ k -> 0x0184 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.zxing.l a(int r19, com.google.zxing.common.a r20, int r21) throws com.google.zxing.h {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            int[] r3 = f4293a
            r4 = 0
            r5 = r21
            int[] r3 = com.google.zxing.c.p.a((com.google.zxing.common.a) r2, (int) r5, (boolean) r4, (int[]) r3)
            com.google.zxing.c.n r5 = r0.c     // Catch:{ k -> 0x0184 }
            java.lang.StringBuilder r6 = r5.c     // Catch:{ k -> 0x0184 }
            r6.setLength(r4)     // Catch:{ k -> 0x0184 }
            int[] r5 = r5.f4292b     // Catch:{ k -> 0x0184 }
            r5[r4] = r4     // Catch:{ k -> 0x0184 }
            r7 = 1
            r5[r7] = r4     // Catch:{ k -> 0x0184 }
            r8 = 2
            r5[r8] = r4     // Catch:{ k -> 0x0184 }
            r9 = 3
            r5[r9] = r4     // Catch:{ k -> 0x0184 }
            int r10 = r20.getSize()     // Catch:{ k -> 0x0184 }
            r11 = r3[r7]     // Catch:{ k -> 0x0184 }
            r12 = r11
            r11 = 0
            r13 = 0
        L_0x002c:
            r14 = 5
            r15 = 48
            r8 = 10
            if (r11 >= r14) goto L_0x0068
            if (r12 >= r10) goto L_0x0068
            int[][] r14 = com.google.zxing.c.p.f     // Catch:{ k -> 0x0184 }
            int r14 = com.google.zxing.c.p.a((com.google.zxing.common.a) r2, (int[]) r5, (int) r12, (int[][]) r14)     // Catch:{ k -> 0x0184 }
            int r16 = r14 % 10
            int r15 = r16 + 48
            char r15 = (char) r15     // Catch:{ k -> 0x0184 }
            r6.append(r15)     // Catch:{ k -> 0x0184 }
            int r15 = r5.length     // Catch:{ k -> 0x0184 }
            r4 = r12
            r12 = 0
        L_0x0046:
            if (r12 >= r15) goto L_0x004f
            r17 = r5[r12]     // Catch:{ k -> 0x0184 }
            int r4 = r4 + r17
            int r12 = r12 + 1
            goto L_0x0046
        L_0x004f:
            r12 = 4
            if (r14 < r8) goto L_0x0058
            int r8 = 4 - r11
            int r8 = r7 << r8
            r8 = r8 | r13
            r13 = r8
        L_0x0058:
            if (r11 == r12) goto L_0x0062
            int r4 = r2.getNextSet(r4)     // Catch:{ k -> 0x0184 }
            int r4 = r2.getNextUnset(r4)     // Catch:{ k -> 0x0184 }
        L_0x0062:
            r12 = r4
            int r11 = r11 + 1
            r4 = 0
            r8 = 2
            goto L_0x002c
        L_0x0068:
            int r4 = r6.length()     // Catch:{ k -> 0x0184 }
            if (r4 != r14) goto L_0x017f
            r4 = 0
        L_0x006f:
            if (r4 >= r8) goto L_0x017a
            int[] r5 = com.google.zxing.c.n.f4291a     // Catch:{ k -> 0x0184 }
            r5 = r5[r4]     // Catch:{ k -> 0x0184 }
            if (r13 != r5) goto L_0x0174
            java.lang.String r5 = r6.toString()     // Catch:{ k -> 0x0184 }
            int r10 = r5.length()     // Catch:{ k -> 0x0184 }
            int r11 = r10 + -2
            r13 = 0
        L_0x0082:
            if (r11 < 0) goto L_0x008f
            char r17 = r5.charAt(r11)     // Catch:{ k -> 0x0184 }
            int r17 = r17 + -48
            int r13 = r13 + r17
            int r11 = r11 + -2
            goto L_0x0082
        L_0x008f:
            int r13 = r13 * 3
            int r10 = r10 - r7
        L_0x0092:
            if (r10 < 0) goto L_0x009d
            char r11 = r5.charAt(r10)     // Catch:{ k -> 0x0184 }
            int r11 = r11 - r15
            int r13 = r13 + r11
            int r10 = r10 + -2
            goto L_0x0092
        L_0x009d:
            int r13 = r13 * 3
            int r13 = r13 % r8
            if (r13 != r4) goto L_0x016f
            java.lang.String r4 = r6.toString()     // Catch:{ k -> 0x0184 }
            int r5 = r4.length()     // Catch:{ k -> 0x0184 }
            r6 = 0
            if (r5 == r14) goto L_0x00b0
        L_0x00ad:
            r8 = r6
            goto L_0x0145
        L_0x00b0:
            r5 = 0
            char r9 = r4.charAt(r5)     // Catch:{ k -> 0x0184 }
            java.lang.String r5 = ""
            if (r9 == r15) goto L_0x00fb
            r10 = 53
            if (r9 == r10) goto L_0x00f8
            r10 = 57
            if (r9 == r10) goto L_0x00c2
            goto L_0x00fd
        L_0x00c2:
            r9 = -1
            int r10 = r4.hashCode()     // Catch:{ k -> 0x0184 }
            switch(r10) {
                case 54118329: goto L_0x00df;
                case 54395376: goto L_0x00d5;
                case 54395377: goto L_0x00cb;
                default: goto L_0x00ca;
            }     // Catch:{ k -> 0x0184 }
        L_0x00ca:
            goto L_0x00e8
        L_0x00cb:
            java.lang.String r10 = "99991"
            boolean r10 = r4.equals(r10)     // Catch:{ k -> 0x0184 }
            if (r10 == 0) goto L_0x00e8
            r9 = 1
            goto L_0x00e8
        L_0x00d5:
            java.lang.String r10 = "99990"
            boolean r10 = r4.equals(r10)     // Catch:{ k -> 0x0184 }
            if (r10 == 0) goto L_0x00e8
            r9 = 2
            goto L_0x00e8
        L_0x00df:
            java.lang.String r10 = "90000"
            boolean r10 = r4.equals(r10)     // Catch:{ k -> 0x0184 }
            if (r10 == 0) goto L_0x00e8
            r9 = 0
        L_0x00e8:
            if (r9 == 0) goto L_0x00f6
            if (r9 == r7) goto L_0x00f3
            r10 = 2
            if (r9 == r10) goto L_0x00f0
            goto L_0x00fd
        L_0x00f0:
            java.lang.String r5 = "Used"
            goto L_0x0135
        L_0x00f3:
            java.lang.String r5 = "0.00"
            goto L_0x0135
        L_0x00f6:
            r5 = r6
            goto L_0x0135
        L_0x00f8:
            java.lang.String r5 = "$"
            goto L_0x00fd
        L_0x00fb:
            java.lang.String r5 = "£"
        L_0x00fd:
            java.lang.String r9 = r4.substring(r7)     // Catch:{ k -> 0x0184 }
            int r9 = java.lang.Integer.parseInt(r9)     // Catch:{ k -> 0x0184 }
            int r10 = r9 / 100
            java.lang.String r10 = java.lang.String.valueOf(r10)     // Catch:{ k -> 0x0184 }
            int r9 = r9 % 100
            if (r9 >= r8) goto L_0x011a
            java.lang.String r8 = "0"
            java.lang.String r9 = java.lang.String.valueOf(r9)     // Catch:{ k -> 0x0184 }
            java.lang.String r8 = r8.concat(r9)     // Catch:{ k -> 0x0184 }
            goto L_0x011e
        L_0x011a:
            java.lang.String r8 = java.lang.String.valueOf(r9)     // Catch:{ k -> 0x0184 }
        L_0x011e:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ k -> 0x0184 }
            r9.<init>()     // Catch:{ k -> 0x0184 }
            r9.append(r5)     // Catch:{ k -> 0x0184 }
            r9.append(r10)     // Catch:{ k -> 0x0184 }
            r5 = 46
            r9.append(r5)     // Catch:{ k -> 0x0184 }
            r9.append(r8)     // Catch:{ k -> 0x0184 }
            java.lang.String r5 = r9.toString()     // Catch:{ k -> 0x0184 }
        L_0x0135:
            if (r5 != 0) goto L_0x0139
            goto L_0x00ad
        L_0x0139:
            java.util.EnumMap r8 = new java.util.EnumMap     // Catch:{ k -> 0x0184 }
            java.lang.Class<com.google.zxing.ResultMetadataType> r9 = com.google.zxing.ResultMetadataType.class
            r8.<init>(r9)     // Catch:{ k -> 0x0184 }
            com.google.zxing.ResultMetadataType r9 = com.google.zxing.ResultMetadataType.SUGGESTED_PRICE     // Catch:{ k -> 0x0184 }
            r8.put(r9, r5)     // Catch:{ k -> 0x0184 }
        L_0x0145:
            com.google.zxing.l r5 = new com.google.zxing.l     // Catch:{ k -> 0x0184 }
            r10 = 2
            com.google.zxing.m[] r9 = new com.google.zxing.m[r10]     // Catch:{ k -> 0x0184 }
            com.google.zxing.m r10 = new com.google.zxing.m     // Catch:{ k -> 0x0184 }
            r11 = 0
            r13 = r3[r11]     // Catch:{ k -> 0x0184 }
            r14 = r3[r7]     // Catch:{ k -> 0x0184 }
            int r13 = r13 + r14
            float r13 = (float) r13     // Catch:{ k -> 0x0184 }
            r14 = 1073741824(0x40000000, float:2.0)
            float r13 = r13 / r14
            float r14 = (float) r1     // Catch:{ k -> 0x0184 }
            r10.<init>(r13, r14)     // Catch:{ k -> 0x0184 }
            r9[r11] = r10     // Catch:{ k -> 0x0184 }
            com.google.zxing.m r10 = new com.google.zxing.m     // Catch:{ k -> 0x0184 }
            float r11 = (float) r12     // Catch:{ k -> 0x0184 }
            r10.<init>(r11, r14)     // Catch:{ k -> 0x0184 }
            r9[r7] = r10     // Catch:{ k -> 0x0184 }
            com.google.zxing.BarcodeFormat r7 = com.google.zxing.BarcodeFormat.UPC_EAN_EXTENSION     // Catch:{ k -> 0x0184 }
            r5.<init>(r4, r6, r9, r7)     // Catch:{ k -> 0x0184 }
            if (r8 == 0) goto L_0x016e
            r5.putAllMetadata(r8)     // Catch:{ k -> 0x0184 }
        L_0x016e:
            return r5
        L_0x016f:
            com.google.zxing.h r4 = com.google.zxing.h.getNotFoundInstance()     // Catch:{ k -> 0x0184 }
            throw r4     // Catch:{ k -> 0x0184 }
        L_0x0174:
            r10 = 2
            r11 = 0
            int r4 = r4 + 1
            goto L_0x006f
        L_0x017a:
            com.google.zxing.h r4 = com.google.zxing.h.getNotFoundInstance()     // Catch:{ k -> 0x0184 }
            throw r4     // Catch:{ k -> 0x0184 }
        L_0x017f:
            com.google.zxing.h r4 = com.google.zxing.h.getNotFoundInstance()     // Catch:{ k -> 0x0184 }
            throw r4     // Catch:{ k -> 0x0184 }
        L_0x0184:
            com.google.zxing.c.m r4 = r0.f4294b
            com.google.zxing.l r1 = r4.a(r1, r2, r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.c.o.a(int, com.google.zxing.common.a, int):com.google.zxing.l");
    }
}
