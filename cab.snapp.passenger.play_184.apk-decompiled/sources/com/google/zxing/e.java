package com.google.zxing;

import com.pusher.java_websocket.drafts.c;

public final class e extends f {

    /* renamed from: a  reason: collision with root package name */
    private final f f4346a;

    public e(f fVar) {
        super(fVar.getWidth(), fVar.getHeight());
        this.f4346a = fVar;
    }

    public final byte[] getRow(int i, byte[] bArr) {
        byte[] row = this.f4346a.getRow(i, bArr);
        int width = getWidth();
        for (int i2 = 0; i2 < width; i2++) {
            row[i2] = (byte) (255 - (row[i2] & c.END_OF_FRAME));
        }
        return row;
    }

    public final byte[] getMatrix() {
        byte[] matrix = this.f4346a.getMatrix();
        int width = getWidth() * getHeight();
        byte[] bArr = new byte[width];
        for (int i = 0; i < width; i++) {
            bArr[i] = (byte) (255 - (matrix[i] & c.END_OF_FRAME));
        }
        return bArr;
    }

    public final boolean isCropSupported() {
        return this.f4346a.isCropSupported();
    }

    public final f crop(int i, int i2, int i3, int i4) {
        return new e(this.f4346a.crop(i, i2, i3, i4));
    }

    public final boolean isRotateSupported() {
        return this.f4346a.isRotateSupported();
    }

    public final f invert() {
        return this.f4346a;
    }

    public final f rotateCounterClockwise() {
        return new e(this.f4346a.rotateCounterClockwise());
    }

    public final f rotateCounterClockwise45() {
        return new e(this.f4346a.rotateCounterClockwise45());
    }
}
