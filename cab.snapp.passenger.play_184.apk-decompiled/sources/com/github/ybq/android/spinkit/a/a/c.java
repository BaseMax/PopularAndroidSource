package com.github.ybq.android.spinkit.a.a;

import android.graphics.Path;
import android.os.Build;
import android.view.animation.Interpolator;

public final class c {
    private c() {
    }

    public static Interpolator create(Path path) {
        if (Build.VERSION.SDK_INT >= 21) {
            return d.create(path);
        }
        return e.create(path);
    }

    public static Interpolator create(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return d.create(f, f2);
        }
        return e.create(f, f2);
    }

    public static Interpolator create(float f, float f2, float f3, float f4) {
        if (Build.VERSION.SDK_INT >= 21) {
            return d.create(f, f2, f3, f4);
        }
        return e.create(f, f2, f3, f4);
    }
}
