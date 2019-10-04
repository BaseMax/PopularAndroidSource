package com.github.ybq.android.spinkit.b;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;

public class c extends e {
    public ValueAnimator onCreateAnimation() {
        return null;
    }

    public void drawShape(Canvas canvas, Paint paint) {
        if (getDrawBounds() != null) {
            canvas.drawRect(getDrawBounds(), paint);
        }
    }
}
