package b.e.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import b.e.b;
import b.e.c;

/* compiled from: RoundRectDrawableWithShadow */
public class j extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public static final double f2316a = Math.cos(Math.toRadians(45.0d));

    /* renamed from: b  reason: collision with root package name */
    public static a f2317b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2318c;

    /* renamed from: d  reason: collision with root package name */
    public Paint f2319d;

    /* renamed from: e  reason: collision with root package name */
    public Paint f2320e;

    /* renamed from: f  reason: collision with root package name */
    public Paint f2321f;

    /* renamed from: g  reason: collision with root package name */
    public final RectF f2322g;

    /* renamed from: h  reason: collision with root package name */
    public float f2323h;

    /* renamed from: i  reason: collision with root package name */
    public Path f2324i;

    /* renamed from: j  reason: collision with root package name */
    public float f2325j;

    /* renamed from: k  reason: collision with root package name */
    public float f2326k;

    /* renamed from: l  reason: collision with root package name */
    public float f2327l;
    public ColorStateList m;
    public boolean n = true;
    public final int o;
    public final int p;
    public boolean q = true;
    public boolean r = false;

    /* compiled from: RoundRectDrawableWithShadow */
    interface a {
        void a(Canvas canvas, RectF rectF, float f2, Paint paint);
    }

    public j(Resources resources, ColorStateList colorStateList, float f2, float f3, float f4) {
        this.o = resources.getColor(b.cardview_shadow_start_color);
        this.p = resources.getColor(b.cardview_shadow_end_color);
        this.f2318c = resources.getDimensionPixelSize(c.cardview_compat_inset_shadow);
        this.f2319d = new Paint(5);
        a(colorStateList);
        this.f2320e = new Paint(5);
        this.f2320e.setStyle(Paint.Style.FILL);
        this.f2323h = (float) ((int) (f2 + 0.5f));
        this.f2322g = new RectF();
        this.f2321f = new Paint(this.f2320e);
        this.f2321f.setAntiAlias(false);
        a(f3, f4);
    }

    public static float b(float f2, float f3, boolean z) {
        if (!z) {
            return f2 * 1.5f;
        }
        double d2 = (double) (f2 * 1.5f);
        double d3 = (double) f3;
        Double.isNaN(d3);
        Double.isNaN(d2);
        return (float) (d2 + ((1.0d - f2316a) * d3));
    }

    public final void a(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.m = colorStateList;
        this.f2319d.setColor(this.m.getColorForState(getState(), this.m.getDefaultColor()));
    }

    public float c() {
        return this.f2323h;
    }

    public final int d(float f2) {
        int i2 = (int) (f2 + 0.5f);
        return i2 % 2 == 1 ? i2 - 1 : i2;
    }

    public void draw(Canvas canvas) {
        if (this.n) {
            a(getBounds());
            this.n = false;
        }
        canvas.translate(0.0f, this.f2327l / 2.0f);
        a(canvas);
        canvas.translate(0.0f, (-this.f2327l) / 2.0f);
        f2317b.a(canvas, this.f2322g, this.f2323h, this.f2319d);
    }

    public float e() {
        float f2 = this.f2325j;
        return (Math.max(f2, this.f2323h + ((float) this.f2318c) + ((f2 * 1.5f) / 2.0f)) * 2.0f) + (((this.f2325j * 1.5f) + ((float) this.f2318c)) * 2.0f);
    }

    public float f() {
        float f2 = this.f2325j;
        return (Math.max(f2, this.f2323h + ((float) this.f2318c) + (f2 / 2.0f)) * 2.0f) + ((this.f2325j + ((float) this.f2318c)) * 2.0f);
    }

    public float g() {
        return this.f2327l;
    }

    public int getOpacity() {
        return -3;
    }

    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil((double) b(this.f2325j, this.f2323h, this.q));
        int ceil2 = (int) Math.ceil((double) a(this.f2325j, this.f2323h, this.q));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public boolean isStateful() {
        ColorStateList colorStateList = this.m;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.n = true;
    }

    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.m;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f2319d.getColor() == colorForState) {
            return false;
        }
        this.f2319d.setColor(colorForState);
        this.n = true;
        invalidateSelf();
        return true;
    }

    public void setAlpha(int i2) {
        this.f2319d.setAlpha(i2);
        this.f2320e.setAlpha(i2);
        this.f2321f.setAlpha(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.f2319d.setColorFilter(colorFilter);
    }

    public void b(Rect rect) {
        getPadding(rect);
    }

    public void c(float f2) {
        a(f2, this.f2325j);
    }

    public float d() {
        return this.f2325j;
    }

    public void a(boolean z) {
        this.q = z;
        invalidateSelf();
    }

    public void b(float f2) {
        a(this.f2327l, f2);
    }

    public void b(ColorStateList colorStateList) {
        a(colorStateList);
        invalidateSelf();
    }

    public final void a(float f2, float f3) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f2 + ". Must be >= 0");
        } else if (f3 >= 0.0f) {
            float d2 = (float) d(f2);
            float d3 = (float) d(f3);
            if (d2 > d3) {
                if (!this.r) {
                    this.r = true;
                }
                d2 = d3;
            }
            if (this.f2327l != d2 || this.f2325j != d3) {
                this.f2327l = d2;
                this.f2325j = d3;
                this.f2326k = (float) ((int) ((d2 * 1.5f) + ((float) this.f2318c) + 0.5f));
                this.n = true;
                invalidateSelf();
            }
        } else {
            throw new IllegalArgumentException("Invalid max shadow size " + f3 + ". Must be >= 0");
        }
    }

    public ColorStateList b() {
        return this.m;
    }

    public static float a(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        double d2 = (double) f2;
        double d3 = (double) f3;
        Double.isNaN(d3);
        Double.isNaN(d2);
        return (float) (d2 + ((1.0d - f2316a) * d3));
    }

    public void a(float f2) {
        if (f2 >= 0.0f) {
            float f3 = (float) ((int) (f2 + 0.5f));
            if (this.f2323h != f3) {
                this.f2323h = f3;
                this.n = true;
                invalidateSelf();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Invalid radius " + f2 + ". Must be >= 0");
    }

    public final void a(Canvas canvas) {
        float f2 = this.f2323h;
        float f3 = (-f2) - this.f2326k;
        float f4 = f2 + ((float) this.f2318c) + (this.f2327l / 2.0f);
        float f5 = f4 * 2.0f;
        boolean z = this.f2322g.width() - f5 > 0.0f;
        boolean z2 = this.f2322g.height() - f5 > 0.0f;
        int save = canvas.save();
        RectF rectF = this.f2322g;
        canvas.translate(rectF.left + f4, rectF.top + f4);
        canvas.drawPath(this.f2324i, this.f2320e);
        if (z) {
            canvas.drawRect(0.0f, f3, this.f2322g.width() - f5, -this.f2323h, this.f2321f);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.f2322g;
        canvas.translate(rectF2.right - f4, rectF2.bottom - f4);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f2324i, this.f2320e);
        if (z) {
            canvas.drawRect(0.0f, f3, this.f2322g.width() - f5, (-this.f2323h) + this.f2326k, this.f2321f);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.f2322g;
        canvas.translate(rectF3.left + f4, rectF3.bottom - f4);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f2324i, this.f2320e);
        if (z2) {
            canvas.drawRect(0.0f, f3, this.f2322g.height() - f5, -this.f2323h, this.f2321f);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.f2322g;
        canvas.translate(rectF4.right - f4, rectF4.top + f4);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f2324i, this.f2320e);
        if (z2) {
            canvas.drawRect(0.0f, f3, this.f2322g.height() - f5, -this.f2323h, this.f2321f);
        }
        canvas.restoreToCount(save4);
    }

    public final void a() {
        float f2 = this.f2323h;
        RectF rectF = new RectF(-f2, -f2, f2, f2);
        RectF rectF2 = new RectF(rectF);
        float f3 = this.f2326k;
        rectF2.inset(-f3, -f3);
        Path path = this.f2324i;
        if (path == null) {
            this.f2324i = new Path();
        } else {
            path.reset();
        }
        this.f2324i.setFillType(Path.FillType.EVEN_ODD);
        this.f2324i.moveTo(-this.f2323h, 0.0f);
        this.f2324i.rLineTo(-this.f2326k, 0.0f);
        this.f2324i.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f2324i.arcTo(rectF, 270.0f, -90.0f, false);
        this.f2324i.close();
        float f4 = this.f2323h;
        float f5 = this.f2326k;
        Paint paint = this.f2320e;
        float f6 = f4 + f5;
        int i2 = this.o;
        RadialGradient radialGradient = new RadialGradient(0.0f, 0.0f, f6, new int[]{i2, i2, this.p}, new float[]{0.0f, f4 / (f4 + f5), 1.0f}, Shader.TileMode.CLAMP);
        paint.setShader(radialGradient);
        Paint paint2 = this.f2321f;
        float f7 = this.f2323h;
        float f8 = this.f2326k;
        int i3 = this.o;
        LinearGradient linearGradient = new LinearGradient(0.0f, (-f7) + f8, 0.0f, (-f7) - f8, new int[]{i3, i3, this.p}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
        paint2.setShader(linearGradient);
        this.f2321f.setAntiAlias(false);
    }

    public final void a(Rect rect) {
        float f2 = this.f2325j;
        float f3 = 1.5f * f2;
        this.f2322g.set(((float) rect.left) + f2, ((float) rect.top) + f3, ((float) rect.right) - f2, ((float) rect.bottom) - f3);
        a();
    }
}
