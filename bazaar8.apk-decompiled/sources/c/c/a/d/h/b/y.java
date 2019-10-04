package c.c.a.d.h.b;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;

/* compiled from: SpriteContainer */
public abstract class y extends w {
    public w[] E = t();
    public int F;

    public y() {
        s();
        a(this.E);
    }

    public int a() {
        return this.F;
    }

    public void a(Canvas canvas) {
    }

    public void a(w... wVarArr) {
    }

    public void b(int i2) {
        this.F = i2;
        for (int i3 = 0; i3 < r(); i3++) {
            h(i3).b(i2);
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        b(canvas);
    }

    public w h(int i2) {
        w[] wVarArr = this.E;
        if (wVarArr == null) {
            return null;
        }
        return wVarArr[i2];
    }

    public boolean isRunning() {
        return a.a(this.E) || super.isRunning();
    }

    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        for (w bounds : this.E) {
            bounds.setBounds(rect);
        }
    }

    public ValueAnimator p() {
        return null;
    }

    public int r() {
        w[] wVarArr = this.E;
        if (wVarArr == null) {
            return 0;
        }
        return wVarArr.length;
    }

    public final void s() {
        w[] wVarArr = this.E;
        if (wVarArr != null) {
            for (w callback : wVarArr) {
                callback.setCallback(this);
            }
        }
    }

    public void start() {
        super.start();
        a.b(this.E);
    }

    public void stop() {
        super.stop();
        a.c(this.E);
    }

    public abstract w[] t();

    public void b(Canvas canvas) {
        w[] wVarArr = this.E;
        if (wVarArr != null) {
            for (w draw : wVarArr) {
                int save = canvas.save();
                draw.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
    }
}
