package c.c.a.d.h.b;

import android.animation.TimeInterpolator;
import android.view.animation.Interpolator;

/* compiled from: KeyFrameInterpolator */
public class f implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    public TimeInterpolator f4827a;

    /* renamed from: b  reason: collision with root package name */
    public float[] f4828b;

    public f(TimeInterpolator timeInterpolator, float... fArr) {
        this.f4827a = timeInterpolator;
        this.f4828b = fArr;
    }

    public static f a(float... fArr) {
        f fVar = new f(c.a(), new float[0]);
        fVar.b(fArr);
        return fVar;
    }

    public void b(float... fArr) {
        this.f4828b = fArr;
    }

    public synchronized float getInterpolation(float f2) {
        if (this.f4828b.length > 1) {
            int i2 = 0;
            while (i2 < this.f4828b.length - 1) {
                float f3 = this.f4828b[i2];
                i2++;
                float f4 = this.f4828b[i2];
                float f5 = f4 - f3;
                if (f2 >= f3 && f2 <= f4) {
                    return f3 + (this.f4827a.getInterpolation((f2 - f3) / f5) * f5);
                }
            }
        }
        return this.f4827a.getInterpolation(f2);
    }
}
