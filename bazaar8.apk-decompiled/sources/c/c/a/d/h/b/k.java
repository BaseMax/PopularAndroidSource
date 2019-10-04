package c.c.a.d.h.b;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;

/* compiled from: ShapeSprite */
public abstract class k extends w {
    public Paint E = new Paint();
    public int F;
    public int G;

    public k() {
        b(-1);
        this.E.setAntiAlias(true);
        this.E.setColor(this.F);
    }

    public int a() {
        return this.G;
    }

    public abstract void a(Canvas canvas, Paint paint);

    public void b(int i2) {
        this.G = i2;
        r();
    }

    public final void r() {
        int alpha = getAlpha();
        int i2 = this.G;
        this.F = ((((i2 >>> 24) * (alpha + (alpha >> 7))) >> 8) << 24) | ((i2 << 8) >>> 8);
    }

    public void setAlpha(int i2) {
        super.setAlpha(i2);
        r();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.E.setColorFilter(colorFilter);
    }

    public final void a(Canvas canvas) {
        this.E.setColor(this.F);
        a(canvas, this.E);
    }
}
