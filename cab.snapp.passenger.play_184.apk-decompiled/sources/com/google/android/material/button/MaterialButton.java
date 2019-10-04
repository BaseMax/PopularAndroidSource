package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.a;
import com.google.android.material.internal.k;
import com.google.android.material.internal.l;

public class MaterialButton extends AppCompatButton {
    public static final int ICON_GRAVITY_START = 1;
    public static final int ICON_GRAVITY_TEXT_START = 2;

    /* renamed from: a  reason: collision with root package name */
    private final b f3850a;

    /* renamed from: b  reason: collision with root package name */
    private int f3851b;
    private PorterDuff.Mode c;
    private ColorStateList d;
    private Drawable e;
    private int f;
    private int g;
    private int h;

    public MaterialButton(Context context) {
        this(context, null);
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.materialButtonStyle);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = k.obtainStyledAttributes(context, attributeSet, a.k.MaterialButton, i, a.j.Widget_MaterialComponents_Button, new int[0]);
        this.f3851b = obtainStyledAttributes.getDimensionPixelSize(a.k.MaterialButton_iconPadding, 0);
        this.c = l.parseTintMode(obtainStyledAttributes.getInt(a.k.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.d = com.google.android.material.f.a.getColorStateList(getContext(), obtainStyledAttributes, a.k.MaterialButton_iconTint);
        this.e = com.google.android.material.f.a.getDrawable(getContext(), obtainStyledAttributes, a.k.MaterialButton_icon);
        this.h = obtainStyledAttributes.getInteger(a.k.MaterialButton_iconGravity, 1);
        this.f = obtainStyledAttributes.getDimensionPixelSize(a.k.MaterialButton_iconSize, 0);
        this.f3850a = new b(this);
        this.f3850a.loadFromAttributes(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        setCompoundDrawablePadding(this.f3851b);
        a();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (Build.VERSION.SDK_INT < 21 && b()) {
            b bVar = this.f3850a;
            if (canvas != null && bVar.k != null && bVar.h > 0) {
                bVar.n.set(bVar.f3853b.getBackground().getBounds());
                bVar.o.set(((float) bVar.n.left) + (((float) bVar.h) / 2.0f) + ((float) bVar.c), ((float) bVar.n.top) + (((float) bVar.h) / 2.0f) + ((float) bVar.e), (((float) bVar.n.right) - (((float) bVar.h) / 2.0f)) - ((float) bVar.d), (((float) bVar.n.bottom) - (((float) bVar.h) / 2.0f)) - ((float) bVar.f));
                float f2 = ((float) bVar.g) - (((float) bVar.h) / 2.0f);
                canvas.drawRoundRect(bVar.o, f2, f2, bVar.m);
            }
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (b()) {
            b bVar = this.f3850a;
            if (bVar.j != colorStateList) {
                bVar.j = colorStateList;
                if (b.f3852a) {
                    bVar.a();
                    return;
                } else if (bVar.q != null) {
                    DrawableCompat.setTintList(bVar.q, bVar.j);
                }
            }
            return;
        }
        if (this.f3850a != null) {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        if (b()) {
            return this.f3850a.j;
        }
        return super.getSupportBackgroundTintList();
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (b()) {
            b bVar = this.f3850a;
            if (bVar.i != mode) {
                bVar.i = mode;
                if (b.f3852a) {
                    bVar.a();
                    return;
                } else if (!(bVar.q == null || bVar.i == null)) {
                    DrawableCompat.setTintMode(bVar.q, bVar.i);
                }
            }
            return;
        }
        if (this.f3850a != null) {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (b()) {
            return this.f3850a.i;
        }
        return super.getSupportBackgroundTintMode();
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public void setBackgroundColor(int i) {
        if (b()) {
            b bVar = this.f3850a;
            if (!b.f3852a || bVar.t == null) {
                if (!b.f3852a && bVar.p != null) {
                    bVar.p.setColor(i);
                }
                return;
            }
            bVar.t.setColor(i);
            return;
        }
        super.setBackgroundColor(i);
    }

    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (b()) {
            if (drawable != getBackground()) {
                b bVar = this.f3850a;
                bVar.w = true;
                bVar.f3853b.setSupportBackgroundTintList(bVar.j);
                bVar.f3853b.setSupportBackgroundTintMode(bVar.i);
            } else {
                getBackground().setState(drawable.getState());
                return;
            }
        }
        super.setBackgroundDrawable(drawable);
    }

    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT == 21) {
            b bVar = this.f3850a;
            if (bVar != null) {
                int i5 = i4 - i2;
                int i6 = i3 - i;
                if (bVar.v != null) {
                    bVar.v.setBounds(bVar.c, bVar.e, i6 - bVar.d, i5 - bVar.f);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.e != null && this.h == 2) {
            int measureText = (int) getPaint().measureText(getText().toString());
            int i3 = this.f;
            if (i3 == 0) {
                i3 = this.e.getIntrinsicWidth();
            }
            int measuredWidth = (((((getMeasuredWidth() - measureText) - ViewCompat.getPaddingEnd(this)) - i3) - this.f3851b) - ViewCompat.getPaddingStart(this)) / 2;
            boolean z = true;
            if (ViewCompat.getLayoutDirection(this) != 1) {
                z = false;
            }
            if (z) {
                measuredWidth = -measuredWidth;
            }
            if (this.g != measuredWidth) {
                this.g = measuredWidth;
                a();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setIconPadding(int i) {
        if (this.f3851b != i) {
            this.f3851b = i;
            setCompoundDrawablePadding(i);
        }
    }

    public int getIconPadding() {
        return this.f3851b;
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        } else if (this.f != i) {
            this.f = i;
            a();
        }
    }

    public int getIconSize() {
        return this.f;
    }

    public void setIcon(Drawable drawable) {
        if (this.e != drawable) {
            this.e = drawable;
            a();
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public Drawable getIcon() {
        return this.e;
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.d != colorStateList) {
            this.d = colorStateList;
            a();
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(AppCompatResources.getColorStateList(getContext(), i));
    }

    public ColorStateList getIconTint() {
        return this.d;
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.c != mode) {
            this.c = mode;
            a();
        }
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.c;
    }

    private void a() {
        Drawable drawable = this.e;
        if (drawable != null) {
            this.e = drawable.mutate();
            DrawableCompat.setTintList(this.e, this.d);
            PorterDuff.Mode mode = this.c;
            if (mode != null) {
                DrawableCompat.setTintMode(this.e, mode);
            }
            int i = this.f;
            if (i == 0) {
                i = this.e.getIntrinsicWidth();
            }
            int i2 = this.f;
            if (i2 == 0) {
                i2 = this.e.getIntrinsicHeight();
            }
            Drawable drawable2 = this.e;
            int i3 = this.g;
            drawable2.setBounds(i3, 0, i + i3, i2);
        }
        TextViewCompat.setCompoundDrawablesRelative(this, this.e, null, null, null);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (b()) {
            b bVar = this.f3850a;
            if (bVar.l != colorStateList) {
                bVar.l = colorStateList;
                if (b.f3852a && (bVar.f3853b.getBackground() instanceof RippleDrawable)) {
                    ((RippleDrawable) bVar.f3853b.getBackground()).setColor(colorStateList);
                } else if (!b.f3852a && bVar.s != null) {
                    DrawableCompat.setTintList(bVar.s, colorStateList);
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (b()) {
            setRippleColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public ColorStateList getRippleColor() {
        if (b()) {
            return this.f3850a.l;
        }
        return null;
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (b()) {
            b bVar = this.f3850a;
            if (bVar.k != colorStateList) {
                bVar.k = colorStateList;
                Paint paint = bVar.m;
                int i = 0;
                if (colorStateList != null) {
                    i = colorStateList.getColorForState(bVar.f3853b.getDrawableState(), 0);
                }
                paint.setColor(i);
                bVar.b();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (b()) {
            setStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public ColorStateList getStrokeColor() {
        if (b()) {
            return this.f3850a.k;
        }
        return null;
    }

    public void setStrokeWidth(int i) {
        if (b()) {
            b bVar = this.f3850a;
            if (bVar.h != i) {
                bVar.h = i;
                bVar.m.setStrokeWidth((float) i);
                bVar.b();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (b()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    public int getStrokeWidth() {
        if (b()) {
            return this.f3850a.h;
        }
        return 0;
    }

    /* JADX WARNING: type inference failed for: r1v25, types: [android.graphics.drawable.Drawable] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setCornerRadius(int r7) {
        /*
            r6 = this;
            boolean r0 = r6.b()
            if (r0 == 0) goto L_0x00b0
            com.google.android.material.button.b r0 = r6.f3850a
            int r1 = r0.g
            if (r1 == r7) goto L_0x00b0
            r0.g = r7
            boolean r1 = com.google.android.material.button.b.f3852a
            r2 = 925353388(0x3727c5ac, float:1.0E-5)
            if (r1 == 0) goto L_0x0093
            android.graphics.drawable.GradientDrawable r1 = r0.t
            if (r1 == 0) goto L_0x0093
            android.graphics.drawable.GradientDrawable r1 = r0.u
            if (r1 == 0) goto L_0x0093
            android.graphics.drawable.GradientDrawable r1 = r0.v
            if (r1 == 0) goto L_0x0093
            int r1 = android.os.Build.VERSION.SDK_INT
            r3 = 21
            if (r1 != r3) goto L_0x0081
            boolean r1 = com.google.android.material.button.b.f3852a
            r3 = 0
            r4 = 0
            if (r1 == 0) goto L_0x0050
            com.google.android.material.button.MaterialButton r1 = r0.f3853b
            android.graphics.drawable.Drawable r1 = r1.getBackground()
            if (r1 == 0) goto L_0x0050
            com.google.android.material.button.MaterialButton r1 = r0.f3853b
            android.graphics.drawable.Drawable r1 = r1.getBackground()
            android.graphics.drawable.RippleDrawable r1 = (android.graphics.drawable.RippleDrawable) r1
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r4)
            android.graphics.drawable.InsetDrawable r1 = (android.graphics.drawable.InsetDrawable) r1
            android.graphics.drawable.Drawable r1 = r1.getDrawable()
            android.graphics.drawable.LayerDrawable r1 = (android.graphics.drawable.LayerDrawable) r1
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r4)
            android.graphics.drawable.GradientDrawable r1 = (android.graphics.drawable.GradientDrawable) r1
            goto L_0x0051
        L_0x0050:
            r1 = r3
        L_0x0051:
            float r5 = (float) r7
            float r5 = r5 + r2
            r1.setCornerRadius(r5)
            boolean r1 = com.google.android.material.button.b.f3852a
            if (r1 == 0) goto L_0x007e
            com.google.android.material.button.MaterialButton r1 = r0.f3853b
            android.graphics.drawable.Drawable r1 = r1.getBackground()
            if (r1 == 0) goto L_0x007e
            com.google.android.material.button.MaterialButton r1 = r0.f3853b
            android.graphics.drawable.Drawable r1 = r1.getBackground()
            android.graphics.drawable.RippleDrawable r1 = (android.graphics.drawable.RippleDrawable) r1
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r4)
            android.graphics.drawable.InsetDrawable r1 = (android.graphics.drawable.InsetDrawable) r1
            android.graphics.drawable.Drawable r1 = r1.getDrawable()
            android.graphics.drawable.LayerDrawable r1 = (android.graphics.drawable.LayerDrawable) r1
            r3 = 1
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r3)
            r3 = r1
            android.graphics.drawable.GradientDrawable r3 = (android.graphics.drawable.GradientDrawable) r3
        L_0x007e:
            r3.setCornerRadius(r5)
        L_0x0081:
            android.graphics.drawable.GradientDrawable r1 = r0.t
            float r7 = (float) r7
            float r7 = r7 + r2
            r1.setCornerRadius(r7)
            android.graphics.drawable.GradientDrawable r1 = r0.u
            r1.setCornerRadius(r7)
            android.graphics.drawable.GradientDrawable r0 = r0.v
            r0.setCornerRadius(r7)
            return
        L_0x0093:
            boolean r1 = com.google.android.material.button.b.f3852a
            if (r1 != 0) goto L_0x00b0
            android.graphics.drawable.GradientDrawable r1 = r0.p
            if (r1 == 0) goto L_0x00b0
            android.graphics.drawable.GradientDrawable r1 = r0.r
            if (r1 == 0) goto L_0x00b0
            android.graphics.drawable.GradientDrawable r1 = r0.p
            float r7 = (float) r7
            float r7 = r7 + r2
            r1.setCornerRadius(r7)
            android.graphics.drawable.GradientDrawable r1 = r0.r
            r1.setCornerRadius(r7)
            com.google.android.material.button.MaterialButton r7 = r0.f3853b
            r7.invalidate()
        L_0x00b0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.setCornerRadius(int):void");
    }

    public void setCornerRadiusResource(int i) {
        if (b()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    public int getCornerRadius() {
        if (b()) {
            return this.f3850a.g;
        }
        return 0;
    }

    public int getIconGravity() {
        return this.h;
    }

    public void setIconGravity(int i) {
        this.h = i;
    }

    private boolean b() {
        b bVar = this.f3850a;
        return bVar != null && !bVar.w;
    }
}
