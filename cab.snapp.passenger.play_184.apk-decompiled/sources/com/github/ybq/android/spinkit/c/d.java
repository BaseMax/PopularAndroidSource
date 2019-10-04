package com.github.ybq.android.spinkit.c;

import android.animation.ValueAnimator;
import android.os.Build;
import com.github.ybq.android.spinkit.b.b;
import com.github.ybq.android.spinkit.b.f;
import com.github.ybq.android.spinkit.b.g;

public final class d extends g {

    class a extends b {
        a() {
            setAlpha(153);
            setScale(0.0f);
        }

        public final ValueAnimator onCreateAnimation() {
            float[] fArr = {0.0f, 0.5f, 1.0f};
            com.github.ybq.android.spinkit.a.d dVar = new com.github.ybq.android.spinkit.a.d(this);
            Float valueOf = Float.valueOf(0.0f);
            return dVar.scale(fArr, valueOf, Float.valueOf(1.0f), valueOf).duration(2000).easeInOut(fArr).build();
        }
    }

    public final f[] onCreateChild() {
        return new f[]{new a(), new a()};
    }

    public final void onChildCreated(f... fVarArr) {
        super.onChildCreated(fVarArr);
        if (Build.VERSION.SDK_INT >= 24) {
            fVarArr[1].setAnimationDelay(1000);
        } else {
            fVarArr[1].setAnimationDelay(-1000);
        }
    }
}
