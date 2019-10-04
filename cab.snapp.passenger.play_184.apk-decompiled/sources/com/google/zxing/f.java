package com.google.zxing;

import com.pusher.java_websocket.drafts.c;

public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private final int f4347a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4348b;

    public abstract byte[] getMatrix();

    public abstract byte[] getRow(int i, byte[] bArr);

    public boolean isCropSupported() {
        return false;
    }

    public boolean isRotateSupported() {
        return false;
    }

    protected f(int i, int i2) {
        this.f4347a = i;
        this.f4348b = i2;
    }

    public final int getWidth() {
        return this.f4347a;
    }

    public final int getHeight() {
        return this.f4348b;
    }

    public f crop(int i, int i2, int i3, int i4) {
        throw new UnsupportedOperationException("This luminance source does not support cropping.");
    }

    public f invert() {
        return new e(this);
    }

    public f rotateCounterClockwise() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    public f rotateCounterClockwise45() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 45 degrees.");
    }

    public final String toString() {
        int i = this.f4347a;
        StringBuilder sb = new StringBuilder(this.f4348b * (i + 1));
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < this.f4348b; i2++) {
            bArr = getRow(i2, bArr);
            for (int i3 = 0; i3 < this.f4347a; i3++) {
                byte b2 = bArr[i3] & c.END_OF_FRAME;
                sb.append(b2 < 64 ? '#' : b2 < 128 ? '+' : b2 < 192 ? '.' : ' ');
            }
            sb.append(10);
        }
        return sb.toString();
    }
}
