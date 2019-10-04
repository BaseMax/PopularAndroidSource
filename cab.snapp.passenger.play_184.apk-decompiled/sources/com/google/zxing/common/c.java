package com.google.zxing.common;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f4311a;

    /* renamed from: b  reason: collision with root package name */
    private int f4312b;
    private int c;

    public c(byte[] bArr) {
        this.f4311a = bArr;
    }

    public final int getBitOffset() {
        return this.c;
    }

    public final int getByteOffset() {
        return this.f4312b;
    }

    public final int readBits(int i) {
        byte b2;
        if (i <= 0 || i > 32 || i > available()) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
        int i2 = this.c;
        if (i2 > 0) {
            int i3 = 8 - i2;
            int i4 = i < i3 ? i : i3;
            int i5 = i3 - i4;
            byte[] bArr = this.f4311a;
            int i6 = this.f4312b;
            b2 = (((255 >> (8 - i4)) << i5) & bArr[i6]) >> i5;
            i -= i4;
            this.c += i4;
            if (this.c == 8) {
                this.c = 0;
                this.f4312b = i6 + 1;
            }
        } else {
            b2 = 0;
        }
        if (i <= 0) {
            return b2;
        }
        while (i >= 8) {
            byte[] bArr2 = this.f4311a;
            int i7 = this.f4312b;
            b2 = (b2 << 8) | (bArr2[i7] & com.pusher.java_websocket.drafts.c.END_OF_FRAME);
            this.f4312b = i7 + 1;
            i -= 8;
        }
        if (i <= 0) {
            return b2;
        }
        int i8 = 8 - i;
        int i9 = (b2 << i) | ((((255 >> i8) << i8) & this.f4311a[this.f4312b]) >> i8);
        this.c += i;
        return i9;
    }

    public final int available() {
        return ((this.f4311a.length - this.f4312b) * 8) - this.c;
    }
}
