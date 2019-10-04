package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.R;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.a.a;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f3935a = (Build.VERSION.SDK_INT < 18);

    /* renamed from: b  reason: collision with root package name */
    private static final Paint f3936b = null;
    private boolean A;
    private Bitmap B;
    private Paint C;
    private float D;
    private float E;
    private float F;
    private float G;
    private int[] H;
    private boolean I;
    private final TextPaint J;
    private final TextPaint K;
    private TimeInterpolator L;
    private TimeInterpolator M;
    private float N;
    private float O;
    private float P;
    private int Q;
    private float R;
    private float S;
    private float T;
    private int U;
    private final View c;
    private boolean d;
    private float e;
    private final Rect f;
    private final Rect g;
    private final RectF h;
    private int i = 16;
    private int j = 16;
    private float k = 15.0f;
    private float l = 15.0f;
    private ColorStateList m;
    private ColorStateList n;
    private float o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private Typeface u;
    private Typeface v;
    private Typeface w;
    private CharSequence x;
    private CharSequence y;
    private boolean z;

    public c(View view) {
        this.c = view;
        this.J = new TextPaint(129);
        this.K = new TextPaint(this.J);
        this.g = new Rect();
        this.f = new Rect();
        this.h = new RectF();
    }

    public final void setTextSizeInterpolator(TimeInterpolator timeInterpolator) {
        this.M = timeInterpolator;
        recalculate();
    }

    public final void setPositionInterpolator(TimeInterpolator timeInterpolator) {
        this.L = timeInterpolator;
        recalculate();
    }

    public final void setExpandedTextSize(float f2) {
        if (this.k != f2) {
            this.k = f2;
            recalculate();
        }
    }

    public final void setCollapsedTextSize(float f2) {
        if (this.l != f2) {
            this.l = f2;
            recalculate();
        }
    }

    public final void setCollapsedTextColor(ColorStateList colorStateList) {
        if (this.n != colorStateList) {
            this.n = colorStateList;
            recalculate();
        }
    }

    public final void setExpandedTextColor(ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            recalculate();
        }
    }

    public final void setExpandedBounds(int i2, int i3, int i4, int i5) {
        if (!a(this.f, i2, i3, i4, i5)) {
            this.f.set(i2, i3, i4, i5);
            this.I = true;
            a();
        }
    }

    public final void setCollapsedBounds(int i2, int i3, int i4, int i5) {
        if (!a(this.g, i2, i3, i4, i5)) {
            this.g.set(i2, i3, i4, i5);
            this.I = true;
            a();
        }
    }

    public final float calculateCollapsedTextWidth() {
        if (this.x == null) {
            return 0.0f;
        }
        a(this.K);
        TextPaint textPaint = this.K;
        CharSequence charSequence = this.x;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public final float getCollapsedTextHeight() {
        a(this.K);
        return -this.K.ascent();
    }

    public final void getCollapsedTextActualBounds(RectF rectF) {
        float f2;
        boolean a2 = a(this.x);
        Rect rect = this.g;
        if (!a2) {
            f2 = (float) rect.left;
        } else {
            f2 = ((float) rect.right) - calculateCollapsedTextWidth();
        }
        rectF.left = f2;
        rectF.top = (float) this.g.top;
        rectF.right = !a2 ? rectF.left + calculateCollapsedTextWidth() : (float) this.g.right;
        rectF.bottom = ((float) this.g.top) + getCollapsedTextHeight();
    }

    private void a(TextPaint textPaint) {
        textPaint.setTextSize(this.l);
        textPaint.setTypeface(this.u);
    }

    private void a() {
        this.d = this.g.width() > 0 && this.g.height() > 0 && this.f.width() > 0 && this.f.height() > 0;
    }

    public final void setExpandedTextGravity(int i2) {
        if (this.i != i2) {
            this.i = i2;
            recalculate();
        }
    }

    public final int getExpandedTextGravity() {
        return this.i;
    }

    public final void setCollapsedTextGravity(int i2) {
        if (this.j != i2) {
            this.j = i2;
            recalculate();
        }
    }

    public final int getCollapsedTextGravity() {
        return this.j;
    }

    public final void setCollapsedTextAppearance(int i2) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.c.getContext(), i2, R.styleable.TextAppearance);
        if (obtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textColor)) {
            this.n = obtainStyledAttributes.getColorStateList(R.styleable.TextAppearance_android_textColor);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textSize)) {
            this.l = (float) obtainStyledAttributes.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int) this.l);
        }
        this.Q = obtainStyledAttributes.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
        this.O = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.P = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.N = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.u = a(i2);
        }
        recalculate();
    }

    public final void setExpandedTextAppearance(int i2) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.c.getContext(), i2, R.styleable.TextAppearance);
        if (obtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textColor)) {
            this.m = obtainStyledAttributes.getColorStateList(R.styleable.TextAppearance_android_textColor);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textSize)) {
            this.k = (float) obtainStyledAttributes.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int) this.k);
        }
        this.U = obtainStyledAttributes.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
        this.S = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.T = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.R = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.v = a(i2);
        }
        recalculate();
    }

    private Typeface a(int i2) {
        TypedArray obtainStyledAttributes = this.c.getContext().obtainStyledAttributes(i2, new int[]{16843692});
        try {
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            obtainStyledAttributes.recycle();
            return null;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final void setCollapsedTypeface(Typeface typeface) {
        if (this.u != typeface) {
            this.u = typeface;
            recalculate();
        }
    }

    public final void setExpandedTypeface(Typeface typeface) {
        if (this.v != typeface) {
            this.v = typeface;
            recalculate();
        }
    }

    public final void setTypefaces(Typeface typeface) {
        this.v = typeface;
        this.u = typeface;
        recalculate();
    }

    public final Typeface getCollapsedTypeface() {
        Typeface typeface = this.u;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public final Typeface getExpandedTypeface() {
        Typeface typeface = this.v;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public final void setExpansionFraction(float f2) {
        float clamp = MathUtils.clamp(f2, 0.0f, 1.0f);
        if (clamp != this.e) {
            this.e = clamp;
            b();
        }
    }

    public final boolean setState(int[] iArr) {
        this.H = iArr;
        if (!isStateful()) {
            return false;
        }
        recalculate();
        return true;
    }

    public final boolean isStateful() {
        ColorStateList colorStateList = this.n;
        if (colorStateList == null || !colorStateList.isStateful()) {
            ColorStateList colorStateList2 = this.m;
            if (colorStateList2 == null || !colorStateList2.isStateful()) {
                return false;
            }
        }
        return true;
    }

    public final float getExpansionFraction() {
        return this.e;
    }

    public final float getCollapsedTextSize() {
        return this.l;
    }

    public final float getExpandedTextSize() {
        return this.k;
    }

    private void b() {
        a(this.e);
    }

    private void a(float f2) {
        b(f2);
        this.s = a(this.q, this.r, f2, this.L);
        this.t = a(this.o, this.p, f2, this.L);
        c(a(this.k, this.l, f2, this.M));
        if (this.n != this.m) {
            this.J.setColor(a(c(), getCurrentCollapsedTextColor(), f2));
        } else {
            this.J.setColor(getCurrentCollapsedTextColor());
        }
        this.J.setShadowLayer(a(this.R, this.N, f2, null), a(this.S, this.O, f2, null), a(this.T, this.P, f2, null), a(this.U, this.Q, f2));
        ViewCompat.postInvalidateOnAnimation(this.c);
    }

    private int c() {
        int[] iArr = this.H;
        if (iArr != null) {
            return this.m.getColorForState(iArr, 0);
        }
        return this.m.getDefaultColor();
    }

    public final int getCurrentCollapsedTextColor() {
        int[] iArr = this.H;
        if (iArr != null) {
            return this.n.getColorForState(iArr, 0);
        }
        return this.n.getDefaultColor();
    }

    private void b(float f2) {
        this.h.left = a((float) this.f.left, (float) this.g.left, f2, this.L);
        this.h.top = a(this.o, this.p, f2, this.L);
        this.h.right = a((float) this.f.right, (float) this.g.right, f2, this.L);
        this.h.bottom = a((float) this.f.bottom, (float) this.g.bottom, f2, this.L);
    }

    public final void draw(Canvas canvas) {
        float f2;
        int save = canvas.save();
        if (this.y != null && this.d) {
            float f3 = this.s;
            float f4 = this.t;
            boolean z2 = this.A && this.B != null;
            if (z2) {
                f2 = this.D * this.F;
            } else {
                this.J.ascent();
                f2 = 0.0f;
                this.J.descent();
            }
            if (z2) {
                f4 += f2;
            }
            float f5 = f4;
            float f6 = this.F;
            if (f6 != 1.0f) {
                canvas.scale(f6, f6, f3, f5);
            }
            if (z2) {
                canvas.drawBitmap(this.B, f3, f5, this.C);
            } else {
                CharSequence charSequence = this.y;
                canvas.drawText(charSequence, 0, charSequence.length(), f3, f5, this.J);
            }
        }
        canvas.restoreToCount(save);
    }

    private boolean a(CharSequence charSequence) {
        boolean z2 = true;
        if (ViewCompat.getLayoutDirection(this.c) != 1) {
            z2 = false;
        }
        return (z2 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    private void c(float f2) {
        d(f2);
        this.A = f3935a && this.F != 1.0f;
        if (this.A) {
            d();
        }
        ViewCompat.postInvalidateOnAnimation(this.c);
    }

    private void d(float f2) {
        boolean z2;
        float f3;
        boolean z3;
        if (this.x != null) {
            float width = (float) this.g.width();
            float width2 = (float) this.f.width();
            boolean z4 = true;
            if (a(f2, this.l)) {
                float f4 = this.l;
                this.F = 1.0f;
                Typeface typeface = this.w;
                Typeface typeface2 = this.u;
                if (typeface != typeface2) {
                    this.w = typeface2;
                    z3 = true;
                } else {
                    z3 = false;
                }
                f3 = f4;
                z2 = z3;
            } else {
                f3 = this.k;
                Typeface typeface3 = this.w;
                Typeface typeface4 = this.v;
                if (typeface3 != typeface4) {
                    this.w = typeface4;
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (a(f2, this.k)) {
                    this.F = 1.0f;
                } else {
                    this.F = f2 / this.k;
                }
                float f5 = this.l / this.k;
                width = width2 * f5 > width ? Math.min(width / f5, width2) : width2;
            }
            if (width > 0.0f) {
                z2 = this.G != f3 || this.I || z2;
                this.G = f3;
                this.I = false;
            }
            if (this.y == null || z2) {
                this.J.setTextSize(this.G);
                this.J.setTypeface(this.w);
                TextPaint textPaint = this.J;
                if (this.F == 1.0f) {
                    z4 = false;
                }
                textPaint.setLinearText(z4);
                CharSequence ellipsize = TextUtils.ellipsize(this.x, this.J, width, TextUtils.TruncateAt.END);
                if (!TextUtils.equals(ellipsize, this.y)) {
                    this.y = ellipsize;
                    this.z = a(this.y);
                }
            }
        }
    }

    private void d() {
        if (this.B == null && !this.f.isEmpty() && !TextUtils.isEmpty(this.y)) {
            a(0.0f);
            this.D = this.J.ascent();
            this.E = this.J.descent();
            TextPaint textPaint = this.J;
            CharSequence charSequence = this.y;
            int round = Math.round(textPaint.measureText(charSequence, 0, charSequence.length()));
            int round2 = Math.round(this.E - this.D);
            if (round > 0 && round2 > 0) {
                this.B = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.B);
                CharSequence charSequence2 = this.y;
                canvas.drawText(charSequence2, 0, charSequence2.length(), 0.0f, ((float) round2) - this.J.descent(), this.J);
                if (this.C == null) {
                    this.C = new Paint(3);
                }
            }
        }
    }

    public final void recalculate() {
        if (this.c.getHeight() > 0 && this.c.getWidth() > 0) {
            float f2 = this.G;
            d(this.l);
            CharSequence charSequence = this.y;
            float f3 = 0.0f;
            float measureText = charSequence != null ? this.J.measureText(charSequence, 0, charSequence.length()) : 0.0f;
            int absoluteGravity = GravityCompat.getAbsoluteGravity(this.j, this.z ? 1 : 0);
            int i2 = absoluteGravity & 112;
            if (i2 == 48) {
                this.p = ((float) this.g.top) - this.J.ascent();
            } else if (i2 != 80) {
                this.p = ((float) this.g.centerY()) + (((this.J.descent() - this.J.ascent()) / 2.0f) - this.J.descent());
            } else {
                this.p = (float) this.g.bottom;
            }
            int i3 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
            if (i3 == 1) {
                this.r = ((float) this.g.centerX()) - (measureText / 2.0f);
            } else if (i3 != 5) {
                this.r = (float) this.g.left;
            } else {
                this.r = ((float) this.g.right) - measureText;
            }
            d(this.k);
            CharSequence charSequence2 = this.y;
            if (charSequence2 != null) {
                f3 = this.J.measureText(charSequence2, 0, charSequence2.length());
            }
            int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.i, this.z ? 1 : 0);
            int i4 = absoluteGravity2 & 112;
            if (i4 == 48) {
                this.o = ((float) this.f.top) - this.J.ascent();
            } else if (i4 != 80) {
                this.o = ((float) this.f.centerY()) + (((this.J.descent() - this.J.ascent()) / 2.0f) - this.J.descent());
            } else {
                this.o = (float) this.f.bottom;
            }
            int i5 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
            if (i5 == 1) {
                this.q = ((float) this.f.centerX()) - (f3 / 2.0f);
            } else if (i5 != 5) {
                this.q = (float) this.f.left;
            } else {
                this.q = ((float) this.f.right) - f3;
            }
            e();
            c(f2);
            b();
        }
    }

    public final void setText(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.x)) {
            this.x = charSequence;
            this.y = null;
            e();
            recalculate();
        }
    }

    public final CharSequence getText() {
        return this.x;
    }

    private void e() {
        Bitmap bitmap = this.B;
        if (bitmap != null) {
            bitmap.recycle();
            this.B = null;
        }
    }

    private static boolean a(float f2, float f3) {
        return Math.abs(f2 - f3) < 0.001f;
    }

    public final ColorStateList getExpandedTextColor() {
        return this.m;
    }

    public final ColorStateList getCollapsedTextColor() {
        return this.n;
    }

    private static int a(int i2, int i3, float f2) {
        float f3 = 1.0f - f2;
        return Color.argb((int) ((((float) Color.alpha(i2)) * f3) + (((float) Color.alpha(i3)) * f2)), (int) ((((float) Color.red(i2)) * f3) + (((float) Color.red(i3)) * f2)), (int) ((((float) Color.green(i2)) * f3) + (((float) Color.green(i3)) * f2)), (int) ((((float) Color.blue(i2)) * f3) + (((float) Color.blue(i3)) * f2)));
    }

    private static float a(float f2, float f3, float f4, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f4);
        }
        return a.lerp(f2, f3, f4);
    }

    private static boolean a(Rect rect, int i2, int i3, int i4, int i5) {
        return rect.left == i2 && rect.top == i3 && rect.right == i4 && rect.bottom == i5;
    }
}
