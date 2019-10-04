package f.a.a.e.c;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.answers.BackgroundManager;

/* compiled from: DotsDrawable */
public class b extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public int f14293a = 255;

    /* renamed from: b  reason: collision with root package name */
    public ColorFilter f14294b = new ColorFilter();

    /* renamed from: c  reason: collision with root package name */
    public float f14295c;

    /* renamed from: d  reason: collision with root package name */
    public Paint f14296d = new Paint();

    /* renamed from: e  reason: collision with root package name */
    public Path f14297e = new Path();

    public b(int i2) {
        this.f14296d.setAntiAlias(true);
        this.f14296d.setColor(i2);
        this.f14296d.setStyle(Paint.Style.FILL);
        this.f14296d.setAlpha(this.f14293a);
        this.f14296d.setColorFilter(this.f14294b);
    }

    public final void a(Canvas canvas, float f2, float f3, float f4, Paint paint) {
        this.f14297e.reset();
        float f5 = f4 / 2.0f;
        float f6 = f3 - f5;
        this.f14297e.moveTo(f2, f6);
        this.f14297e.lineTo(f2 + f5, f3);
        this.f14297e.lineTo(f2, f3 + f5);
        this.f14297e.lineTo(f2 - f5, f3);
        this.f14297e.lineTo(f2, f6);
        canvas.drawPath(this.f14297e, paint);
    }

    public void draw(Canvas canvas) {
        float f2;
        float width = (float) (canvas.getWidth() / 2);
        float height = (float) (canvas.getHeight() / 2);
        float[] fArr = new float[3];
        float f3 = this.f14295c;
        float f4 = 0.0f;
        float f5 = 1.0f;
        if (f3 < 0.5f) {
            f2 = 0.0f;
        } else if (f3 < 0.8333333f) {
            double d2 = (double) (f3 - 0.5f);
            Double.isNaN(d2);
            f2 = (float) (0.5d - (Math.cos(d2 * 9.42477796076938d) * 0.5d));
        } else {
            f2 = 1.0f;
        }
        fArr[0] = f2;
        float f6 = this.f14295c;
        if (f6 >= 0.25f) {
            if (f6 < 0.5833333f) {
                double d3 = (double) (f6 - 0.25f);
                Double.isNaN(d3);
                f4 = (float) (0.5d - (Math.cos(d3 * 9.42477796076938d) * 0.5d));
            } else {
                f4 = 1.0f;
            }
        }
        fArr[1] = f4;
        float f7 = this.f14295c;
        if (f7 < 0.33333334f) {
            double d4 = (double) f7;
            Double.isNaN(d4);
            f5 = (float) (0.5d - (Math.cos(d4 * 9.42477796076938d) * 0.5d));
        }
        fArr[2] = f5;
        float f8 = ((fArr[0] + fArr[1]) + fArr[2]) / 3.0f;
        float f9 = height * 1.5f;
        try {
            a(canvas, (width - height) + ((fArr[0] - f8) * f9), height, height, this.f14296d);
            a(canvas, width + ((fArr[1] - f8) * f9), height, height, this.f14296d);
            a(canvas, width + height + (f9 * (fArr[2] - f8)), height, height, this.f14296d);
        } catch (Exception e2) {
            Crashlytics.logException(e2);
            e2.printStackTrace();
        }
    }

    public int getAlpha() {
        return this.f14293a;
    }

    public ColorFilter getColorFilter() {
        return this.f14294b;
    }

    public int getOpacity() {
        return this.f14293a;
    }

    public boolean onLevelChange(int i2) {
        super.onLevelChange(i2);
        this.f14295c = ((float) (i2 % BackgroundManager.BACKGROUND_DELAY)) / 5000.0f;
        invalidateSelf();
        return true;
    }

    public void setAlpha(int i2) {
        this.f14293a = i2;
        this.f14296d.setAlpha(i2);
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.f14294b = colorFilter;
        this.f14296d.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
