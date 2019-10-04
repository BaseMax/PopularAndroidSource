package com.google.zxing.common;

public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final float f4321a;

    /* renamed from: b  reason: collision with root package name */
    private final float f4322b;
    private final float c;
    private final float d;
    private final float e;
    private final float f;
    private final float g;
    private final float h;
    private final float i;

    private j(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        this.f4321a = f2;
        this.f4322b = f5;
        this.c = f8;
        this.d = f3;
        this.e = f6;
        this.f = f9;
        this.g = f4;
        this.h = f7;
        this.i = f10;
    }

    public static j quadrilateralToQuadrilateral(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        j quadrilateralToSquare = quadrilateralToSquare(f2, f3, f4, f5, f6, f7, f8, f9);
        j squareToQuadrilateral = squareToQuadrilateral(f10, f11, f12, f13, f14, f15, f16, f17);
        float f18 = squareToQuadrilateral.f4321a;
        float f19 = quadrilateralToSquare.f4321a;
        float f20 = squareToQuadrilateral.d;
        float f21 = quadrilateralToSquare.f4322b;
        float f22 = squareToQuadrilateral.g;
        float f23 = quadrilateralToSquare.c;
        float f24 = (f18 * f19) + (f20 * f21) + (f22 * f23);
        float f25 = quadrilateralToSquare.d;
        float f26 = quadrilateralToSquare.e;
        float f27 = quadrilateralToSquare.f;
        float f28 = quadrilateralToSquare.g;
        float f29 = quadrilateralToSquare.h;
        float f30 = quadrilateralToSquare.i;
        float f31 = (f18 * f28) + (f20 * f29) + (f22 * f30);
        float f32 = squareToQuadrilateral.f4322b;
        float f33 = f31;
        float f34 = squareToQuadrilateral.e;
        float f35 = (f18 * f25) + (f20 * f26) + (f22 * f27);
        float f36 = squareToQuadrilateral.h;
        float f37 = (f32 * f19) + (f34 * f21) + (f36 * f23);
        float f38 = (f32 * f28) + (f34 * f29) + (f36 * f30);
        float f39 = squareToQuadrilateral.c;
        float f40 = squareToQuadrilateral.f;
        float f41 = squareToQuadrilateral.i;
        j jVar = new j(f24, f35, f33, f37, (f32 * f25) + (f34 * f26) + (f36 * f27), f38, (f19 * f39) + (f21 * f40) + (f23 * f41), (f25 * f39) + (f26 * f40) + (f27 * f41), (f39 * f28) + (f40 * f29) + (f41 * f30));
        return jVar;
    }

    public final void transformPoints(float[] fArr) {
        float[] fArr2 = fArr;
        int length = fArr2.length;
        float f2 = this.f4321a;
        float f3 = this.f4322b;
        float f4 = this.c;
        float f5 = this.d;
        float f6 = this.e;
        float f7 = this.f;
        float f8 = this.g;
        float f9 = this.h;
        float f10 = this.i;
        for (int i2 = 0; i2 < length; i2 += 2) {
            float f11 = fArr2[i2];
            int i3 = i2 + 1;
            float f12 = fArr2[i3];
            float f13 = (f4 * f11) + (f7 * f12) + f10;
            fArr2[i2] = (((f2 * f11) + (f5 * f12)) + f8) / f13;
            fArr2[i3] = (((f11 * f3) + (f12 * f6)) + f9) / f13;
        }
    }

    public final void transformPoints(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            float f2 = fArr[i2];
            float f3 = fArr2[i2];
            float f4 = (this.c * f2) + (this.f * f3) + this.i;
            fArr[i2] = (((this.f4321a * f2) + (this.d * f3)) + this.g) / f4;
            fArr2[i2] = (((this.f4322b * f2) + (this.e * f3)) + this.h) / f4;
        }
    }

    public static j squareToQuadrilateral(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        float f10 = ((f2 - f4) + f6) - f8;
        float f11 = ((f3 - f5) + f7) - f9;
        if (f10 == 0.0f && f11 == 0.0f) {
            j jVar = new j(f4 - f2, f6 - f4, f2, f5 - f3, f7 - f5, f3, 0.0f, 0.0f, 1.0f);
            return jVar;
        }
        float f12 = f4 - f6;
        float f13 = f8 - f6;
        float f14 = f5 - f7;
        float f15 = f9 - f7;
        float f16 = (f12 * f15) - (f13 * f14);
        float f17 = ((f15 * f10) - (f13 * f11)) / f16;
        float f18 = ((f12 * f11) - (f10 * f14)) / f16;
        j jVar2 = new j((f17 * f4) + (f4 - f2), (f18 * f8) + (f8 - f2), f2, (f5 - f3) + (f17 * f5), (f9 - f3) + (f18 * f9), f3, f17, f18, 1.0f);
        return jVar2;
    }

    public static j quadrilateralToSquare(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        j squareToQuadrilateral = squareToQuadrilateral(f2, f3, f4, f5, f6, f7, f8, f9);
        float f10 = squareToQuadrilateral.e;
        float f11 = squareToQuadrilateral.i;
        float f12 = squareToQuadrilateral.f;
        float f13 = squareToQuadrilateral.h;
        float f14 = squareToQuadrilateral.g;
        float f15 = squareToQuadrilateral.d;
        float f16 = squareToQuadrilateral.c;
        float f17 = squareToQuadrilateral.f4322b;
        float f18 = squareToQuadrilateral.f4321a;
        j jVar = new j((f10 * f11) - (f12 * f13), (f12 * f14) - (f15 * f11), (f15 * f13) - (f10 * f14), (f16 * f13) - (f17 * f11), (f11 * f18) - (f16 * f14), (f14 * f17) - (f13 * f18), (f17 * f12) - (f16 * f10), (f16 * f15) - (f12 * f18), (f18 * f10) - (f17 * f15));
        return jVar;
    }
}
