package c.e.a.c.v;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;

/* compiled from: CutoutDrawable */
public class a extends GradientDrawable {

    /* renamed from: a  reason: collision with root package name */
    public final Paint f11467a = new Paint(1);

    /* renamed from: b  reason: collision with root package name */
    public final RectF f11468b;

    /* renamed from: c  reason: collision with root package name */
    public int f11469c;

    public a() {
        c();
        this.f11468b = new RectF();
    }

    public boolean a() {
        return !this.f11468b.isEmpty();
    }

    public void b() {
        a(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public final void c() {
        this.f11467a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f11467a.setColor(-1);
        this.f11467a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public void draw(Canvas canvas) {
        b(canvas);
        super.draw(canvas);
        canvas.drawRect(this.f11468b, this.f11467a);
        a(canvas);
    }

    public void a(float f2, float f3, float f4, float f5) {
        RectF rectF = this.f11468b;
        if (f2 != rectF.left || f3 != rectF.top || f4 != rectF.right || f5 != rectF.bottom) {
            this.f11468b.set(f2, f3, f4, f5);
            invalidateSelf();
        }
    }

    public final void b(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (a(callback)) {
            ((View) callback).setLayerType(2, null);
        } else {
            c(canvas);
        }
    }

    public final void c(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f11469c = canvas.saveLayer(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), null);
            return;
        }
        this.f11469c = canvas.saveLayer(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), null, 31);
    }

    public void a(RectF rectF) {
        a(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public final void a(Canvas canvas) {
        if (!a(getCallback())) {
            canvas.restoreToCount(this.f11469c);
        }
    }

    public final boolean a(Drawable.Callback callback) {
        return callback instanceof View;
    }
}
