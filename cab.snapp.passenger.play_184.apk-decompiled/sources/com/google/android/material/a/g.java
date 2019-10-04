package com.google.android.material.a;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

public final class g implements TypeEvaluator<Matrix> {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f3767a = new float[9];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f3768b = new float[9];
    private final Matrix c = new Matrix();

    public final Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f3767a);
        matrix2.getValues(this.f3768b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f3768b;
            float f2 = fArr[i];
            float[] fArr2 = this.f3767a;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.c.setValues(this.f3768b);
        return this.c;
    }
}
