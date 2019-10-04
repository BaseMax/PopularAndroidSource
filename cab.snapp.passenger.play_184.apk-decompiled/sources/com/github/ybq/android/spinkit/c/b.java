package com.github.ybq.android.spinkit.c;

import android.animation.ValueAnimator;
import android.os.Build;
import com.github.ybq.android.spinkit.a.d;
import com.github.ybq.android.spinkit.b.f;

public final class b extends com.github.ybq.android.spinkit.b.a {

    class a extends com.github.ybq.android.spinkit.b.b {
        a() {
            setScale(0.0f);
        }

        public final ValueAnimator onCreateAnimation() {
            float[] fArr = {0.0f, 0.5f, 1.0f};
            d dVar = new d(this);
            Float valueOf = Float.valueOf(0.0f);
            return dVar.scale(fArr, valueOf, Float.valueOf(1.0f), valueOf).duration(1200).easeInOut(fArr).build();
        }
    }

    public final f[] onCreateChild() {
        a[] aVarArr = new a[12];
        for (int i = 0; i < 12; i++) {
            aVarArr[i] = new a();
            if (Build.VERSION.SDK_INT >= 24) {
                aVarArr[i].setAnimationDelay(i * 100);
            } else {
                aVarArr[i].setAnimationDelay((i * 100) - 1200);
            }
        }
        return aVarArr;
    }
}
