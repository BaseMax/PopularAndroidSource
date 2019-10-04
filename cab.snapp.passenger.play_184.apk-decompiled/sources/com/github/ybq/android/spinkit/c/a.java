package com.github.ybq.android.spinkit.c;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.os.Build;
import android.view.animation.LinearInterpolator;
import com.github.ybq.android.spinkit.a.d;
import com.github.ybq.android.spinkit.b.b;
import com.github.ybq.android.spinkit.b.f;
import com.github.ybq.android.spinkit.b.g;

public final class a extends g {

    /* renamed from: com.github.ybq.android.spinkit.c.a$a  reason: collision with other inner class name */
    class C0056a extends b {
        C0056a() {
            setScale(0.0f);
        }

        public final ValueAnimator onCreateAnimation() {
            float[] fArr = {0.0f, 0.5f, 1.0f};
            d dVar = new d(this);
            Float valueOf = Float.valueOf(0.0f);
            return dVar.scale(fArr, valueOf, Float.valueOf(1.0f), valueOf).duration(2000).easeInOut(fArr).build();
        }
    }

    public final f[] onCreateChild() {
        return new f[]{new C0056a(), new C0056a()};
    }

    public final void onChildCreated(f... fVarArr) {
        super.onChildCreated(fVarArr);
        if (Build.VERSION.SDK_INT >= 24) {
            fVarArr[1].setAnimationDelay(1000);
        } else {
            fVarArr[1].setAnimationDelay(-1000);
        }
    }

    public final ValueAnimator onCreateAnimation() {
        return new d(this).rotate(new float[]{0.0f, 1.0f}, 0, 360).duration(2000).interpolator(new LinearInterpolator()).build();
    }

    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect clipSquare = clipSquare(rect);
        int width = (int) (((float) clipSquare.width()) * 0.6f);
        getChildAt(0).setDrawBounds(clipSquare.right - width, clipSquare.top, clipSquare.right, clipSquare.top + width);
        getChildAt(1).setDrawBounds(clipSquare.right - width, clipSquare.bottom - width, clipSquare.right, clipSquare.bottom);
    }
}
