package com.github.ybq.android.spinkit.c;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.os.Build;
import com.github.ybq.android.spinkit.a.d;
import com.github.ybq.android.spinkit.b.c;
import com.github.ybq.android.spinkit.b.f;
import com.github.ybq.android.spinkit.b.g;

public final class n extends g {

    class a extends c {

        /* renamed from: b  reason: collision with root package name */
        int f2541b;

        public a(int i) {
            this.f2541b = i;
        }

        public final ValueAnimator onCreateAnimation() {
            float[] fArr = {0.0f, 0.25f, 0.5f, 0.51f, 0.75f, 1.0f};
            d rotate = new d(this).rotate(fArr, 0, -90, -179, -180, -270, -360);
            Float valueOf = Float.valueOf(0.0f);
            Float valueOf2 = Float.valueOf(0.75f);
            d translateYPercentage = rotate.translateXPercentage(fArr, valueOf, valueOf2, valueOf2, valueOf2, valueOf, valueOf).translateYPercentage(fArr, valueOf, valueOf, valueOf2, valueOf2, valueOf2, valueOf);
            Float valueOf3 = Float.valueOf(1.0f);
            Float valueOf4 = Float.valueOf(0.5f);
            d easeInOut = translateYPercentage.scale(fArr, valueOf3, valueOf4, valueOf3, valueOf3, valueOf4, valueOf3).duration(1800).easeInOut(fArr);
            if (Build.VERSION.SDK_INT >= 24) {
                easeInOut.startFrame(this.f2541b);
            }
            return easeInOut.build();
        }
    }

    public final f[] onCreateChild() {
        return new f[]{new a(0), new a(3)};
    }

    public final void onChildCreated(f... fVarArr) {
        super.onChildCreated(fVarArr);
        if (Build.VERSION.SDK_INT < 24) {
            fVarArr[1].setAnimationDelay(-900);
        }
    }

    public final void onBoundsChange(Rect rect) {
        Rect clipSquare = clipSquare(rect);
        super.onBoundsChange(clipSquare);
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).setDrawBounds(clipSquare.left, clipSquare.top, clipSquare.left + (clipSquare.width() / 4), clipSquare.top + (clipSquare.height() / 4));
        }
    }
}
