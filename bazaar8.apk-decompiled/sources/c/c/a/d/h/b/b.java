package c.c.a.d.h.b;

import android.graphics.Canvas;
import android.graphics.Paint;

/* compiled from: CircleSprite */
public class b extends k {
    public void a(Canvas canvas, Paint paint) {
        if (b() != null) {
            canvas.drawCircle((float) b().centerX(), (float) b().centerY(), (float) (Math.min(b().width(), b().height()) / 2), paint);
        }
    }
}
