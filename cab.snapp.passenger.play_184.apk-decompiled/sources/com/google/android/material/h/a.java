package com.google.android.material.h;

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
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.content.ContextCompat;
import com.google.android.material.a;

public final class a extends DrawableWrapper {

    /* renamed from: a  reason: collision with root package name */
    static final double f3909a = Math.cos(Math.toRadians(45.0d));

    /* renamed from: b  reason: collision with root package name */
    final Paint f3910b;
    final Paint c;
    final RectF d;
    float e;
    Path f;
    float g;
    float h;
    float i;
    float j;
    private boolean k = true;
    private final int l;
    private final int m;
    private final int n;
    private boolean o = true;
    private float p;
    private boolean q = false;

    public final int getOpacity() {
        return -3;
    }

    public a(Context context, Drawable drawable, float f2, float f3, float f4) {
        super(drawable);
        this.l = ContextCompat.getColor(context, a.c.design_fab_shadow_start_color);
        this.m = ContextCompat.getColor(context, a.c.design_fab_shadow_mid_color);
        this.n = ContextCompat.getColor(context, a.c.design_fab_shadow_end_color);
        this.f3910b = new Paint(5);
        this.f3910b.setStyle(Paint.Style.FILL);
        this.e = (float) Math.round(f2);
        this.d = new RectF();
        this.c = new Paint(this.f3910b);
        this.c.setAntiAlias(false);
        setShadowSize(f3, f4);
    }

    private static int a(float f2) {
        int round = Math.round(f2);
        return round % 2 == 1 ? round - 1 : round;
    }

    public final void setAddPaddingForCorners(boolean z) {
        this.o = z;
        invalidateSelf();
    }

    public final void setAlpha(int i2) {
        super.setAlpha(i2);
        this.f3910b.setAlpha(i2);
        this.c.setAlpha(i2);
    }

    public final void onBoundsChange(Rect rect) {
        this.k = true;
    }

