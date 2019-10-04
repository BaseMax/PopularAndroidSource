package com.google.android.material.internal;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.ColorUtils;

public class a extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    final Paint f3932a = new Paint(1);

    /* renamed from: b  reason: collision with root package name */
    final Rect f3933b = new Rect();
    final RectF c = new RectF();
    final C0074a d = new C0074a(this, (byte) 0);
    float e;
    private int f;
    private int g;
    private int h;
    private int i;
    private ColorStateList j;
    private int k;
    private boolean l = true;
    private float m;

    /* renamed from: com.google.android.material.internal.a$a  reason: collision with other inner class name */
    class C0074a extends Drawable.ConstantState {
        public final int getChangingConfigurations() {
            return 0;
        }

        private C0074a() {
        }

        /* synthetic */ C0074a(a aVar, byte b2) {
            this();
        }

        public final Drawable newDrawable() {
            return a.this;
        }
    }

    public a() {
        this.f3932a.setStyle(Paint.Style.STROKE);
    }

    public Drawable.ConstantState getConstantState() {
        return this.d;
    }

    public void setGradientColors(int i2, int i3, int i4, int i5) {
        this.f = i2;
        this.g = i3;
        this.h = i4;
        this.i = i5;
    }

    public void setBorderWidth(float f2) {
        if (this.e != f2) {
            this.e = f2;
            this.f3932a.setStrokeWidth(f2 * 1.3333f);
            this.l = true;
            invalidateSelf();
        }
    }

    public void draw(Canvas canvas) {
        if (this.l) {
            Paint paint = this.f3932a;
            Rect rect = this.f3933b;
            copyBounds(rect);
            float height = this.e / ((float) rect.height());
            LinearGradient linearGradient = new LinearGradient(0.0f, (float) rect.top, 0.0f, (float) rect.bottom, new int[]{ColorUtils.compositeColors(this.f, this.k), ColorUtils.compositeColors(this.g, this.k), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.g, 0), this.k), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.i, 0), this.k), ColorUtils.compositeColors(this.i, this.k), ColorUtils.compositeColors(this.h, this.k)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
            paint.setShader(linearGradient);
            this.l = false;
        }
        float strokeWidth = this.f3932a.getStrokeWidth() / 2.0f;
        RectF rectF = this.c;
        copyBounds(this.f3933b);
        rectF.set(this.f3933b);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.save();
        canvas.rotate(this.m, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.f3932a);
        canvas.restore();
    }

    public boolean getPadding(Rect rect) {
        int round = Math.round(this.e);
        rect.set(round, round, round, round);
        return true;
    }

    public void setAlpha(int i2) {
        this.f3932a.setAlpha(i2);
        invalidateSelf();
    }

    public void setBorderTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.k = colorStateList.getColorForState(getState(), this.k);
        }
        this.j = colorStateList;
        this.l = true;
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.f3932a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public int getOpacity() {
        return this.e > 0.0f ? -3 : -2;
    }

    public final void setRotation(float f2) {
        if (f2 != this.m) {
            this.m = f2;
            invalidateSelf();
        }
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        this.l = true;
    }

    public boolean isStateful() {
        ColorStateList colorStateList = this.j;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.j;
        if (colorStateList != null) {
            int colorForState = colorStateList.getColorForState(iArr, this.k);
            if (colorForState != this.k) {
                this.l = true;
                this.k = colorForState;
            }
        }
        if (this.l) {
            invalidateSelf();
        }
        return this.l;
    }
}
