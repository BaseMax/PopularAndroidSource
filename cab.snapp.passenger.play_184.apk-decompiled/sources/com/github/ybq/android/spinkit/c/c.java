package com.github.ybq.android.spinkit.c;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import com.github.ybq.android.spinkit.a.d;
import com.github.ybq.android.spinkit.b.f;
import com.github.ybq.android.spinkit.b.g;

public final class c extends g {

    class a extends com.github.ybq.android.spinkit.b.c {
        private a() {
        }

        /* synthetic */ a(c cVar, byte b2) {
            this();
        }

        public final ValueAnimator onCreateAnimation() {
            float[] fArr = {0.0f, 0.35f, 0.7f, 1.0f};
            d dVar = new d(this);
            Float valueOf = Float.valueOf(1.0f);
            return dVar.scale(fArr, valueOf, Float.valueOf(0.0f), valueOf, valueOf).duration(1300).easeInOut(fArr).build();
        }
    }

    public final f[] onCreateChild() {
        int[] iArr = {200, 300, 400, 100, 200, 300, 0, 100, 200};
        a[] aVarArr = new a[9];
        for (int i = 0; i < 9; i++) {
            aVarArr[i] = new a(this, (byte) 0);
            aVarArr[i].setAnimationDelay(iArr[i]);
        }
        return aVarArr;
    }

    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect clipSquare = clipSquare(rect);
        int width = (int) (((float) clipSquare.width()) * 0.33f);
        int height = (int) (((float) clipSquare.height()) * 0.33f);
        for (int i = 0; i < getChildCount(); i++) {
            int i2 = clipSquare.left + ((i % 3) * width);
            int i3 = clipSquare.top + ((i / 3) * height);
            getChildAt(i).setDrawBounds(i2, i3, i2 + width, i3 + height);
        }
    }
}
