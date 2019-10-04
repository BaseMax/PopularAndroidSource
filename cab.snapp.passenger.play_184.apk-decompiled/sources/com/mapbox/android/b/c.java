package com.mapbox.android.b;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final float f4901a;

    /* renamed from: b  reason: collision with root package name */
    private final float f4902b;
    private float c;
    private float d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;

    public c(float f2, float f3) {
        this.f4901a = f2;
        this.f4902b = f3;
    }

    public final void addNewPosition(float f2, float f3) {
        this.c = this.e;
        this.d = this.f;
        this.e = f2;
        this.f = f3;
        float f4 = this.c;
        float f5 = this.e;
        this.g = f4 - f5;
        float f6 = this.d;
        float f7 = this.f;
        this.h = f6 - f7;
        this.i = this.f4901a - f5;
        this.j = this.f4902b - f7;
    }

    public final float getInitialX() {
        return this.f4901a;
    }

    public final float getInitialY() {
        return this.f4902b;
    }

    public final float getPreviousX() {
        return this.c;
    }

    public final float getPreviousY() {
        return this.d;
    }

    public final float getCurrentX() {
        return this.e;
    }

    public final float getCurrentY() {
        return this.f;
    }

    public final float getDistanceXSinceLast() {
        return this.g;
    }

    public final float getDistanceYSinceLast() {
        return this.h;
    }

    public final float getDistanceXSinceStart() {
        return this.i;
    }

    public final float getDistanceYSinceStart() {
        return this.j;
    }
}
