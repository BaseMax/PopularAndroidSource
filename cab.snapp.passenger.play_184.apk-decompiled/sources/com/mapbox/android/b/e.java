package com.mapbox.android.b;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final float f4903a;

    /* renamed from: b  reason: collision with root package name */
    private final float f4904b;
    private final float c;
    private final float d;
    private final float e;
    private final float f;

    public e(float f2, float f3, float f4, float f5) {
        this.f4903a = f2;
        this.f4904b = f3;
        this.c = f4;
        this.d = f5;
        this.e = (float) Math.sqrt((double) ((f2 * f2) + (f3 * f3)));
        this.f = (float) Math.sqrt((double) ((f4 * f4) + (f5 * f5)));
    }

    public final float getPrevFingersDiffX() {
        return this.f4903a;
    }

    public final float getPrevFingersDiffY() {
        return this.f4904b;
    }

    public final float getCurrFingersDiffX() {
        return this.c;
    }

    public final float getCurrFingersDiffY() {
        return this.d;
    }

    public final float getPrevFingersDiffXY() {
        return this.e;
    }

    public final float getCurrFingersDiffXY() {
        return this.f;
    }
}
