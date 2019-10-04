package com.github.ybq.android.spinkit.c;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import com.github.ybq.android.spinkit.a.d;
import com.github.ybq.android.spinkit.b.b;
import com.github.ybq.android.spinkit.b.f;
import com.github.ybq.android.spinkit.b.g;

public final class m extends g {

    class a extends b {
        a() {
            setScale(0.0f);
        }

        public final ValueAnimator onCreateAnimation() {
            float[] fArr = {0.0f, 0.4f, 0.8f, 1.0f};
            d dVar = new d(this);
            Float valueOf = Float.valueOf(0.0f);
            return dVar.scale(fArr, valueOf, Float.valueOf(1.0f), valueOf, valueOf).duration(1400).easeInOut(fArr).build();
        }
    }

    public final f[] onCreateChild() {
        return new f[]{new a(), new a(), new a()};
    }

    public final void onChildCreated(f... fVarArr) {
        super.onChildCreated(fVarArr);
        fVarArr[1].setAnimationDelay(160);
        fVarArr[2].setAnimationDelay(320);
    }

    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect clipSquare = clipSquare(rect);
        int width = clipSquare.width() / 8;
        int centerY = clipSquare.centerY() - width;
        int centerY2 = clipSquare.centerY() + width;
        for (int i = 0; i < getChildCount(); i++) {
            int width2 = ((clipSquare.width() * i) / 3) + clipSquare.left;
            getChildAt(i).setDrawBounds(width2, centerY, (width * 2) + width2, centerY2);
        }
    }
}
