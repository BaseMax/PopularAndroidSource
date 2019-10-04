package com.farsitel.bazaar.common.util;

public class Base64 {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f12152a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f12153b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f12154c = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9};

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f12155d = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9};

    public static class Base64DecoderException extends Exception {
        public static final long serialVersionUID = 1;
    }

    public static byte[] a(byte[] bArr, int i2, int i3, byte[] bArr2, int i4, byte[] bArr3) {
        int i5 = 0;
        int i6 = (i3 > 0 ? (bArr[i2] << 24) >>> 8 : 0) | (i3 > 1 ? (bArr[i2 + 1] << 24) >>> 16 : 0);
        if (i3 > 2) {
            i5 = (bArr[i2 + 2] << 24) >>> 24;
        }
        int i7 = i6 | i5;
        if (i3 == 1) {
            bArr2[i4] = bArr3[i7 >>> 18];
            bArr2[i4 + 1] = bArr3[(i7 >>> 12) & 63];
            bArr2[i4 + 2] = 61;
            bArr2[i4 + 3] = 61;
            return bArr2;
        } else if (i3 == 2) {
            bArr2[i4] = bArr3[i7 >>> 18];
            bArr2[i4 + 1] = bArr3[(i7 >>> 12) & 63];
            bArr2[i4 + 2] = bArr3[(i7 >>> 6) & 63];
            bArr2[i4 + 3] = 61;
            return bArr2;
        } else if (i3 != 3) {
            return bArr2;
        } else {
            bArr2[i4] = bArr3[i7 >>> 18];
            bArr2[i4 + 1] = bArr3[(i7 >>> 12) & 63];
            bArr2[i4 + 2] = bArr3[(i7 >>> 6) & 63];
            bArr2[i4 + 3] = bArr3[i7 & 63];
            return bArr2;
        }
    }

    public static String a(byte[] bArr) {
        return a(bArr, 0, bArr.length, f12152a, true);
    }

    public static String a(byte[] bArr, boolean z) {
        return a(bArr, 0, bArr.length, f12153b, z);
    }

    public static String a(byte[] bArr, int i2, int i3, byte[] bArr2, boolean z) {
        byte[] a2 = a(bArr, i2, i3, bArr2, Integer.MAX_VALUE);
        int length = a2.length;
        while (!z && length > 0 && a2[length - 1] == 61) {
            length--;
        }
        return new String(a2, 0, length);
    }

    public static byte[] a(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        int i5 = ((i3 + 2) / 3) * 4;
        byte[] bArr3 = new byte[(i5 + (i5 / i4))];
        int i6 = i3 - 2;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < i6) {
            int i10 = ((bArr[i7 + i2] << 24) >>> 8) | ((bArr[(i7 + 1) + i2] << 24) >>> 16) | ((bArr[(i7 + 2) + i2] << 24) >>> 24);
            bArr3[i8] = bArr2[i10 >>> 18];
            int i11 = i8 + 1;
            bArr3[i11] = bArr2[(i10 >>> 12) & 63];
            bArr3[i8 + 2] = bArr2[(i10 >>> 6) & 63];
            bArr3[i8 + 3] = bArr2[i10 & 63];
            i9 += 4;
            if (i9 == i4) {
                bArr3[i8 + 4] = 10;
                i9 = 0;
            } else {
                i11 = i8;
            }
            i7 += 3;
            i8 = i11 + 4;
        }
        if (i7 < i3) {
            a(bArr, i7 + i2, i3 - i7, bArr3, i8, bArr2);
            if (i9 + 4 == i4) {
                bArr3[i8 + 4] = 10;
                i8++;
            }
            i8 += 4;
        }
        if (i8 == bArr3.length) {
            return bArr3;
        }
        throw new AssertionError();
    }
}
