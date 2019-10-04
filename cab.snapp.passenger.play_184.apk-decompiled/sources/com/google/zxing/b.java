package com.google.zxing;

import com.google.zxing.common.a;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final a f4237a;

    /* renamed from: b  reason: collision with root package name */
    private com.google.zxing.common.b f4238b;

    public b(a aVar) {
        if (aVar != null) {
            this.f4237a = aVar;
            return;
        }
        throw new IllegalArgumentException("Binarizer must be non-null.");
    }

    public final int getWidth() {
        return this.f4237a.getWidth();
    }

    public final int getHeight() {
        return this.f4237a.getHeight();
    }

    public final a getBlackRow(int i, a aVar) throws h {
        return this.f4237a.getBlackRow(i, aVar);
    }

    public final com.google.zxing.common.b getBlackMatrix() throws h {
        if (this.f4238b == null) {
            this.f4238b = this.f4237a.getBlackMatrix();
        }
        return this.f4238b;
    }

    public final boolean isCropSupported() {
        return this.f4237a.getLuminanceSource().isCropSupported();
    }

    public final b crop(int i, int i2, int i3, int i4) {
        return new b(this.f4237a.createBinarizer(this.f4237a.getLuminanceSource().crop(i, i2, i3, i4)));
    }

    public final boolean isRotateSupported() {
        return this.f4237a.getLuminanceSource().isRotateSupported();
    }

    public final b rotateCounterClockwise() {
        return new b(this.f4237a.createBinarizer(this.f4237a.getLuminanceSource().rotateCounterClockwise()));
    }

    public final b rotateCounterClockwise45() {
        return new b(this.f4237a.createBinarizer(this.f4237a.getLuminanceSource().rotateCounterClockwise45()));
    }

    public final String toString() {
        try {
            return getBlackMatrix().toString();
        } catch (h unused) {
            return "";
        }
    }
}
