package com.google.zxing.b.a;

import com.google.zxing.DecodeHintType;
import com.google.zxing.common.b;
import com.google.zxing.common.b.a;
import com.google.zxing.common.d;
import java.util.Map;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.zxing.common.b.c f4244a = new com.google.zxing.common.b.c(a.MAXICODE_FIELD_64);

    public final d decode(b bVar) throws com.google.zxing.c, com.google.zxing.d {
        return decode(bVar, null);
    }

    public final d decode(b bVar, Map<DecodeHintType, ?> map) throws com.google.zxing.d, com.google.zxing.c {
        byte[] bArr;
        a aVar = new a(bVar);
        byte[] bArr2 = new byte[144];
        int height = aVar.f4242b.getHeight();
        int width = aVar.f4242b.getWidth();
        for (int i = 0; i < height; i++) {
            int[] iArr = a.f4241a[i];
            for (int i2 = 0; i2 < width; i2++) {
                int i3 = iArr[i2];
                if (i3 >= 0 && aVar.f4242b.get(i2, i)) {
                    int i4 = i3 / 6;
                    bArr2[i4] = (byte) (((byte) (1 << (5 - (i3 % 6)))) | bArr2[i4]);
                }
            }
        }
        a(bArr2, 0, 10, 10, 0);
        byte b2 = bArr2[0] & 15;
        if (b2 == 2 || b2 == 3 || b2 == 4) {
            byte[] bArr3 = bArr2;
            a(bArr3, 20, 84, 40, 1);
            a(bArr3, 20, 84, 40, 2);
            bArr = new byte[94];
        } else if (b2 == 5) {
            byte[] bArr4 = bArr2;
            a(bArr4, 20, 68, 56, 1);
            a(bArr4, 20, 68, 56, 2);
            bArr = new byte[78];
        } else {
            throw com.google.zxing.d.getFormatInstance();
        }
        System.arraycopy(bArr2, 0, bArr, 0, 10);
        System.arraycopy(bArr2, 20, bArr, 10, bArr.length - 10);
        return b.a(bArr, (int) b2);
    }

    private void a(byte[] bArr, int i, int i2, int i3, int i4) throws com.google.zxing.c {
        int i5 = i2 + i3;
        int i6 = i4 == 0 ? 1 : 2;
        int[] iArr = new int[(i5 / i6)];
        for (int i7 = 0; i7 < i5; i7++) {
            if (i4 == 0 || i7 % 2 == i4 - 1) {
                iArr[i7 / i6] = bArr[i7 + i] & com.pusher.java_websocket.drafts.c.END_OF_FRAME;
            }
        }
        try {
            this.f4244a.decode(iArr, i3 / i6);
            for (int i8 = 0; i8 < i2; i8++) {
                if (i4 == 0 || i8 % 2 == i4 - 1) {
                    bArr[i8 + i] = (byte) iArr[i8 / i6];
                }
            }
        } catch (com.google.zxing.common.b.d unused) {
            throw com.google.zxing.c.getChecksumInstance();
        }
    }
}
