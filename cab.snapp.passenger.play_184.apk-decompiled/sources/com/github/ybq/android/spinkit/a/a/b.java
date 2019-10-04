package com.github.ybq.android.spinkit.a.a;

import android.animation.TimeInterpolator;
import android.view.animation.Interpolator;

public final class b implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    private TimeInterpolator f2519a;

    /* renamed from: b  reason: collision with root package name */
    private float[] f2520b;

    public static b easeInOut(float... fArr) {
        b bVar = new b(a.inOut(), new float[0]);
        bVar.setFractions(fArr);
        return bVar;
    }

    public static b pathInterpolator(float f, float f2, float f3, float f4, float... fArr) {
        b bVar = new b(c.create(f, f2, f3, f4), new float[0]);
        bVar.setFractions(fArr);
        return bVar;
    }

    public b(TimeInterpolator timeInterpolator, float... fArr) {
        this.f2519a = timeInterpolator;
        this.f2520b = fArr;
    }

    public final void setFractions(float... fArr) {
        this.f2520b = fArr;
    }

    public final float getInterpolation(float f) {
        if (this.f2520b.length > 1) {
            int i = 0;
            while (true) {
                float[] fArr = this.f2520b;
                if (i >= fArr.length - 1) {
                    break;
                }
                float f2 = fArr[i];
                i++;
                float f3 = fArr[i];
                float f4 = f3 - f2;
                if (f >= f2 && f <= f3) {
                    return f2 + (this.f2519a.getInterpolation((f - f2) / f4) * f4);
                }
            }
        }
        return this.f2519a.getInterpolation(f);
    }
}
