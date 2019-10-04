package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.a;
import com.google.android.material.internal.l;

final class b {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f3852a = (Build.VERSION.SDK_INT >= 21);

    /* renamed from: b  reason: collision with root package name */
    final MaterialButton f3853b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h;
    PorterDuff.Mode i;
    ColorStateList j;
    ColorStateList k;
    ColorStateList l;
    final Paint m = new Paint(1);
    final Rect n = new Rect();
    final RectF o = new RectF();
    GradientDrawable p;
    Drawable q;
    GradientDrawable r;
    Drawable s;
    GradientDrawable t;
    GradientDrawable u;
    GradientDrawable v;
    boolean w = false;

    public b(MaterialButton materialButton) {
        this.f3853b = materialButton;
    }

    public final void loadFromAttributes(TypedArray typedArray) {
        Drawable drawable;
        this.c = typedArray.getDimensionPixelOffset(a.k.MaterialButton_android_insetLeft, 0);
        this.d = typedArray.getDimensionPixelOffset(a.k.MaterialButton_android_insetRight, 0);
        this.e = typedArray.getDimensionPixelOffset(a.k.MaterialButton_android_insetTop, 0);
        this.f = typedArray.getDimensionPixelOffset(a.k.MaterialButton_android_insetBottom, 0);
        this.g = typedArray.getDimensionPixelSize(a.k.MaterialButton_cornerRadius, 0);
        this.h = typedArray.getDimensionPixelSize(a.k.MaterialButton_strokeWidth, 0);
        this.i = l.parseTintMode(typedArray.getInt(a.k.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.j = com.google.android.material.f.a.getColorStateList(this.f3853b.getContext(), typedArray, a.k.MaterialButton_backgroundTint);
        this.k = com.google.android.material.f.a.getColorStateList(this.f3853b.getContext(), typedArray, a.k.MaterialButton_strokeColor);
        this.l = com.google.android.material.f.a.getColorStateList(this.f3853b.getContext(), typedArray, a.k.MaterialButton_rippleColor);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setStrokeWidth((float) this.h);
        Paint paint = this.m;
        ColorStateList colorStateList = this.k;
        paint.setColor(colorStateList != null ? colorStateList.getColorForState(this.f3853b.getDrawableState(), 0) : 0);
        int paddingStart = ViewCompat.getPaddingStart(this.f3853b);
        int paddingTop = this.f3853b.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f3853b);
        int paddingBottom = this.f3853b.getPaddingBottom();
        MaterialButton materialButton = this.f3853b;
        if (f3852a) {
            drawable = c();
        } else {
            this.p = new GradientDrawable();
            this.p.setCornerRadius(((float) this.g) + 1.0E-5f);
            this.p.setColor(-1);
            this.q = DrawableCompat.wrap(this.p);
            DrawableCompat.setTintList(this.q, this.j);
            PorterDuff.Mode mode = this.i;
            if (mode != null) {
                DrawableCompat.setTintMode(this.q, mode);
            }
            this.r = new GradientDrawable();
            this.r.setCornerRadius(((float) this.g) + 1.0E-5f);
            this.r.setColor(-1);
            this.s = DrawableCompat.wrap(this.r);
            DrawableCompat.setTintList(this.s, this.l);
            drawable = a(new LayerDrawable(new Drawable[]{this.q, this.s}));
        }
        materialButton.setInternalBackground(drawable);
        ViewCompat.setPaddingRelative(this.f3853b, paddingStart + this.c, paddingTop + this.e, paddingEnd + this.d, paddingBottom + this.f);
    }

    private InsetDrawable a(Drawable drawable) {
        InsetDrawable insetDrawable = new InsetDrawable(drawable, this.c, this.e, this.d, this.f);
        return insetDrawable;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        GradientDrawable gradientDrawable = this.t;
        if (gradientDrawable != null) {
            DrawableCompat.setTintList(gradientDrawable, this.j);
            PorterDuff.Mode mode = this.i;
            if (mode != null) {
                DrawableCompat.setTintMode(this.t, mode);
            }
        }
    }

    private Drawable c() {
        this.t = new GradientDrawable();
        this.t.setCornerRadius(((float) this.g) + 1.0E-5f);
        this.t.setColor(-1);
        a();
        this.u = new GradientDrawable();
        this.u.setCornerRadius(((float) this.g) + 1.0E-5f);
        this.u.setColor(0);
        this.u.setStroke(this.h, this.k);
        InsetDrawable a2 = a(new LayerDrawable(new Drawable[]{this.t, this.u}));
        this.v = new GradientDrawable();
        this.v.setCornerRadius(((float) this.g) + 1.0E-5f);
        this.v.setColor(-1);
        return new a(com.google.android.material.g.a.convertToRippleDrawableColor(this.l), a2, this.v);
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        if (!f3852a || this.u == null) {
            if (!f3852a) {
                this.f3853b.invalidate();
            }
            return;
        }
        this.f3853b.setInternalBackground(c());
    }
}
