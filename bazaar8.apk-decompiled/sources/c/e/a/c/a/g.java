package c.e.a.c.a;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* compiled from: MatrixEvaluator */
public class g implements TypeEvaluator<Matrix> {

    /* renamed from: a  reason: collision with root package name */
    public final float[] f11194a = new float[9];

    /* renamed from: b  reason: collision with root package name */
    public final float[] f11195b = new float[9];

    /* renamed from: c  reason: collision with root package name */
    public final Matrix f11196c = new Matrix();

    /* renamed from: a */
    public Matrix evaluate(float f2, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f11194a);
        matrix2.getValues(this.f11195b);
        for (int i2 = 0; i2 < 9; i2++) {
            float[] fArr = this.f11195b;
            float f3 = fArr[i2];
            float[] fArr2 = this.f11194a;
            fArr[i2] = fArr2[i2] + ((f3 - fArr2[i2]) * f2);
        }
        this.f11196c.setValues(this.f11195b);
        return this.f11196c;
    }
}
