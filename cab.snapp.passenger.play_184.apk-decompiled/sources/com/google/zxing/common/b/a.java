package com.google.zxing.common.b;

public final class a {
    public static final a AZTEC_DATA_10 = new a(1033, 1024, 1);
    public static final a AZTEC_DATA_12 = new a(4201, 4096, 1);
    public static final a AZTEC_DATA_6 = new a(67, 64, 1);
    public static final a AZTEC_DATA_8;
    public static final a AZTEC_PARAM = new a(19, 16, 1);
    public static final a DATA_MATRIX_FIELD_256;
    public static final a MAXICODE_FIELD_64 = AZTEC_DATA_6;
    public static final a QR_CODE_FIELD_256 = new a(285, 256, 0);

    /* renamed from: a  reason: collision with root package name */
    final int[] f4306a;

    /* renamed from: b  reason: collision with root package name */
    final b f4307b;
    final b c;
    private final int[] d;
    private final int e;
    private final int f;
    private final int g;

    static int b(int i, int i2) {
        return i ^ i2;
    }

    static {
        a aVar = new a(301, 256, 1);
        DATA_MATRIX_FIELD_256 = aVar;
        AZTEC_DATA_8 = aVar;
    }

    public a(int i, int i2, int i3) {
        this.f = i;
        this.e = i2;
        this.g = i3;
        this.f4306a = new int[i2];
        this.d = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.f4306a[i5] = i4;
            i4 <<= 1;
            if (i4 >= i2) {
                i4 = (i4 ^ i) & (i2 - 1);
            }
        }
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.d[this.f4306a[i6]] = i6;
        }
        this.f4307b = new b(this, new int[]{0});
        this.c = new b(this, new int[]{1});
    }

    /* access modifiers changed from: package-private */
    public final b a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        } else if (i2 == 0) {
            return this.f4307b;
        } else {
            int[] iArr = new int[(i + 1)];
            iArr[0] = i2;
            return new b(this, iArr);
        }
    }

    /* access modifiers changed from: package-private */
    public final int a(int i) {
        if (i != 0) {
            return this.d[i];
        }
        throw new IllegalArgumentException();
    }

    /* access modifiers changed from: package-private */
    public final int b(int i) {
        if (i != 0) {
            return this.f4306a[(this.e - this.d[i]) - 1];
        }
        throw new ArithmeticException();
    }

    /* access modifiers changed from: package-private */
    public final int c(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f4306a;
        int[] iArr2 = this.d;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.e - 1)];
    }

    public final int getSize() {
        return this.e;
    }

    public final int getGeneratorBase() {
        return this.g;
    }

    public final String toString() {
        return "GF(0x" + Integer.toHexString(this.f) + ',' + this.e + ')';
    }
}
