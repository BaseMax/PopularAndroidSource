package c.e.a.a.p.a;

import android.opengl.Matrix;
import c.e.a.a.o.E;

/* compiled from: FrameRotationQueue */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final float[] f9655a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    public final float[] f9656b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    public final E<float[]> f9657c = new E<>();

    /* renamed from: d  reason: collision with root package name */
    public boolean f9658d;

    public static void b(float[] fArr, float[] fArr2) {
        float f2 = fArr2[0];
        float f3 = -fArr2[1];
        float f4 = -fArr2[2];
        float length = Matrix.length(f2, f3, f4);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees((double) length), f2 / length, f3 / length, f4 / length);
            return;
        }
        Matrix.setIdentityM(fArr, 0);
    }

    public void a(long j2, float[] fArr) {
        this.f9657c.a(j2, fArr);
    }

    public void a() {
        this.f9657c.a();
        this.f9658d = false;
    }

    public boolean a(float[] fArr, long j2) {
        float[] c2 = this.f9657c.c(j2);
        if (c2 == null) {
            return false;
        }
        b(this.f9656b, c2);
        if (!this.f9658d) {
            a(this.f9655a, this.f9656b);
            this.f9658d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f9655a, 0, this.f9656b, 0);
        return true;
    }

    public static void a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float sqrt = (float) Math.sqrt((double) ((fArr2[10] * fArr2[10]) + (fArr2[8] * fArr2[8])));
        fArr[0] = fArr2[10] / sqrt;
        fArr[2] = fArr2[8] / sqrt;
        fArr[8] = (-fArr2[8]) / sqrt;
        fArr[10] = fArr2[10] / sqrt;
    }
}
