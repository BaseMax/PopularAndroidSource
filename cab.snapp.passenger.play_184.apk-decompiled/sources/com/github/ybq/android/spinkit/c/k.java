package com.github.ybq.android.spinkit.c;

import android.animation.ValueAnimator;
import com.github.ybq.android.spinkit.a.d;
import com.github.ybq.android.spinkit.b.b;

public final class k extends b {
    public final ValueAnimator onCreateAnimation() {
        float[] fArr = {0.0f, 0.5f, 1.0f};
        return new d(this).rotateX(fArr, 0, -180, -180).rotateY(fArr, 0, 0, -180).duration(1200).easeInOut(fArr).build();
    }
}
