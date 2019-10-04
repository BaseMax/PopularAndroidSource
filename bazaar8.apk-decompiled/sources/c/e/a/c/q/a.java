package c.e.a.c.q;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import b.b.c.a.e;
import c.e.a.c.c;

/* compiled from: ShadowDrawableWrapper */
public class a extends e {

    /* renamed from: b  reason: collision with root package name */
    public static final double f11418b = Math.cos(Math.toRadians(45.0d));

    /* renamed from: c  reason: collision with root package name */
    public final Paint f11419c;

    /* renamed from: d  reason: collision with root package name */
    public final Paint f11420d;

    /* renamed from: e  reason: collision with root package name */
    public final RectF f11421e;

    /* renamed from: f  reason: collision with root package name */
    public float f11422f;

    /* renamed from: g  reason: collision with root package name */
    public Path f11423g;

    /* renamed from: h  reason: collision with root package name */
    public float f11424h;

    /* renamed from: i  reason: collision with root package name */
    public float f11425i;

    /* renamed from: j  reason: collision with root package name */
    public float f11426j;

    /* renamed from: k  reason: collision with root package name */
    public float f11427k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f11428l = true;
    public final int m;
    public final int n;
    public final int o;
    public boolean p = true;
    public float q;
    public boolean r = false;

    public a(Context context, Drawable drawable, float f2, float f3, float f4) {
        super(drawable);
        this.m = b.i.b.a.a(context, c.design_fab_shadow_start_color);
        this.n = b.i.b.a.a(context, c.design_fab_shadow_mid_color);
        this.o = b.i.b.a.a(context, c.design_fab_shadow_end_color);
        this.f11419c = new Paint(5);
        this.f11419c.setStyle(Paint.Style.FILL);
        this.f11422f = (float) Math.round(f2);
        this.f11421e = new RectF();
        this.f11420d = new Paint(this.f11419c);
        this.f11420d.setAntiAlias(false);
        a(f3, f4);
    }

    public static int c(float f2) {
        int round = Math.round(f2);
        return round % 2 == 1 ? round - 1 : round;
    }

    public void a(boolean z) {
        this.p = z;
        invalidateSelf();
    }

    public void b(float f2) {
        a(f2, this.f11425i);
    }

    public void draw(Canvas canvas) {
        if (this.f11428l) {
            a(getBounds());
            this.f11428l = false;
        }
        a(canvas);
        super.draw(canvas);
    }

    public int getOpacity() {
        return -3;
    }

    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil((double) b(this.f11425i, this.f11422f, this.p));
        int ceil2 = (int) Math.ceil((double) a(this.f11425i, this.f11422f, this.p));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public void onBoundsChange(Rect rect) {
        this.f11428l = true;
    }

    public void setAlpha(int i2) {
        super.setAlpha(i2);
        this.f11419c.setAlpha(i2);
        this.f11420d.setAlpha(i2);
    }

    public static float b(float f2, float f3, boolean z) {
        if (!z) {
            return f2 * 1.5f;
        }
        double d2 = (double) (f2 * 1.5f);
        double d3 = (double) f3;
        Double.isNaN(d3);
        Double.isNaN(d2);
        return (float) (d2 + ((1.0d - f11418b) * d3));
    }

    public void a(float f2, float f3) {
        if (f2 < 0.0f || f3 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float c2 = (float) c(f2);
        float c3 = (float) c(f3);
        if (c2 > c3) {
            if (!this.r) {
                this.r = true;
            }
            c2 = c3;
        }
        if (this.f11427k != c2 || this.f11425i != c3) {
            this.f11427k = c2;
            this.f11425i = c3;
            this.f11426j = (float) Math.round(c2 * 1.5f);
            this.f11424h = c3;
            this.f11428l = true;
            invalidateSelf();
        }
    }

    public final void b() {
        float f2 = this.f11422f;
        RectF rectF = new RectF(-f2, -f2, f2, f2);
        RectF rectF2 = new RectF(rectF);
        float f3 = this.f11426j;
        rectF2.inset(-f3, -f3);
        Path path = this.f11423g;
        if (path == null) {
            this.f11423g = new Path();
        } else {
            path.reset();
        }
        this.f11423g.setFillType(Path.FillType.EVEN_ODD);
        this.f11423g.moveTo(-this.f11422f, 0.0f);
        this.f11423g.rLineTo(-this.f11426j, 0.0f);
        this.f11423g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f11423g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f11423g.close();
        float f4 = -rectF2.top;
        if (f4 > 0.0f) {
            float f5 = this.f11422f / f4;
            Paint paint = this.f11419c;
            RadialGradient radialGradient = r8;
            RadialGradient radialGradient2 = new RadialGradient(0.0f, 0.0f, f4, new int[]{0, this.m, this.n, this.o}, new float[]{0.0f, f5, ((1.0f - f5) / 2.0f) + f5, 1.0f}, Shader.TileMode.CLAMP);
            paint.setShader(radialGradient);
        }
        Paint paint2 = this.f11420d;
        LinearGradient linearGradient = new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.m, this.n, this.o}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
        paint2.setShader(linearGradient);
        this.f11420d.setAntiAlias(false);
    }

