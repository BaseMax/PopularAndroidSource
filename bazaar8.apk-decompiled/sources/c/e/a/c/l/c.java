package c.e.a.c.l;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* compiled from: CircularBorderDrawable */
public class c extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public final Paint f11363a = new Paint(1);

    /* renamed from: b  reason: collision with root package name */
    public final Rect f11364b = new Rect();

    /* renamed from: c  reason: collision with root package name */
    public final RectF f11365c = new RectF();

    /* renamed from: d  reason: collision with root package name */
    public final a f11366d = new a();

    /* renamed from: e  reason: collision with root package name */
    public float f11367e;

    /* renamed from: f  reason: collision with root package name */
    public int f11368f;

    /* renamed from: g  reason: collision with root package name */
    public int f11369g;

    /* renamed from: h  reason: collision with root package name */
    public int f11370h;

    /* renamed from: i  reason: collision with root package name */
    public int f11371i;

    /* renamed from: j  reason: collision with root package name */
    public ColorStateList f11372j;

    /* renamed from: k  reason: collision with root package name */
    public int f11373k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f11374l = true;
    public float m;

    /* compiled from: CircularBorderDrawable */
    private class a extends Drawable.ConstantState {
        public a() {
        }

        public int getChangingConfigurations() {
            return 0;
        }

        public Drawable newDrawable() {
            return c.this;
        }
    }

    public c() {
        this.f11363a.setStyle(Paint.Style.STROKE);
    }

    public void a(int i2, int i3, int i4, int i5) {
        this.f11368f = i2;
        this.f11369g = i3;
        this.f11370h = i4;
        this.f11371i = i5;
    }

    public final void b(float f2) {
        if (f2 != this.m) {
            this.m = f2;
            invalidateSelf();
        }
    }

    public void draw(Canvas canvas) {
        if (this.f11374l) {
            this.f11363a.setShader(a());
            this.f11374l = false;
        }
        float strokeWidth = this.f11363a.getStrokeWidth() / 2.0f;
        RectF rectF = this.f11365c;
        copyBounds(this.f11364b);
        rectF.set(this.f11364b);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.save();
        canvas.rotate(this.m, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.f11363a);
        canvas.restore();
    }

    public Drawable.ConstantState getConstantState() {
        return this.f11366d;
    }

    public int getOpacity() {
        return this.f11367e > 0.0f ? -3 : -2;
    }

    public boolean getPadding(Rect rect) {
        int round = Math.round(this.f11367e);
        rect.set(round, round, round, round);
        return true;
    }

    public boolean isStateful() {
        ColorStateList colorStateList = this.f11372j;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    public void onBoundsChange(Rect rect) {
        this.f11374l = true;
    }

    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f11372j;
        if (colorStateList != null) {
            int colorForState = colorStateList.getColorForState(iArr, this.f11373k);
            if (colorForState != this.f11373k) {
                this.f11374l = true;
                this.f11373k = colorForState;
            }
        }
        if (this.f11374l) {
            invalidateSelf();
        }
        return this.f11374l;
    }

    public void setAlpha(int i2) {
        this.f11363a.setAlpha(i2);
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.f11363a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void a(float f2) {
        if (this.f11367e != f2) {
            this.f11367e = f2;
            this.f11363a.setStrokeWidth(f2 * 1.3333f);
            this.f11374l = true;
            invalidateSelf();
        }
    }

    public void a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f11373k = colorStateList.getColorForState(getState(), this.f11373k);
        }
        this.f11372j = colorStateList;
        this.f11374l = true;
        invalidateSelf();
    }

    public final Shader a() {
        Rect rect = this.f11364b;
        copyBounds(rect);
        float height = this.f11367e / ((float) rect.height());
        LinearGradient linearGradient = new LinearGradient(0.0f, (float) rect.top, 0.0f, (float) rect.bottom, new int[]{b.i.c.a.b(this.f11368f, this.f11373k), b.i.c.a.b(this.f11369g, this.f11373k), b.i.c.a.b(b.i.c.a.c(this.f11369g, 0), this.f11373k), b.i.c.a.b(b.i.c.a.c(this.f11371i, 0), this.f11373k), b.i.c.a.b(this.f11371i, this.f11373k), b.i.c.a.b(this.f11370h, this.f11373k)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
        return linearGradient;
    }
}
