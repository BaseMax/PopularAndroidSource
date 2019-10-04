package com.github.ybq.android.spinkit.c;

import android.animation.ValueAnimator;
import android.os.Build;
import com.github.ybq.android.spinkit.a.d;
import com.github.ybq.android.spinkit.b.b;
import com.github.ybq.android.spinkit.b.f;

public final class e extends com.github.ybq.android.spinkit.b.a {

    class a extends b {
        a() {
            setAlpha(0);
        }

        public final ValueAnimator onCreateAnimation() {
            float[] fArr = {0.0f, 0.39f, 0.4f, 1.0f};
            return new d(this).alpha(fArr, 0, 0, 255, 0).duration(1200).easeInOut(fArr).build();
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
