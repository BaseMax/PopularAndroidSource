package k;

import java.io.UnsupportedEncodingException;

/* compiled from: Base64 */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f15735a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f15736b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    public static byte[] a(String str) {
        int i2;
        int length = str.length();
        while (length > 0) {
            char charAt = str.charAt(length - 1);
            if (charAt != '=' && charAt != 10 && charAt != 13 && charAt != ' ' && charAt != 9) {
                break;
            }
            length--;
        }
        byte[] bArr = new byte[((int) ((((long) length) * 6) / 8))];
        int i3 = 0;
        byte b2 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            char charAt2 = str.charAt(i5);
            if (charAt2 >= 'A' && charAt2 <= 'Z') {
                i2 = charAt2 - 'A';
            } else if (charAt2 >= 'a' && charAt2 <= 'z') {
                i2 = charAt2 - 'G';
            } else if (charAt2 >= '0' && charAt2 <= '9') {
                i2 = charAt2 + 4;
            } else if (charAt2 == '+' || charAt2 == '-') {
                i2 = 62;
            } else if (charAt2 == '/' || charAt2 == '_') {
                i2 = 63;
            } else {
                if (!(charAt2 == 10 || charAt2 == 13 || charAt2 == ' ' || charAt2 == 9)) {
                    return null;
                }
            }
            b2 = (b2 << 6) | ((byte) i2);
            i3++;
            if (i3 % 4 == 0) {
                int i6 = i4 + 1;
                bArr[i4] = (byte) (b2 >> 16);
                int i7 = i6 + 1;
                bArr[i6] = (byte) (b2 >> 8);
                bArr[i7] = (byte) b2;
                i4 = i7 + 1;
            }
        }
        int i8 = i3 % 4;
        if (i8 == 1) {
            return null;
        }
        if (i8 == 2) {
            bArr[i4] = (byte) ((b2 << 12) >> 16);
            i4++;
        } else if (i8 == 3) {
            int i9 = b2 << 6;
            int i10 = i4 + 1;
            bArr[i4] = (byte) (i9 >> 16);
            i4 = i10 + 1;
            bArr[i10] = (byte) (i9 >> 8);
        }
        if (i4 == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, 0, bArr2, 0, i4);
        return bArr2;
    }

    public static String a(byte[] bArr) {
        return a(bArr, f15735a);
    }

    public static String a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[(((bArr.length + 2) / 3) * 4)];
        int length = bArr.length - (bArr.length % 3);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int i4 = i2 + 1;
            bArr3[i2] = bArr2[(bArr[i3] & 255) >> 2];
            int i5 = i4 + 1;
            int i6 = i3 + 1;
            bArr3[i4] = bArr2[((bArr[i3] & 3) << 4) | ((bArr[i6] & 255) >> 4)];
            int i7 = i5 + 1;
            int i8 = i3 + 2;
            bArr3[i5] = bArr2[((bArr[i6] & 15) << 2) | ((bArr[i8] & 255) >> 6)];
            i2 = i7 + 1;
            bArr3[i7] = bArr2[bArr[i8] & 63];
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            int i9 = i2 + 1;
            bArr3[i2] = bArr2[(bArr[length] & 255) >> 2];
            int i10 = i9 + 1;
            bArr3[i9] = bArr2[(bArr[length] & 3) << 4];
            bArr3[i10] = 61;
            bArr3[i10 + 1] = 61;
        } else if (length2 == 2) {
            int i11 = i2 + 1;
            bArr3[i2] = bArr2[(bArr[length] & 255) >> 2];
            int i12 = i11 + 1;
            int i13 = length + 1;
            bArr3[i11] = bArr2[((bArr[i13] & 255) >> 4) | ((bArr[length] & 3) << 4)];
            bArr3[i12] = bArr2[(bArr[i13] & 15) << 2];
            bArr3[i12 + 1] = 61;
        }
        try {
            return new String(bArr3, "US-ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }
}
