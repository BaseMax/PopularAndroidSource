package f.a.a.e.c;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* compiled from: BucketDrawable */
public class a extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public int f14290a = 64;

    /* renamed from: b  reason: collision with root package name */
    public ColorFilter f14291b = new ColorFilter();

    /* renamed from: c  reason: collision with root package name */
    public float f14292c = 0.0f;

    public void draw(Canvas canvas) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        paint.setAlpha(this.f14290a);
        paint.setColorFilter(this.f14291b);
        canvas.drawRect(0.0f, 0.0f, (float) canvas.getWidth(), (1.0f - this.f14292c) * ((float) canvas.getHeight()), paint);
    }

    public int getAlpha() {
        return this.f14290a;
    }

    public ColorFilter getColorFilter() {
        return this.f14291b;
    }

    public int getOpacity() {
        return this.f14290a;
    }

    public boolean onLevelChange(int i2) {
        super.onLevelChange(i2);
        this.f14292c = (((float) i2) * 1.0f) / 10000.0f;
        invalidateSelf();
        return true;
    }

    public void setAlpha(int i2) {
        this.f14290a = i2;
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.f14291b = colorFilter;
        invalidateSelf();
    }
}
