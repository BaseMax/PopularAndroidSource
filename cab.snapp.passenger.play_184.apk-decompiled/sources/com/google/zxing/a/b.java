package com.google.zxing.a;

import com.google.zxing.d;
import com.google.zxing.h;
import com.google.zxing.j;
import com.google.zxing.l;

public final class b implements j {
    public final void reset() {
    }

    public final l decode(com.google.zxing.b bVar) throws h, d {
        return decode(bVar, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x008f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.zxing.l decode(com.google.zxing.b r13, java.util.Map<com.google.zxing.DecodeHintType, ?> r14) throws com.google.zxing.h, com.google.zxing.d {
        /*
            r12 = this;
            com.google.zxing.a.b.a r0 = new com.google.zxing.a.b.a
            com.google.zxing.common.b r13 = r13.getBlackMatrix()
            r0.<init>(r13)
            r13 = 0
            r1 = 0
            com.google.zxing.a.a r2 = r0.detect(r13)     // Catch:{ h -> 0x002b, d -> 0x0025 }
            com.google.zxing.m[] r3 = r2.getPoints()     // Catch:{ h -> 0x002b, d -> 0x0025 }
            com.google.zxing.a.a.a r4 = new com.google.zxing.a.a.a     // Catch:{ h -> 0x0023, d -> 0x0021 }
            r4.<init>()     // Catch:{ h -> 0x0023, d -> 0x0021 }
            com.google.zxing.common.d r2 = r4.decode(r2)     // Catch:{ h -> 0x0023, d -> 0x0021 }
            r4 = r3
            r3 = r1
            r1 = r2
            r2 = r3
            goto L_0x002f
        L_0x0021:
            r2 = move-exception
            goto L_0x0027
        L_0x0023:
            r2 = move-exception
            goto L_0x002d
        L_0x0025:
            r2 = move-exception
            r3 = r1
        L_0x0027:
            r4 = r3
            r3 = r2
            r2 = r1
            goto L_0x002f
        L_0x002b:
            r2 = move-exception
            r3 = r1
        L_0x002d:
            r4 = r3
            r3 = r1
        L_0x002f:
            if (r1 != 0) goto L_0x004e
            r1 = 1
            com.google.zxing.a.a r0 = r0.detect(r1)     // Catch:{ h -> 0x0046, d -> 0x0044 }
            com.google.zxing.m[] r4 = r0.getPoints()     // Catch:{ h -> 0x0046, d -> 0x0044 }
            com.google.zxing.a.a.a r1 = new com.google.zxing.a.a.a     // Catch:{ h -> 0x0046, d -> 0x0044 }
            r1.<init>()     // Catch:{ h -> 0x0046, d -> 0x0044 }
            com.google.zxing.common.d r1 = r1.decode(r0)     // Catch:{ h -> 0x0046, d -> 0x0044 }
            goto L_0x004e
        L_0x0044:
            r13 = move-exception
            goto L_0x0047
        L_0x0046:
            r13 = move-exception
        L_0x0047:
            if (r2 != 0) goto L_0x004d
            if (r3 == 0) goto L_0x004c
            throw r3
        L_0x004c:
            throw r13
        L_0x004d:
            throw r2
        L_0x004e:
            r8 = r4
            if (r14 == 0) goto L_0x0066
            com.google.zxing.DecodeHintType r0 = com.google.zxing.DecodeHintType.NEED_RESULT_POINT_CALLBACK
            java.lang.Object r14 = r14.get(r0)
            com.google.zxing.n r14 = (com.google.zxing.n) r14
            if (r14 == 0) goto L_0x0066
            int r0 = r8.length
        L_0x005c:
            if (r13 >= r0) goto L_0x0066
            r2 = r8[r13]
            r14.foundPossibleResultPoint(r2)
            int r13 = r13 + 1
            goto L_0x005c
        L_0x0066:
            com.google.zxing.l r13 = new com.google.zxing.l
            java.lang.String r5 = r1.getText()
            byte[] r6 = r1.getRawBytes()
            int r7 = r1.getNumBits()
            com.google.zxing.BarcodeFormat r9 = com.google.zxing.BarcodeFormat.AZTEC
            long r10 = java.lang.System.currentTimeMillis()
            r4 = r13
            r4.<init>(r5, r6, r7, r8, r9, r10)
            java.util.List r14 = r1.getByteSegments()
            if (r14 == 0) goto L_0x0089
            com.google.zxing.ResultMetadataType r0 = com.google.zxing.ResultMetadataType.BYTE_SEGMENTS
            r13.putMetadata(r0, r14)
        L_0x0089:
            java.lang.String r14 = r1.getECLevel()
            if (r14 == 0) goto L_0x0094
            com.google.zxing.ResultMetadataType r0 = com.google.zxing.ResultMetadataType.ERROR_CORRECTION_LEVEL
            r13.putMetadata(r0, r14)
        L_0x0094:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.a.b.decode(com.google.zxing.b, java.util.Map):com.google.zxing.l");
    }
}
