package com.github.ybq.android.spinkit.c;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.os.Build;
import com.github.ybq.android.spinkit.a.d;
import com.github.ybq.android.spinkit.b.c;
import com.github.ybq.android.spinkit.b.f;
import com.github.ybq.android.spinkit.b.g;
import io.fabric.sdk.android.services.settings.t;

public final class o extends g {

    class a extends c {
        a() {
            setScaleY(0.4f);
        }

        public final ValueAnimator onCreateAnimation() {
            float[] fArr = {0.0f, 0.2f, 0.4f, 1.0f};
            d dVar = new d(this);
            Float valueOf = Float.valueOf(0.4f);
            return dVar.scaleY(fArr, valueOf, Float.valueOf(1.0f), valueOf, valueOf).duration(1200).easeInOut(fArr).build();
        }
    }

    public final f[] onCreateChild() {
        a[] aVarArr = new a[5];
        for (int i = 0; i < 5; i++) {
            aVarArr[i] = new a();
            if (Build.VERSION.SDK_INT >= 24) {
                aVarArr[i].setAnimationDelay((i * 100) + t.ANALYTICS_FLUSH_INTERVAL_SECS_DEFAULT);
            } else {
                aVarArr[i].setAnimationDelay((i * 100) - 1200);
            }
        }
        return aVarArr;
    }

    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect clipSquare = clipSquare(rect);
        int width = clipSquare.width() / getChildCount();
        int width2 = ((clipSquare.width() / 5) * 3) / 5;
        for (int i = 0; i < getChildCount(); i++) {
            f childAt = getChildAt(i);
            int i2 = clipSquare.left + (i * width) + (width / 5);
            childAt.setDrawBounds(i2, clipSquare.top, i2 + width2, clipSquare.bottom);
        }
    }
}
