package com.github.ybq.android.spinkit.b;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;

public abstract class e extends f {

    /* renamed from: b  reason: collision with root package name */
    private Paint f2529b = new Paint();
    private int c;
    private int d;

    public abstract void drawShape(Canvas canvas, Paint paint);

    public e() {
        setColor(-1);
        this.f2529b.setAntiAlias(true);
        this.f2529b.setColor(this.c);
    }

    public void setColor(int i) {
        this.d = i;
        a();
    }

    public int getColor() {
        return this.d;
    }

    public int getUseColor() {
        return this.c;
    }

    public void setAlpha(int i) {
        super.setAlpha(i);
        a();
    }

    private void a() {
        int alpha = getAlpha();
        int i = this.d;
        this.c = ((((i >>> 24) * (alpha + (alpha >> 7))) >> 8) << 24) | ((i << 8) >>> 8);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.f2529b.setColorFilter(colorFilter);
    }

    /* access modifiers changed from: protected */
    public final void a(Canvas canvas) {
        this.f2529b.setColor(this.c);
        drawShape(canvas, this.f2529b);
    }
}
