package c.c.a.d.h.b;

import android.animation.ValueAnimator;
import android.graphics.Rect;

/* compiled from: ThreeBounce */
public class z extends y {

    /* compiled from: ThreeBounce */
    private class a extends b {
        public a() {
            c(0.0f);
        }

        public ValueAnimator p() {
            float[] fArr = {0.0f, 0.4f, 0.8f, 1.0f};
            x xVar = new x(this);
            Float valueOf = Float.valueOf(0.0f);
            xVar.a(fArr, valueOf, Float.valueOf(1.0f), valueOf, valueOf);
            xVar.a(1400);
            xVar.a(fArr);
            return xVar.a();
        }
    }

    public void a(w... wVarArr) {
        super.a(wVarArr);
        wVarArr[1].a(160);
        wVarArr[2].a(320);
    }

    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect a2 = a(rect);
        int width = a2.width() / 8;
        int centerY = a2.centerY() - width;
        int centerY2 = a2.centerY() + width;
        for (int i2 = 0; i2 < r(); i2++) {
            int width2 = ((a2.width() * i2) / 3) + a2.left;
            h(i2).a(width2, centerY, (width * 2) + width2, centerY2);
        }
    }

    public w[] t() {
        return new w[]{new a(), new a(), new a()};
    }
}
