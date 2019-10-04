package com.google.zxing.qrcode.decoder;

import com.google.zxing.DecodeHintType;
import com.google.zxing.common.b;
import com.google.zxing.common.b.a;
import com.google.zxing.common.b.c;
import com.google.zxing.common.d;
import java.util.Map;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final c f4415a = new c(a.QR_CODE_FIELD_256);

    public final d decode(boolean[][] zArr) throws com.google.zxing.c, com.google.zxing.d {
        return decode(zArr, (Map<DecodeHintType, ?>) null);
    }

    public final d decode(boolean[][] zArr, Map<DecodeHintType, ?> map) throws com.google.zxing.c, com.google.zxing.d {
        return decode(b.parse(zArr), map);
    }

    public final d decode(b bVar) throws com.google.zxing.c, com.google.zxing.d {
        return decode(bVar, (Map<DecodeHintType, ?>) null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0015 A[Catch:{ c | d -> 0x0075 }] */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0040 A[Catch:{ c | d -> 0x0075 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.zxing.common.d decode(com.google.zxing.common.b r8, java.util.Map<com.google.zxing.DecodeHintType, ?> r9) throws com.google.zxing.d, com.google.zxing.c {
        /*
            r7 = this;
            com.google.zxing.qrcode.decoder.a r0 = new com.google.zxing.qrcode.decoder.a
            r0.<init>(r8)
            r8 = 0
            com.google.zxing.common.d r8 = r7.a((com.google.zxing.qrcode.decoder.a) r0, (java.util.Map<com.google.zxing.DecodeHintType, ?>) r9)     // Catch:{ d -> 0x000f, c -> 0x000b }
            return r8
        L_0x000b:
            r1 = move-exception
            r2 = r1
            r1 = r8
            goto L_0x0011
        L_0x000f:
            r1 = move-exception
            r2 = r8
        L_0x0011:
            com.google.zxing.qrcode.decoder.f r3 = r0.c     // Catch:{ c | d -> 0x0075 }
            if (r3 == 0) goto L_0x002a
            com.google.zxing.qrcode.decoder.c[] r3 = com.google.zxing.qrcode.decoder.c.values()     // Catch:{ c | d -> 0x0075 }
            com.google.zxing.qrcode.decoder.f r4 = r0.c     // Catch:{ c | d -> 0x0075 }
            byte r4 = r4.f4417b     // Catch:{ c | d -> 0x0075 }
            r3 = r3[r4]     // Catch:{ c | d -> 0x0075 }
            com.google.zxing.common.b r4 = r0.f4408a     // Catch:{ c | d -> 0x0075 }
            int r4 = r4.getHeight()     // Catch:{ c | d -> 0x0075 }
            com.google.zxing.common.b r5 = r0.f4408a     // Catch:{ c | d -> 0x0075 }
            r3.a((com.google.zxing.common.b) r5, (int) r4)     // Catch:{ c | d -> 0x0075 }
        L_0x002a:
            r0.f4409b = r8     // Catch:{ c | d -> 0x0075 }
            r0.c = r8     // Catch:{ c | d -> 0x0075 }
            r8 = 1
            r0.d = r8     // Catch:{ c | d -> 0x0075 }
            r0.b()     // Catch:{ c | d -> 0x0075 }
            r0.a()     // Catch:{ c | d -> 0x0075 }
            r8 = 0
        L_0x0038:
            com.google.zxing.common.b r3 = r0.f4408a     // Catch:{ c | d -> 0x0075 }
            int r3 = r3.getWidth()     // Catch:{ c | d -> 0x0075 }
            if (r8 >= r3) goto L_0x0068
            int r3 = r8 + 1
            r4 = r3
        L_0x0043:
            com.google.zxing.common.b r5 = r0.f4408a     // Catch:{ c | d -> 0x0075 }
            int r5 = r5.getHeight()     // Catch:{ c | d -> 0x0075 }
            if (r4 >= r5) goto L_0x0066
            com.google.zxing.common.b r5 = r0.f4408a     // Catch:{ c | d -> 0x0075 }
            boolean r5 = r5.get(r8, r4)     // Catch:{ c | d -> 0x0075 }
            com.google.zxing.common.b r6 = r0.f4408a     // Catch:{ c | d -> 0x0075 }
            boolean r6 = r6.get(r4, r8)     // Catch:{ c | d -> 0x0075 }
            if (r5 == r6) goto L_0x0063
            com.google.zxing.common.b r5 = r0.f4408a     // Catch:{ c | d -> 0x0075 }
            r5.flip(r4, r8)     // Catch:{ c | d -> 0x0075 }
            com.google.zxing.common.b r5 = r0.f4408a     // Catch:{ c | d -> 0x0075 }
            r5.flip(r8, r4)     // Catch:{ c | d -> 0x0075 }
        L_0x0063:
            int r4 = r4 + 1
            goto L_0x0043
        L_0x0066:
            r8 = r3
            goto L_0x0038
        L_0x0068:
            com.google.zxing.common.d r8 = r7.a((com.google.zxing.qrcode.decoder.a) r0, (java.util.Map<com.google.zxing.DecodeHintType, ?>) r9)     // Catch:{ c | d -> 0x0075 }
            com.google.zxing.qrcode.decoder.g r9 = new com.google.zxing.qrcode.decoder.g     // Catch:{ c | d -> 0x0075 }
            r9.<init>()     // Catch:{ c | d -> 0x0075 }
            r8.setOther(r9)     // Catch:{ c | d -> 0x0075 }
            return r8
        L_0x0075:
            if (r1 == 0) goto L_0x0079
            throw r1
        L_0x0079:
            goto L_0x007b
        L_0x007a:
            throw r2
        L_0x007b:
            goto L_0x007a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.decoder.e.decode(com.google.zxing.common.b, java.util.Map):com.google.zxing.common.d");
    }

    private d a(a aVar, Map<DecodeHintType, ?> map) throws com.google.zxing.d, com.google.zxing.c {
        h b2 = aVar.b();
        ErrorCorrectionLevel errorCorrectionLevel = aVar.a().f4416a;
        b[] a2 = b.a(aVar.c(), b2, errorCorrectionLevel);
        int i = 0;
        for (b bVar : a2) {
            i += bVar.f4410a;
        }
        byte[] bArr = new byte[i];
        int length = a2.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            b bVar2 = a2[i2];
            byte[] bArr2 = bVar2.f4411b;
            int i4 = bVar2.f4410a;
            a(bArr2, i4);
            int i5 = i3;
            int i6 = 0;
            while (i6 < i4) {
                bArr[i5] = bArr2[i6];
                i6++;
                i5++;
            }
            i2++;
            i3 = i5;
        }
        return d.a(bArr, b2, errorCorrectionLevel, map);
    }

    private void a(byte[] bArr, int i) throws com.google.zxing.c {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & com.pusher.java_websocket.drafts.c.END_OF_FRAME;
        }
        try {
            this.f4415a.decode(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (com.google.zxing.common.b.d unused) {
            throw com.google.zxing.c.getChecksumInstance();
        }
    }
}
