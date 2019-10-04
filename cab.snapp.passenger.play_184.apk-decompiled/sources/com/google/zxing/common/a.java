package com.google.zxing.common;

import java.util.Arrays;

public final class a implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private int[] f4300a;

    /* renamed from: b  reason: collision with root package name */
    private int f4301b;

    public a() {
        this.f4301b = 0;
        this.f4300a = new int[1];
    }

    public a(int i) {
        this.f4301b = i;
        this.f4300a = b(i);
    }

    private a(int[] iArr, int i) {
        this.f4300a = iArr;
        this.f4301b = i;
    }

    public final int getSize() {
        return this.f4301b;
    }

    public final int getSizeInBytes() {
        return (this.f4301b + 7) / 8;
    }

    private void a(int i) {
        if (i > (this.f4300a.length << 5)) {
            int[] b2 = b(i);
            int[] iArr = this.f4300a;
            System.arraycopy(iArr, 0, b2, 0, iArr.length);
            this.f4300a = b2;
        }
    }

    public final boolean get(int i) {
        return ((1 << (i & 31)) & this.f4300a[i / 32]) != 0;
    }

    public final void set(int i) {
        int[] iArr = this.f4300a;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    public final void flip(int i) {
        int[] iArr = this.f4300a;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) ^ iArr[i2];
    }

    public final int getNextSet(int i) {
        int i2 = this.f4301b;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (((1 << (i & 31)) - 1) ^ -1) & this.f4300a[i3];
        while (i4 == 0) {
            i3++;
            int[] iArr = this.f4300a;
            if (i3 == iArr.length) {
                return this.f4301b;
            }
            i4 = iArr[i3];
        }
        int numberOfTrailingZeros = (i3 << 5) + Integer.numberOfTrailingZeros(i4);
        int i5 = this.f4301b;
        return numberOfTrailingZeros > i5 ? i5 : numberOfTrailingZeros;
    }

    public final int getNextUnset(int i) {
        int i2 = this.f4301b;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (((1 << (i & 31)) - 1) ^ -1) & (this.f4300a[i3] ^ -1);
        while (i4 == 0) {
            i3++;
            int[] iArr = this.f4300a;
            if (i3 == iArr.length) {
                return this.f4301b;
            }
            i4 = iArr[i3] ^ -1;
        }
        int numberOfTrailingZeros = (i3 << 5) + Integer.numberOfTrailingZeros(i4);
        int i5 = this.f4301b;
        return numberOfTrailingZeros > i5 ? i5 : numberOfTrailingZeros;
    }

    public final void setBulk(int i, int i2) {
        this.f4300a[i / 32] = i2;
    }

    public final void setRange(int i, int i2) {
        if (i2 < i || i < 0 || i2 > this.f4301b) {
            throw new IllegalArgumentException();
        } else if (i2 != i) {
            int i3 = i2 - 1;
            int i4 = i / 32;
            int i5 = i3 / 32;
            int i6 = i4;
            while (i6 <= i5) {
                int i7 = 31;
                int i8 = i6 > i4 ? 0 : i & 31;
                if (i6 >= i5) {
                    i7 = 31 & i3;
                }
                int i9 = (2 << i7) - (1 << i8);
                int[] iArr = this.f4300a;
                iArr[i6] = i9 | iArr[i6];
                i6++;
            }
        }
    }

    public final void clear() {
        int length = this.f4300a.length;
        for (int i = 0; i < length; i++) {
            this.f4300a[i] = 0;
        }
    }

    public final boolean isRange(int i, int i2, boolean z) {
        if (i2 < i || i < 0 || i2 > this.f4301b) {
            throw new IllegalArgumentException();
        } else if (i2 == i) {
            return true;
        } else {
            int i3 = i2 - 1;
            int i4 = i / 32;
            int i5 = i3 / 32;
            int i6 = i4;
            while (i6 <= i5) {
                int i7 = 31;
                int i8 = i6 > i4 ? 0 : i & 31;
                if (i6 >= i5) {
                    i7 = 31 & i3;
                }
                int i9 = (2 << i7) - (1 << i8);
                int i10 = this.f4300a[i6] & i9;
                if (!z) {
                    i9 = 0;
                }
                if (i10 != i9) {
                    return false;
                }
                i6++;
            }
            return true;
        }
    }

    public final void appendBit(boolean z) {
        a(this.f4301b + 1);
        if (z) {
            int[] iArr = this.f4300a;
            int i = this.f4301b;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.f4301b++;
    }

    public final void appendBits(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        a(this.f4301b + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            appendBit(z);
            i2--;
        }
    }

    public final void appendBitArray(a aVar) {
        int i = aVar.f4301b;
        a(this.f4301b + i);
        for (int i2 = 0; i2 < i; i2++) {
            appendBit(aVar.get(i2));
        }
    }

    public final void xor(a aVar) {
        if (this.f4301b == aVar.f4301b) {
            int i = 0;
            while (true) {
                int[] iArr = this.f4300a;
                if (i < iArr.length) {
                    iArr[i] = iArr[i] ^ aVar.f4300a[i];
                    i++;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Sizes don't match");
        }
    }

    public final void toBytes(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        int i5 = 0;
        while (i5 < i3) {
            int i6 = i4;
            int i7 = 0;
            for (int i8 = 0; i8 < 8; i8++) {
                if (get(i6)) {
                    i7 |= 1 << (7 - i8);
                }
                i6++;
            }
            bArr[i2 + i5] = (byte) i7;
            i5++;
            i4 = i6;
        }
    }

    public final int[] getBitArray() {
        return this.f4300a;
    }

    public final void reverse() {
        int[] iArr = new int[this.f4300a.length];
        int i = (this.f4301b - 1) / 32;
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            long j = (long) this.f4300a[i3];
            long j2 = ((j & 1431655765) << 1) | ((j >> 1) & 1431655765);
            long j3 = ((j2 & 858993459) << 2) | ((j2 >> 2) & 858993459);
            long j4 = ((j3 & 252645135) << 4) | ((j3 >> 4) & 252645135);
            long j5 = ((j4 & 16711935) << 8) | ((j4 >> 8) & 16711935);
            iArr[i - i3] = (int) (((j5 & 65535) << 16) | ((j5 >> 16) & 65535));
        }
        int i4 = this.f4301b;
        int i5 = i2 << 5;
        if (i4 != i5) {
            int i6 = i5 - i4;
            int i7 = iArr[0] >>> i6;
            for (int i8 = 1; i8 < i2; i8++) {
                int i9 = iArr[i8];
                iArr[i8 - 1] = i7 | (i9 << (32 - i6));
                i7 = i9 >>> i6;
            }
            iArr[i2 - 1] = i7;
        }
        this.f4300a = iArr;
    }

    private static int[] b(int i) {
        return new int[((i + 31) / 32)];
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f4301b != aVar.f4301b || !Arrays.equals(this.f4300a, aVar.f4300a)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (this.f4301b * 31) + Arrays.hashCode(this.f4300a);
    }

    public final String toString() {
        int i = this.f4301b;
        StringBuilder sb = new StringBuilder(i + (i / 8) + 1);
        for (int i2 = 0; i2 < this.f4301b; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(get(i2) ? 'X' : '.');
        }
        return sb.toString();
    }

    public final a clone() {
        return new a((int[]) this.f4300a.clone(), this.f4301b);
    }
}
