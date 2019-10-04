package com.google.zxing;

import com.google.zxing.common.b;

public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private final f f4226a;

    public abstract a createBinarizer(f fVar);

    public abstract b getBlackMatrix() throws h;

    public abstract com.google.zxing.common.a getBlackRow(int i, com.google.zxing.common.a aVar) throws h;

    protected a(f fVar) {
        this.f4226a = fVar;
    }

    public final f getLuminanceSource() {
        return this.f4226a;
    }

    public final int getWidth() {
        return this.f4226a.getWidth();
    }

    public final int getHeight() {
        return this.f4226a.getHeight();
    }
}
