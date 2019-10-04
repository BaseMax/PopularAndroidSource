package com.google.android.material.bottomappbar;

import com.google.android.material.i.b;
import com.google.android.material.i.d;

public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    float f3822a;

    /* renamed from: b  reason: collision with root package name */
    float f3823b;
    float c;
    float d;
    float e;

    public a(float f, float f2, float f3) {
        this.f3823b = f;
        this.f3822a = f2;
        this.d = f3;
        if (f3 >= 0.0f) {
            this.e = 0.0f;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    public final void getEdgePath(float f, float f2, d dVar) {
        float f3 = f;
        d dVar2 = dVar;
        float f4 = this.c;
        if (f4 == 0.0f) {
            dVar2.lineTo(f3, 0.0f);
            return;
        }
        float f5 = ((this.f3823b * 2.0f) + f4) / 2.0f;
        float f6 = f2 * this.f3822a;
        float f7 = (f3 / 2.0f) + this.e;
        float f8 = (this.d * f2) + ((1.0f - f2) * f5);
        if (f8 / f5 >= 1.0f) {
            dVar2.lineTo(f3, 0.0f);
            return;
        }
        float f9 = f5 + f6;
        float f10 = f8 + f6;
        float sqrt = (float) Math.sqrt((double) ((f9 * f9) - (f10 * f10)));
        float f11 = f7 - sqrt;
        float f12 = f7 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan((double) (sqrt / f10)));
        float f13 = 90.0f - degrees;
        float f14 = f11 - f6;
        dVar2.lineTo(f14, 0.0f);
        float f15 = f6 * 2.0f;
        float f16 = degrees;
        dVar.addArc(f14, 0.0f, f11 + f6, f15, 270.0f, degrees);
        dVar.addArc(f7 - f5, (-f5) - f8, f7 + f5, f5 - f8, 180.0f - f13, (f13 * 2.0f) - 180.0f);
        dVar.addArc(f12 - f6, 0.0f, f12 + f6, f15, 270.0f - f16, f16);
        dVar2.lineTo(f3, 0.0f);
    }
}
