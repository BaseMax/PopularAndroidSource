package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import b.i.c.a.a;
import b.i.k.z;
import b.i.l.j;
import c.e.a.c.g.b;
import c.e.a.c.k;
import c.e.a.c.l.p;
import c.e.a.c.l.q;

public class MaterialButton extends AppCompatButton {

    /* renamed from: c  reason: collision with root package name */
    public final b f13358c;

    /* renamed from: d  reason: collision with root package name */
    public int f13359d;

    /* renamed from: e  reason: collision with root package name */
    public PorterDuff.Mode f13360e;

    /* renamed from: f  reason: collision with root package name */
    public ColorStateList f13361f;

    /* renamed from: g  reason: collision with root package name */
    public Drawable f13362g;

    /* renamed from: h  reason: collision with root package name */
    public int f13363h;

    /* renamed from: i  reason: collision with root package name */
    public int f13364i;

    /* renamed from: j  reason: collision with root package name */
    public int f13365j;

    public MaterialButton(Context context) {
        this(context, null);
    }

    public final boolean a() {
        return z.m(this) == 1;
    }

    public final boolean b() {
        b bVar = this.f13358c;
        return bVar != null && !bVar.i();
    }

    public final void c() {
        Drawable drawable = this.f13362g;
        if (drawable != null) {
            this.f13362g = drawable.mutate();
            a.a(this.f13362g, this.f13361f);
            PorterDuff.Mode mode = this.f13360e;
            if (mode != null) {
                a.a(this.f13362g, mode);
            }
            int i2 = this.f13363h;
            if (i2 == 0) {
                i2 = this.f13362g.getIntrinsicWidth();
            }
            int i3 = this.f13363h;
            if (i3 == 0) {
                i3 = this.f13362g.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f13362g;
            int i4 = this.f13364i;
            drawable2.setBounds(i4, 0, i2 + i4, i3);
        }
        j.a((TextView) this, this.f13362g, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (b()) {
            return this.f13358c.c();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f13362g;
    }

    public int getIconGravity() {
        return this.f13365j;
    }

    public int getIconPadding() {
        return this.f13359d;
    }

    public int getIconSize() {
        return this.f13363h;
    }

    public ColorStateList getIconTint() {
        return this.f13361f;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f13360e;
    }

    public ColorStateList getRippleColor() {
        if (b()) {
            return this.f13358c.d();
        }
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (b()) {
            return this.f13358c.e();
        }
        return null;
    }

    public int getStrokeWidth() {
        if (b()) {
            return this.f13358c.f();
        }
        return 0;
    }

    public ColorStateList getSupportBackgroundTintList() {
        if (b()) {
            return this.f13358c.g();
        }
        return super.getSupportBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (b()) {
            return this.f13358c.h();
        }
        return super.getSupportBackgroundTintMode();
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (Build.VERSION.SDK_INT < 21 && b()) {
            this.f13358c.a(canvas);
        }
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (Build.VERSION.SDK_INT == 21) {
            b bVar = this.f13358c;
            if (bVar != null) {
                bVar.a(i5 - i3, i4 - i2);
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f13362g != null && this.f13365j == 2) {
            int measureText = (int) getPaint().measureText(getText().toString());
            int i4 = this.f13363h;
            if (i4 == 0) {
                i4 = this.f13362g.getIntrinsicWidth();
            }
            int measuredWidth = (((((getMeasuredWidth() - measureText) - z.p(this)) - i4) - this.f13359d) - z.q(this)) / 2;
            if (a()) {
                measuredWidth = -measuredWidth;
            }
            if (this.f13364i != measuredWidth) {
                this.f13364i = measuredWidth;
                c();
            }
        }
    }

    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    public void setBackgroundColor(int i2) {
        if (b()) {
            this.f13358c.a(i2);
        } else {
            super.setBackgroundColor(i2);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (!b()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable != getBackground()) {
            Log.i("MaterialButton", "Setting a custom background is not supported.");
            this.f13358c.j();
            super.setBackgroundDrawable(drawable);
        } else {
            getBackground().setState(drawable.getState());
        }
    }

    public void setBackgroundResource(int i2) {
        setBackgroundDrawable(i2 != 0 ? b.b.b.a.a.c(getContext(), i2) : null);
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCornerRadius(int i2) {
        if (b()) {
            this.f13358c.b(i2);
        }
    }

    public void setCornerRadiusResource(int i2) {
        if (b()) {
            setCornerRadius(getResources().getDimensionPixelSize(i2));
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f13362g != drawable) {
            this.f13362g = drawable;
            c();
        }
    }

    public void setIconGravity(int i2) {
        this.f13365j = i2;
    }

    public void setIconPadding(int i2) {
        if (this.f13359d != i2) {
            this.f13359d = i2;
            setCompoundDrawablePadding(i2);
        }
    }

    public void setIconResource(int i2) {
        setIcon(i2 != 0 ? b.b.b.a.a.c(getContext(), i2) : null);
    }

    public void setIconSize(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        } else if (this.f13363h != i2) {
            this.f13363h = i2;
            c();
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f13361f != colorStateList) {
            this.f13361f = colorStateList;
            c();
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f13360e != mode) {
            this.f13360e = mode;
            c();
        }
    }

    public void setIconTintResource(int i2) {
        setIconTint(b.b.b.a.a.b(getContext(), i2));
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (b()) {
            this.f13358c.a(colorStateList);
        }
    }

    public void setRippleColorResource(int i2) {
        if (b()) {
            setRippleColor(b.b.b.a.a.b(getContext(), i2));
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (b()) {
            this.f13358c.b(colorStateList);
        }
    }

    public void setStrokeColorResource(int i2) {
        if (b()) {
            setStrokeColor(b.b.b.a.a.b(getContext(), i2));
        }
    }

    public void setStrokeWidth(int i2) {
        if (b()) {
            this.f13358c.c(i2);
        }
    }

    public void setStrokeWidthResource(int i2) {
        if (b()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i2));
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (b()) {
            this.f13358c.c(colorStateList);
        } else if (this.f13358c != null) {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (b()) {
            this.f13358c.a(mode);
        } else if (this.f13358c != null) {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.e.a.c.b.materialButtonStyle);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray c2 = p.c(context, attributeSet, k.MaterialButton, i2, c.e.a.c.j.Widget_MaterialComponents_Button, new int[0]);
        this.f13359d = c2.getDimensionPixelSize(k.MaterialButton_iconPadding, 0);
        this.f13360e = q.a(c2.getInt(k.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f13361f = c.e.a.c.o.a.a(getContext(), c2, k.MaterialButton_iconTint);
        this.f13362g = c.e.a.c.o.a.b(getContext(), c2, k.MaterialButton_icon);
        this.f13365j = c2.getInteger(k.MaterialButton_iconGravity, 1);
        this.f13363h = c2.getDimensionPixelSize(k.MaterialButton_iconSize, 0);
        this.f13358c = new b(this);
        this.f13358c.a(c2);
        c2.recycle();
        setCompoundDrawablePadding(this.f13359d);
        c();
    }
}
