package com.github.ybq.android.spinkit.a.a;

import android.graphics.Path;
import android.view.animation.Interpolator;

final class e {
    private e() {
    }

    public static Interpolator create(Path path) {
        return new f(path);
    }

    public static Interpolator create(float f, float f2) {
        return new f(f, f2);
    }

    public static Interpolator create(float f, float f2, float f3, float f4) {
        return new f(f, f2, f3, f4);
    }
}
