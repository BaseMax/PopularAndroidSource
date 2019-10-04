package com.google.zxing.common;

import java.util.Arrays;

public final class b implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private final int f4304a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4305b;
    private final int c;
    private final int[] d;

    public b(int i) {
        this(i, i);
    }

    public b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f4304a = i;
        this.f4305b = i2;
        this.c = (i + 31) / 32;
        this.d = new int[(this.c * i2)];
    }

    private b(int i, int i2, int i3, int[] iArr) {
        this.f4304a = i;
        this.f4305b = i2;
        this.c = i3;
        this.d = iArr;
    }

    public static b parse(boolean[][] zArr) {
        int length = zArr.length;
        int length2 = zArr[0].length;
        b bVar = new b(length2, length);
        for (int i = 0; i < length; i++) {
            boolean[] zArr2 = zArr[i];
            for (int i2 = 0; i2 < length2; i2++) {
                if (zArr2[i2]) {
                    bVar.set(i2, i);
                }
            }
        }
        return bVar;
    }

    public static b parse(String str, String str2, String str3) {
        if (str != null) {
            boolean[] zArr = new boolean[str.length()];
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = -1;
            int i5 = 0;
            while (i < str.length()) {
                if (str.charAt(i) == 10 || str.charAt(i) == 13) {
                    if (i2 > i3) {
                        if (i4 == -1) {
                            i4 = i2 - i3;
                        } else if (i2 - i3 != i4) {
                            throw new IllegalArgumentException("row lengths do not match");
                        }
                        i5++;
                        i3 = i2;
                    }
                    i++;
                } else {
                    if (str.substring(i, str2.length() + i).equals(str2)) {
                        i += str2.length();
                        zArr[i2] = true;
                    } else if (str.substring(i, str3.length() + i).equals(str3)) {
                        i += str3.length();
                        zArr[i2] = false;
                    } else {
                        throw new IllegalArgumentException("illegal character encountered: " + str.substring(i));
                    }
                    i2++;
                }
            }
            if (i2 > i3) {
                if (i4 == -1) {
                    i4 = i2 - i3;
                } else if (i2 - i3 != i4) {
                    throw new IllegalArgumentException("row lengths do not match");
                }
                i5++;
            }
            b bVar = new b(i4, i5);
            for (int i6 = 0; i6 < i2; i6++) {
                if (zArr[i6]) {
                    bVar.set(i6 % i4, i6 / i4);
                }
            }
            return bVar;
        }
        throw new IllegalArgumentException();
    }

    public final boolean get(int i, int i2) {
        return ((this.d[(i2 * this.c) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    public final void set(int i, int i2) {
        int i3 = (i2 * this.c) + (i / 32);
        int[] iArr = this.d;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public final void unset(int i, int i2) {
        int i3 = (i2 * this.c) + (i / 32);
        int[] iArr = this.d;
        iArr[i3] = ((1 << (i & 31)) ^ -1) & iArr[i3];
    }

    public final void flip(int i, int i2) {
        int i3 = (i2 * this.c) + (i / 32);
        int[] iArr = this.d;
        iArr[i3] = (1 << (i & 31)) ^ iArr[i3];
    }

    public final void xor(b bVar) {
        if (this.f4304a == bVar.getWidth() && this.f4305b == bVar.getHeight() && this.c == bVar.getRowSize()) {
            a aVar = new a(this.f4304a);
            for (int i = 0; i < this.f4305b; i++) {
                int i2 = this.c * i;
                int[] bitArray = bVar.getRow(i, aVar).getBitArray();
                for (int i3 = 0; i3 < this.c; i3++) {
                    int[] iArr = this.d;
                    int i4 = i2 + i3;
                    iArr[i4] = iArr[i4] ^ bitArray[i3];
                }
            }
            return;
        }
        throw new IllegalArgumentException("input matrix dimensions do not match");
    }

    public final void clear() {
        int length = this.d.length;
        for (int i = 0; i < length; i++) {
            this.d[i] = 0;
        }
    }

    public final void setRegion(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        } else if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        } else {
            int i5 = i3 + i;
            int i6 = i4 + i2;
            if (i6 > this.f4305b || i5 > this.f4304a) {
                throw new IllegalArgumentException("The region must fit inside the matrix");
            }
            while (i2 < i6) {
                int i7 = this.c * i2;
                for (int i8 = i; i8 < i5; i8++) {
                    int[] iArr = this.d;
                    int i9 = (i8 / 32) + i7;
                    iArr[i9] = iArr[i9] | (1 << (i8 & 31));
                }
                i2++;
            }
        }
    }

    public final a getRow(int i, a aVar) {
        if (aVar == null || aVar.getSize() < this.f4304a) {
            aVar = new a(this.f4304a);
        } else {
            aVar.clear();
        }
        int i2 = i * this.c;
        for (int i3 = 0; i3 < this.c; i3++) {
            aVar.setBulk(i3 << 5, this.d[i2 + i3]);
        }
        return aVar;
    }

    public final void setRow(int i, a aVar) {
        int[] bitArray = aVar.getBitArray();
        int[] iArr = this.d;
        int i2 = this.c;
        System.arraycopy(bitArray, 0, iArr, i * i2, i2);
    }

    public final void rotate180() {
        int width = getWidth();
        int height = getHeight();
        a aVar = new a(width);
        a aVar2 = new a(width);
        for (int i = 0; i < (height + 1) / 2; i++) {
            aVar = getRow(i, aVar);
            int i2 = (height - 1) - i;
            aVar2 = getRow(i2, aVar2);
            aVar.reverse();
            aVar2.reverse();
            setRow(i, aVar2);
            setRow(i2, aVar);
        }
    }

    public final int[] getEnclosingRectangle() {
        int i = this.f4304a;
        int i2 = -1;
        int i3 = this.f4305b;
        int i4 = -1;
        int i5 = i;
        int i6 = 0;
        while (i6 < this.f4305b) {
            int i7 = i4;
            int i8 = i2;
            int i9 = i5;
            int i10 = 0;
            while (true) {
                int i11 = this.c;
                if (i10 >= i11) {
                    break;
                }
                int i12 = this.d[(i11 * i6) + i10];
                if (i12 != 0) {
                    if (i6 < i3) {
                        i3 = i6;
                    }
                    if (i6 > i7) {
                        i7 = i6;
                    }
                    int i13 = i10 << 5;
                    int i14 = 31;
                    if (i13 < i9) {
                        int i15 = 0;
                        while ((i12 << (31 - i15)) == 0) {
                            i15++;
                        }
                        int i16 = i15 + i13;
                        if (i16 < i9) {
                            i9 = i16;
                        }
                    }
                    if (i13 + 31 > i8) {
                        while ((i12 >>> i14) == 0) {
                            i14--;
                        }
                        int i17 = i13 + i14;
                        if (i17 > i8) {
                            i8 = i17;
                        }
                    }
                }
                i10++;
            }
            i6++;
            i5 = i9;
            i2 = i8;
            i4 = i7;
        }
        if (i2 < i5 || i4 < i3) {
            return null;
        }
        return new int[]{i5, i3, (i2 - i5) + 1, (i4 - i3) + 1};
    }

    public final int[] getTopLeftOnBit() {
        int i = 0;
        while (true) {
            int[] iArr = this.d;
            if (i >= iArr.length || iArr[i] != 0) {
                int[] iArr2 = this.d;
            } else {
                i++;
            }
        }
        int[] iArr22 = this.d;
        if (i == iArr22.length) {
            return null;
        }
        int i2 = this.c;
        int i3 = i / i2;
        int i4 = (i % i2) << 5;
        int i5 = iArr22[i];
        int i6 = 0;
        while ((i5 << (31 - i6)) == 0) {
            i6++;
        }
        return new int[]{i4 + i6, i3};
    }

    public final int[] getBottomRightOnBit() {
        int length = this.d.length - 1;
        while (length >= 0 && this.d[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i = this.c;
        int i2 = length / i;
        int i3 = (length % i) << 5;
        int i4 = 31;
        while ((this.d[length] >>> i4) == 0) {
            i4--;
        }
        return new int[]{i3 + i4, i2};
    }

    public final int getWidth() {
        return this.f4304a;
    }

    public final int getHeight() {
        return this.f4305b;
    }

    public final int getRowSize() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f4304a == bVar.f4304a && this.f4305b == bVar.f4305b && this.c == bVar.c && Arrays.equals(this.d, bVar.d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f4304a;
        return (((((((i * 31) + i) * 31) + this.f4305b) * 31) + this.c) * 31) + Arrays.hashCode(this.d);
    }

    public final String toString() {
        return toString("X ", "  ");
    }

    public final String toString(String str, String str2) {
        return a(str, str2, "\n");
    }

    @Deprecated
    public final String toString(String str, String str2, String str3) {
        return a(str, str2, str3);
    }

    private String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.f4305b * (this.f4304a + 1));
        for (int i = 0; i < this.f4305b; i++) {
            for (int i2 = 0; i2 < this.f4304a; i2++) {
                sb.append(get(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    public final b clone() {
        return new b(this.f4304a, this.f4305b, this.c, (int[]) this.d.clone());
    }
}