    public final void setShadowSize(float f2, float f3) {
        if (f2 < 0.0f || f3 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float a2 = (float) a(f2);
        float a3 = (float) a(f3);
        if (a2 > a3) {
            if (!this.q) {
                this.q = true;
            }
            a2 = a3;
        }
        if (this.j != a2 || this.h != a3) {
            this.j = a2;
            this.h = a3;
            this.i = (float) Math.round(a2 * 1.5f);
            this.g = a3;
            this.k = true;
            invalidateSelf();
        }
    }

    public final void setShadowSize(float f2) {
        setShadowSize(f2, this.h);
    }

    public final float getShadowSize() {
        return this.j;
    }

    public final boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil((double) calculateVerticalPadding(this.h, this.e, this.o));
        int ceil2 = (int) Math.ceil((double) calculateHorizontalPadding(this.h, this.e, this.o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public static float calculateVerticalPadding(float f2, float f3, boolean z) {
        if (!z) {
            return f2 * 1.5f;
        }
        double d2 = (double) (f2 * 1.5f);
        double d3 = (double) f3;
        Double.isNaN(d3);
        Double.isNaN(d2);
        return (float) (d2 + ((1.0d - f3909a) * d3));
    }

    public static float calculateHorizontalPadding(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        double d2 = (double) f2;
        double d3 = (double) f3;
        Double.isNaN(d3);
        Double.isNaN(d2);
        return (float) (d2 + ((1.0d - f3909a) * d3));
    }

    public final void setCornerRadius(float f2) {
        float round = (float) Math.round(f2);
        if (this.e != round) {
            this.e = round;
            this.k = true;
            invalidateSelf();
        }
    }

    public final void draw(Canvas canvas) {
        boolean z;
        int i2;
        int i3;
        Canvas canvas2 = canvas;
        if (this.k) {
            Rect bounds = getBounds();
            float f2 = this.h * 1.5f;
            this.d.set(((float) bounds.left) + this.h, ((float) bounds.top) + f2, ((float) bounds.right) - this.h, ((float) bounds.bottom) - f2);
            getWrappedDrawable().setBounds((int) this.d.left, (int) this.d.top, (int) this.d.right, (int) this.d.bottom);
            float f3 = this.e;
            RectF rectF = new RectF(-f3, -f3, f3, f3);
            RectF rectF2 = new RectF(rectF);
            float f4 = this.i;
            rectF2.inset(-f4, -f4);
            Path path = this.f;
            if (path == null) {
                this.f = new Path();
            } else {
                path.reset();
            }
            this.f.setFillType(Path.FillType.EVEN_ODD);
            this.f.moveTo(-this.e, 0.0f);
            this.f.rLineTo(-this.i, 0.0f);
            this.f.arcTo(rectF2, 180.0f, 90.0f, false);
            this.f.arcTo(rectF, 270.0f, -90.0f, false);
            this.f.close();
            float f5 = -rectF2.top;
            if (f5 > 0.0f) {
                float f6 = this.e / f5;
                Paint paint = this.f3910b;
                RadialGradient radialGradient = new RadialGradient(0.0f, 0.0f, f5, new int[]{0, this.l, this.m, this.n}, new float[]{0.0f, f6, ((1.0f - f6) / 2.0f) + f6, 1.0f}, Shader.TileMode.CLAMP);
                paint.setShader(radialGradient);
            }
            Paint paint2 = this.c;
            z = true;
            LinearGradient linearGradient = new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.l, this.m, this.n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
            paint2.setShader(linearGradient);
            this.c.setAntiAlias(false);
            this.k = false;
        } else {
            z = true;
        }
        int save = canvas.save();
        canvas2.rotate(this.p, this.d.centerX(), this.d.centerY());
        float f7 = this.e;
        float f8 = (-f7) - this.i;
        float f9 = f7 * 2.0f;
        boolean z2 = this.d.width() - f9 > 0.0f;
        if (this.d.height() - f9 <= 0.0f) {
            z = false;
        }
        float f10 = this.j;
        float f11 = f7 / ((f10 - (0.5f * f10)) + f7);
        float f12 = f7 / ((f10 - (0.25f * f10)) + f7);
        float f13 = f7 / ((f10 - (f10 * 1.0f)) + f7);
        int save2 = canvas.save();
        canvas2.translate(this.d.left + f7, this.d.top + f7);
        canvas2.scale(f11, f12);
        canvas2.drawPath(this.f, this.f3910b);
        if (z2) {
            canvas2.scale(1.0f / f11, 1.0f);
            i2 = save;
            i3 = save2;
            canvas.drawRect(0.0f, f8, this.d.width() - f9, -this.e, this.c);
        } else {
            i2 = save;
            i3 = save2;
        }
        canvas2.restoreToCount(i3);
        int save3 = canvas.save();
        canvas2.translate(this.d.right - f7, this.d.bottom - f7);
        canvas2.scale(f11, f13);
        canvas2.rotate(180.0f);
        canvas2.drawPath(this.f, this.f3910b);
        if (z2) {
            canvas2.scale(1.0f / f11, 1.0f);
            canvas.drawRect(0.0f, f8, this.d.width() - f9, (-this.e) + this.i, this.c);
        }
        canvas2.restoreToCount(save3);
        int save4 = canvas.save();
        canvas2.translate(this.d.left + f7, this.d.bottom - f7);
        canvas2.scale(f11, f13);
        canvas2.rotate(270.0f);
        canvas2.drawPath(this.f, this.f3910b);
        if (z) {
            canvas2.scale(1.0f / f13, 1.0f);
            canvas.drawRect(0.0f, f8, this.d.height() - f9, -this.e, this.c);
        }
        canvas2.restoreToCount(save4);
        int save5 = canvas.save();
        canvas2.translate(this.d.right - f7, this.d.top + f7);
        canvas2.scale(f11, f12);
        canvas2.rotate(90.0f);
        canvas2.drawPath(this.f, this.f3910b);
        if (z) {
            canvas2.scale(1.0f / f12, 1.0f);
            canvas.drawRect(0.0f, f8, this.d.height() - f9, -this.e, this.c);
        }
        canvas2.restoreToCount(save5);
        canvas2.restoreToCount(i2);
        super.draw(canvas);
    }

    public final void setRotation(float f2) {
        if (this.p != f2) {
            this.p = f2;
            invalidateSelf();
        }
    }

    public final float getCornerRadius() {
        return this.e;
    }

    public final void setMaxShadowSize(float f2) {
        setShadowSize(this.j, f2);
    }

    public final float getMaxShadowSize() {
        return this.h;
    }

    public final float getMinWidth() {
        float f2 = this.h;
        return (Math.max(f2, this.e + (f2 / 2.0f)) * 2.0f) + (this.h * 2.0f);
    }

    public final float getMinHeight() {
        float f2 = this.h;
        return (Math.max(f2, this.e + ((f2 * 1.5f) / 2.0f)) * 2.0f) + (this.h * 1.5f * 2.0f);
    }
}
