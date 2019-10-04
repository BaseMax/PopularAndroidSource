package com.google.zxing.qrcode.a;

import com.google.zxing.m;

public final class d extends m {

    /* renamed from: a  reason: collision with root package name */
    final int f4396a;

    /* renamed from: b  reason: collision with root package name */
    private final float f4397b;

    d(float f, float f2, float f3) {
        this(f, f2, f3, 1);
    }

    private d(float f, float f2, float f3, int i) {
        super(f, f2);
        this.f4397b = f3;
        this.f4396a = i;
    }

    public final float getEstimatedModuleSize() {
        return this.f4397b;
    }

    /* access modifiers changed from: package-private */
    public final boolean a(float f, float f2, float f3) {
        if (Math.abs(f2 - getY()) > f || Math.abs(f3 - getX()) > f) {
            return false;
        }
        float abs = Math.abs(f - this.f4397b);
        if (abs <= 1.0f || abs <= this.f4397b) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public final d b(float f, float f2, float f3) {
        int i = this.f4396a;
        int i2 = i + 1;
        float x = (((float) i) * getX()) + f2;
        float f4 = (float) i2;
        return new d(x / f4, ((((float) this.f4396a) * getY()) + f) / f4, ((((float) this.f4396a) * this.f4397b) + f3) / f4, i2);
    }
}
