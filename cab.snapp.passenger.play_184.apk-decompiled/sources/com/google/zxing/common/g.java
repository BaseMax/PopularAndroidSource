package com.google.zxing.common;

import com.google.zxing.a;
import com.google.zxing.f;
import com.google.zxing.h;
import com.pusher.java_websocket.drafts.c;

public class g extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f4317a = new byte[0];

    /* renamed from: b  reason: collision with root package name */
    private byte[] f4318b = f4317a;
    private final int[] c = new int[32];

    public g(f fVar) {
        super(fVar);
    }

    public a getBlackRow(int i, a aVar) throws h {
        f luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        if (aVar == null || aVar.getSize() < width) {
            aVar = new a(width);
        } else {
            aVar.clear();
        }
        a(width);
        byte[] row = luminanceSource.getRow(i, this.f4318b);
        int[] iArr = this.c;
        for (int i2 = 0; i2 < width; i2++) {
            int i3 = (row[i2] & c.END_OF_FRAME) >> 3;
            iArr[i3] = iArr[i3] + 1;
        }
        int a2 = a(iArr);
        if (width < 3) {
            for (int i4 = 0; i4 < width; i4++) {
                if ((row[i4] & c.END_OF_FRAME) < a2) {
                    aVar.set(i4);
                }
            }
        } else {
            byte b2 = row[0] & c.END_OF_FRAME;
            byte b3 = row[1] & c.END_OF_FRAME;
            byte b4 = b2;
            int i5 = 1;
            while (i5 < width - 1) {
                int i6 = i5 + 1;
                byte b5 = row[i6] & c.END_OF_FRAME;
                if ((((b3 << 2) - b4) - b5) / 2 < a2) {
                    aVar.set(i5);
                }
                b4 = b3;
                i5 = i6;
                b3 = b5;
            }
        }
        return aVar;
    }

    public b getBlackMatrix() throws h {
        f luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        b bVar = new b(width, height);
        a(width);
        int[] iArr = this.c;
        for (int i = 1; i < 5; i++) {
            byte[] row = luminanceSource.getRow((height * i) / 5, this.f4318b);
            int i2 = (width << 2) / 5;
            for (int i3 = width / 5; i3 < i2; i3++) {
                int i4 = (row[i3] & c.END_OF_FRAME) >> 3;
                iArr[i4] = iArr[i4] + 1;
            }
        }
        int a2 = a(iArr);
        byte[] matrix = luminanceSource.getMatrix();
        for (int i5 = 0; i5 < height; i5++) {
            int i6 = i5 * width;
            for (int i7 = 0; i7 < width; i7++) {
                if ((matrix[i6 + i7] & c.END_OF_FRAME) < a2) {
                    bVar.set(i7, i5);
                }
            }
        }
        return bVar;
    }

    public a createBinarizer(f fVar) {
        return new g(fVar);
    }

    private void a(int i) {
        if (this.f4318b.length < i) {
            this.f4318b = new byte[i];
        }
        for (int i2 = 0; i2 < 32; i2++) {
            this.c[i2] = 0;
        }
    }

    private static int a(int[] iArr) throws h {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (iArr[i4] > i) {
                i = iArr[i4];
                i3 = i4;
            }
            if (iArr[i4] > i2) {
                i2 = iArr[i4];
            }
        }
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            int i8 = i7 - i3;
            int i9 = iArr[i7] * i8 * i8;
            if (i9 > i6) {
                i5 = i7;
                i6 = i9;
            }
        }
        if (i3 > i5) {
            int i10 = i3;
            i3 = i5;
            i5 = i10;
        }
        if (i5 - i3 > length / 16) {
            int i11 = i5 - 1;
            int i12 = i11;
            int i13 = -1;
            while (i11 > i3) {
                int i14 = i11 - i3;
                int i15 = i14 * i14 * (i5 - i11) * (i2 - iArr[i11]);
                if (i15 > i13) {
                    i12 = i11;
                    i13 = i15;
                }
                i11--;
            }
            return i12 << 3;
        }
        throw h.getNotFoundInstance();
    }
}