    public float c() {
        return this.f11427k;
    }

    public static float a(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        double d2 = (double) f2;
        double d3 = (double) f3;
        Double.isNaN(d3);
        Double.isNaN(d2);
        return (float) (d2 + ((1.0d - f11418b) * d3));
    }

    public final void a(float f2) {
        if (this.q != f2) {
            this.q = f2;
            invalidateSelf();
        }
    }

    public final void a(Canvas canvas) {
        float f2;
        int i2;
        int i3;
        float f3;
        float f4;
        float f5;
        Canvas canvas2 = canvas;
        int save = canvas.save();
        canvas2.rotate(this.q, this.f11421e.centerX(), this.f11421e.centerY());
        float f6 = this.f11422f;
        float f7 = (-f6) - this.f11426j;
        float f8 = f6 * 2.0f;
        boolean z = this.f11421e.width() - f8 > 0.0f;
        boolean z2 = this.f11421e.height() - f8 > 0.0f;
        float f9 = this.f11427k;
        float f10 = f6 / ((f9 - (0.5f * f9)) + f6);
        float f11 = f6 / ((f9 - (0.25f * f9)) + f6);
        float f12 = f6 / ((f9 - (f9 * 1.0f)) + f6);
        int save2 = canvas.save();
        RectF rectF = this.f11421e;
        canvas2.translate(rectF.left + f6, rectF.top + f6);
        canvas2.scale(f10, f11);
        canvas2.drawPath(this.f11423g, this.f11419c);
        if (z) {
            canvas2.scale(1.0f / f10, 1.0f);
            i3 = save2;
            f2 = f12;
            i2 = save;
            f3 = f11;
            canvas.drawRect(0.0f, f7, this.f11421e.width() - f8, -this.f11422f, this.f11420d);
        } else {
            i3 = save2;
            f2 = f12;
            i2 = save;
            f3 = f11;
        }
        canvas2.restoreToCount(i3);
        int save3 = canvas.save();
        RectF rectF2 = this.f11421e;
        canvas2.translate(rectF2.right - f6, rectF2.bottom - f6);
        float f13 = f2;
        canvas2.scale(f10, f13);
        canvas2.rotate(180.0f);
        canvas2.drawPath(this.f11423g, this.f11419c);
        if (z) {
            canvas2.scale(1.0f / f10, 1.0f);
            f4 = f3;
            f5 = f13;
            canvas.drawRect(0.0f, f7, this.f11421e.width() - f8, (-this.f11422f) + this.f11426j, this.f11420d);
        } else {
            f4 = f3;
            f5 = f13;
        }
        canvas2.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF3 = this.f11421e;
        canvas2.translate(rectF3.left + f6, rectF3.bottom - f6);
        canvas2.scale(f10, f5);
        canvas2.rotate(270.0f);
        canvas2.drawPath(this.f11423g, this.f11419c);
        if (z2) {
            canvas2.scale(1.0f / f5, 1.0f);
            canvas.drawRect(0.0f, f7, this.f11421e.height() - f8, -this.f11422f, this.f11420d);
        }
        canvas2.restoreToCount(save4);
        int save5 = canvas.save();
        RectF rectF4 = this.f11421e;
        canvas2.translate(rectF4.right - f6, rectF4.top + f6);
        float f14 = f4;
        canvas2.scale(f10, f14);
        canvas2.rotate(90.0f);
        canvas2.drawPath(this.f11423g, this.f11419c);
        if (z2) {
            canvas2.scale(1.0f / f14, 1.0f);
            canvas.drawRect(0.0f, f7, this.f11421e.height() - f8, -this.f11422f, this.f11420d);
        }
        canvas2.restoreToCount(save5);
        canvas2.restoreToCount(i2);
    }

    public final void a(Rect rect) {
        float f2 = this.f11425i;
        float f3 = 1.5f * f2;
        this.f11421e.set(((float) rect.left) + f2, ((float) rect.top) + f3, ((float) rect.right) - f2, ((float) rect.bottom) - f3);
        Drawable a2 = a();
        RectF rectF = this.f11421e;
        a2.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        b();
    }
}
