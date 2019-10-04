package com.github.ybq.android.spinkit.c;

import android.animation.ValueAnimator;
import com.github.ybq.android.spinkit.a.d;
import com.github.ybq.android.spinkit.b.b;

public final class i extends b {
    public i() {
        setScale(0.0f);
    }

    public final ValueAnimator onCreateAnimation() {
        float[] fArr = {0.0f, 1.0f};
        return new d(this).scale(fArr, Float.valueOf(0.0f), Float.valueOf(1.0f)).alpha(fArr, 255, 0).duration(1000).easeInOut(fArr).build();
    }
}
