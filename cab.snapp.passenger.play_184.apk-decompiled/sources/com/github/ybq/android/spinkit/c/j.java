package com.github.ybq.android.spinkit.c;

import android.animation.ValueAnimator;
import com.github.ybq.android.spinkit.a.a.b;
import com.github.ybq.android.spinkit.b.d;

public final class j extends d {
    public j() {
        setScale(0.0f);
    }

    public final ValueAnimator onCreateAnimation() {
        float[] fArr = {0.0f, 0.7f, 1.0f};
        com.github.ybq.android.spinkit.a.d dVar = new com.github.ybq.android.spinkit.a.d(this);
        Float valueOf = Float.valueOf(1.0f);
        return dVar.scale(fArr, Float.valueOf(0.0f), valueOf, valueOf).alpha(fArr, 255, 178, 0).duration(1000).interpolator(b.pathInterpolator(0.21f, 0.53f, 0.56f, 0.8f, fArr)).build();
    }
}
