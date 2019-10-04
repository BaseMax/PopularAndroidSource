package androidx.appcompat.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import b.b.e.a;
import b.b.g.C;
import b.b.g.Da;
import b.b.g.H;
import b.b.g.pa;
import b.b.j;
import b.i.k.z;
import com.crashlytics.android.answers.AnswersRetryFilesSender;

public class SwitchCompat extends CompoundButton {

    /* renamed from: a  reason: collision with root package name */
    public static final Property<SwitchCompat, Float> f441a = new ja(Float.class, "thumbPos");

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f442b = {16842912};
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public final TextPaint H;
    public ColorStateList I;
    public Layout J;
    public Layout K;
    public TransformationMethod L;
    public ObjectAnimator M;
    public final C N;
    public final Rect O;

    /* renamed from: c  reason: collision with root package name */
    public Drawable f443c;

    /* renamed from: d  reason: collision with root package name */
    public ColorStateList f444d;

    /* renamed from: e  reason: collision with root package name */
    public PorterDuff.Mode f445e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f446f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f447g;

    /* renamed from: h  reason: collision with root package name */
    public Drawable f448h;

    /* renamed from: i  reason: collision with root package name */
    public ColorStateList f449i;

    /* renamed from: j  reason: collision with root package name */
    public PorterDuff.Mode f450j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f451k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f452l;
    public int m;
    public int n;
    public int o;
    public boolean p;
    public CharSequence q;
    public CharSequence r;
    public boolean s;
    public int t;
    public int u;
    public float v;
    public float w;
    public VelocityTracker x;
    public int y;
    public float z;

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public static float a(float f2, float f3, float f4) {
        return f2 < f3 ? f3 : f2 > f4 ? f4 : f2;
    }

    private boolean getTargetCheckedState() {
        return this.z > 0.5f;
    }

    private int getThumbOffset() {
        float f2;
        if (Da.a(this)) {
            f2 = 1.0f - this.z;
        } else {
            f2 = this.z;
        }
        return (int) ((f2 * ((float) getThumbScrollRange())) + 0.5f);
    }

    private int getThumbScrollRange() {
        Rect rect;
        Drawable drawable = this.f448h;
        if (drawable == null) {
            return 0;
        }
        Rect rect2 = this.O;
        drawable.getPadding(rect2);
        Drawable drawable2 = this.f443c;
        if (drawable2 != null) {
            rect = H.d(drawable2);
        } else {
            rect = H.f2053c;
        }
        return ((((this.A - this.C) - rect2.left) - rect2.right) - rect.left) - rect.right;
    }

    public void a(Context context, int i2) {
        pa a2 = pa.a(context, i2, j.TextAppearance);
        ColorStateList a3 = a2.a(j.TextAppearance_android_textColor);
        if (a3 != null) {
            this.I = a3;
        } else {
            this.I = getTextColors();
        }
        int c2 = a2.c(j.TextAppearance_android_textSize, 0);
        if (c2 != 0) {
            float f2 = (float) c2;
            if (f2 != this.H.getTextSize()) {
                this.H.setTextSize(f2);
                requestLayout();
            }
        }
        a(a2.d(j.TextAppearance_android_typeface, -1), a2.d(j.TextAppearance_android_textStyle, -1));
        if (a2.a(j.TextAppearance_textAllCaps, false)) {
            this.L = new a(getContext());
        } else {
            this.L = null;
        }
        a2.a();
    }

    public final void b() {
        if (this.f448h == null) {
            return;
        }
        if (this.f451k || this.f452l) {
            this.f448h = b.i.c.a.a.i(this.f448h).mutate();
            if (this.f451k) {
                b.i.c.a.a.a(this.f448h, this.f449i);
            }
            if (this.f452l) {
                b.i.c.a.a.a(this.f448h, this.f450j);
            }
            if (this.f448h.isStateful()) {
                this.f448h.setState(getDrawableState());
            }
        }
    }

    public final void c() {
        ObjectAnimator objectAnimator = this.M;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public void draw(Canvas canvas) {
        Rect rect;
        int i2;
        int i3;
        Rect rect2 = this.O;
        int i4 = this.D;
        int i5 = this.E;
        int i6 = this.F;
        int i7 = this.G;
        int thumbOffset = getThumbOffset() + i4;
        Drawable drawable = this.f443c;
        if (drawable != null) {
            rect = H.d(drawable);
        } else {
            rect = H.f2053c;
        }
        Drawable drawable2 = this.f448h;
        if (drawable2 != null) {
            drawable2.getPadding(rect2);
            int i8 = rect2.left;
            thumbOffset += i8;
            if (rect != null) {
                int i9 = rect.left;
                if (i9 > i8) {
                    i4 += i9 - i8;
                }
                int i10 = rect.top;
                int i11 = rect2.top;
                i2 = i10 > i11 ? (i10 - i11) + i5 : i5;
                int i12 = rect.right;
                int i13 = rect2.right;
                if (i12 > i13) {
                    i6 -= i12 - i13;
                }
                int i14 = rect.bottom;
                int i15 = rect2.bottom;
                if (i14 > i15) {
                    i3 = i7 - (i14 - i15);
                    this.f448h.setBounds(i4, i2, i6, i3);
                }
            } else {
                i2 = i5;
            }
            i3 = i7;
            this.f448h.setBounds(i4, i2, i6, i3);
        }
        Drawable drawable3 = this.f443c;
        if (drawable3 != null) {
            drawable3.getPadding(rect2);
            int i16 = thumbOffset - rect2.left;
            int i17 = thumbOffset + this.C + rect2.right;
            this.f443c.setBounds(i16, i5, i17, i7);
            Drawable background = getBackground();
            if (background != null) {
                b.i.c.a.a.a(background, i16, i5, i17, i7);
            }
        }
        super.draw(canvas);
    }

    public void drawableHotspotChanged(float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f2, f3);
        }
        Drawable drawable = this.f443c;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, f2, f3);
        }
        Drawable drawable2 = this.f448h;
        if (drawable2 != null) {
            b.i.c.a.a.a(drawable2, f2, f3);
        }
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f443c;
        boolean z2 = false;
        if (drawable != null && drawable.isStateful()) {
            z2 = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f448h;
        if (drawable2 != null && drawable2.isStateful()) {
            z2 |= drawable2.setState(drawableState);
        }
        if (z2) {
            invalidate();
        }
    }

    public int getCompoundPaddingLeft() {
        if (!Da.a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.A;
        if (!TextUtils.isEmpty(getText())) {
            compoundPaddingLeft += this.o;
        }
        return compoundPaddingLeft;
    }

    public int getCompoundPaddingRight() {
        if (Da.a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.A;
        if (!TextUtils.isEmpty(getText())) {
            compoundPaddingRight += this.o;
        }
        return compoundPaddingRight;
    }

    public boolean getShowText() {
        return this.s;
    }

    public boolean getSplitTrack() {
        return this.p;
    }

    public int getSwitchMinWidth() {
        return this.n;
    }

    public int getSwitchPadding() {
        return this.o;
    }

    public CharSequence getTextOff() {
        return this.r;
    }

    public CharSequence getTextOn() {
        return this.q;
    }

    public Drawable getThumbDrawable() {
        return this.f443c;
    }

    public int getThumbTextPadding() {
        return this.m;
    }

    public ColorStateList getThumbTintList() {
        return this.f444d;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f445e;
    }

    public Drawable getTrackDrawable() {
        return this.f448h;
    }

    public ColorStateList getTrackTintList() {
        return this.f449i;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f450j;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f443c;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f448h;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.M;
        if (objectAnimator != null && objectAnimator.isStarted()) {
            this.M.end();
            this.M = null;
        }
    }

    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, f442b);
        }
        return onCreateDrawableState;
    }

    public void onDraw(Canvas canvas) {
        int i2;
        super.onDraw(canvas);
        Rect rect = this.O;
        Drawable drawable = this.f448h;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i3 = this.E;
        int i4 = this.G;
        int i5 = i3 + rect.top;
        int i6 = i4 - rect.bottom;
        Drawable drawable2 = this.f443c;
        if (drawable != null) {
            if (!this.p || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect d2 = H.d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += d2.left;
                rect.right -= d2.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.J : this.K;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.I;
            if (colorStateList != null) {
                this.H.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.H.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                i2 = bounds.left + bounds.right;
            } else {
                i2 = getWidth();
            }
            canvas.translate((float) ((i2 / 2) - (layout.getWidth() / 2)), (float) (((i5 + i6) / 2) - (layout.getHeight() / 2)));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        CharSequence charSequence = isChecked() ? this.q : this.r;
        if (!TextUtils.isEmpty(charSequence)) {
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        super.onLayout(z2, i2, i3, i4, i5);
        int i12 = 0;
        if (this.f443c != null) {
            Rect rect = this.O;
            Drawable drawable = this.f448h;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect d2 = H.d(this.f443c);
            i6 = Math.max(0, d2.left - rect.left);
            i12 = Math.max(0, d2.right - rect.right);
        } else {
            i6 = 0;
        }
        if (Da.a(this)) {
            i8 = getPaddingLeft() + i6;
            i7 = ((this.A + i8) - i6) - i12;
        } else {
            i7 = (getWidth() - getPaddingRight()) - i12;
            i8 = (i7 - this.A) + i6 + i12;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            i11 = this.B;
            i10 = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (i11 / 2);
        } else if (gravity != 80) {
            i10 = getPaddingTop();
            i11 = this.B;
        } else {
            i9 = getHeight() - getPaddingBottom();
            i10 = i9 - this.B;
            this.D = i8;
            this.E = i10;
            this.G = i9;
            this.F = i7;
        }
        i9 = i11 + i10;
        this.D = i8;
        this.E = i10;
        this.G = i9;
        this.F = i7;
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        if (this.s) {
            if (this.J == null) {
                this.J = a(this.q);
            }
            if (this.K == null) {
                this.K = a(this.r);
            }
        }
        Rect rect = this.O;
        Drawable drawable = this.f443c;
        int i6 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i5 = (this.f443c.getIntrinsicWidth() - rect.left) - rect.right;
            i4 = this.f443c.getIntrinsicHeight();
        } else {
            i5 = 0;
            i4 = 0;
        }
        this.C = Math.max(this.s ? Math.max(this.J.getWidth(), this.K.getWidth()) + (this.m * 2) : 0, i5);
        Drawable drawable2 = this.f448h;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i6 = this.f448h.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i7 = rect.left;
        int i8 = rect.right;
        Drawable drawable3 = this.f443c;
        if (drawable3 != null) {
            Rect d2 = H.d(drawable3);
            i7 = Math.max(i7, d2.left);
            i8 = Math.max(i8, d2.right);
        }
        int max = Math.max(this.n, (this.C * 2) + i7 + i8);
        int max2 = Math.max(i6, i4);
        this.A = max;
        this.B = max2;
        super.onMeasure(i2, i3);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.q : this.r;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0012, code lost:
        if (r0 != 3) goto L_0x00bb;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            android.view.VelocityTracker r0 = r6.x
            r0.addMovement(r7)
            int r0 = r7.getActionMasked()
            r1 = 1
            if (r0 == 0) goto L_0x00a1
            r2 = 2
            if (r0 == r1) goto L_0x008d
            if (r0 == r2) goto L_0x0016
            r3 = 3
            if (r0 == r3) goto L_0x008d
            goto L_0x00bb
        L_0x0016:
            int r0 = r6.t
            if (r0 == 0) goto L_0x00bb
            if (r0 == r1) goto L_0x0059
            if (r0 == r2) goto L_0x0020
            goto L_0x00bb
        L_0x0020:
            float r7 = r7.getX()
            int r0 = r6.getThumbScrollRange()
            float r2 = r6.v
            float r2 = r7 - r2
            r3 = 1065353216(0x3f800000, float:1.0)
            r4 = 0
            if (r0 == 0) goto L_0x0034
            float r0 = (float) r0
            float r2 = r2 / r0
            goto L_0x003f
        L_0x0034:
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L_0x003b
            r2 = 1065353216(0x3f800000, float:1.0)
            goto L_0x003f
        L_0x003b:
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
            r2 = -1082130432(0xffffffffbf800000, float:-1.0)
        L_0x003f:
            boolean r0 = b.b.g.Da.a(r6)
            if (r0 == 0) goto L_0x0046
            float r2 = -r2
        L_0x0046:
            float r0 = r6.z
            float r0 = r0 + r2
            float r0 = a(r0, r4, r3)
            float r2 = r6.z
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L_0x0058
            r6.v = r7
            r6.setThumbPosition(r0)
        L_0x0058:
            return r1
        L_0x0059:
            float r0 = r7.getX()
            float r3 = r7.getY()
            float r4 = r6.v
            float r4 = r0 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.u
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 > 0) goto L_0x007f
            float r4 = r6.w
            float r4 = r3 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.u
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L_0x00bb
        L_0x007f:
            r6.t = r2
            android.view.ViewParent r7 = r6.getParent()
            r7.requestDisallowInterceptTouchEvent(r1)
            r6.v = r0
            r6.w = r3
            return r1
        L_0x008d:
            int r0 = r6.t
            if (r0 != r2) goto L_0x0098
            r6.b(r7)
            super.onTouchEvent(r7)
            return r1
        L_0x0098:
            r0 = 0
            r6.t = r0
            android.view.VelocityTracker r0 = r6.x
            r0.clear()
            goto L_0x00bb
        L_0x00a1:
            float r0 = r7.getX()
            float r2 = r7.getY()
            boolean r3 = r6.isEnabled()
            if (r3 == 0) goto L_0x00bb
            boolean r3 = r6.a((float) r0, (float) r2)
            if (r3 == 0) goto L_0x00bb
            r6.t = r1
            r6.v = r0
            r6.w = r2
        L_0x00bb:
            boolean r7 = super.onTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setChecked(boolean z2) {
        super.setChecked(z2);
        boolean isChecked = isChecked();
        if (getWindowToken() == null || !z.B(this)) {
            c();
            setThumbPosition(isChecked ? 1.0f : 0.0f);
            return;
        }
        a(isChecked);
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(b.i.l.j.a((TextView) this, callback));
    }

    public void setShowText(boolean z2) {
        if (this.s != z2) {
            this.s = z2;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z2) {
        this.p = z2;
        invalidate();
    }

    public void setSwitchMinWidth(int i2) {
        this.n = i2;
        requestLayout();
    }

    public void setSwitchPadding(int i2) {
        this.o = i2;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.H.getTypeface() != null && !this.H.getTypeface().equals(typeface)) || (this.H.getTypeface() == null && typeface != null)) {
            this.H.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void setTextOff(CharSequence charSequence) {
        this.r = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.q = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f443c;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f443c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f2) {
        this.z = f2;
        invalidate();
    }

    public void setThumbResource(int i2) {
        setThumbDrawable(b.b.b.a.a.c(getContext(), i2));
    }

    public void setThumbTextPadding(int i2) {
        this.m = i2;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f444d = colorStateList;
        this.f446f = true;
        a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f445e = mode;
        this.f447g = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f448h;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f448h = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i2) {
        setTrackDrawable(b.b.b.a.a.c(getContext(), i2));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f449i = colorStateList;
        this.f451k = true;
        b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f450j = mode;
        this.f452l = true;
        b();
    }

    public void toggle() {
        setChecked(!isChecked());
    }

    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f443c || drawable == this.f448h;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.b.a.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f444d = null;
        this.f445e = null;
        this.f446f = false;
        this.f447g = false;
        this.f449i = null;
        this.f450j = null;
        this.f451k = false;
        this.f452l = false;
        this.x = VelocityTracker.obtain();
        this.O = new Rect();
        this.H = new TextPaint(1);
        Resources resources = getResources();
        this.H.density = resources.getDisplayMetrics().density;
        pa a2 = pa.a(context, attributeSet, j.SwitchCompat, i2, 0);
        this.f443c = a2.b(j.SwitchCompat_android_thumb);
        Drawable drawable = this.f443c;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        this.f448h = a2.b(j.SwitchCompat_track);
        Drawable drawable2 = this.f448h;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        this.q = a2.e(j.SwitchCompat_android_textOn);
        this.r = a2.e(j.SwitchCompat_android_textOff);
        this.s = a2.a(j.SwitchCompat_showText, true);
        this.m = a2.c(j.SwitchCompat_thumbTextPadding, 0);
        this.n = a2.c(j.SwitchCompat_switchMinWidth, 0);
        this.o = a2.c(j.SwitchCompat_switchPadding, 0);
        this.p = a2.a(j.SwitchCompat_splitTrack, false);
        ColorStateList a3 = a2.a(j.SwitchCompat_thumbTint);
        if (a3 != null) {
            this.f444d = a3;
            this.f446f = true;
        }
        PorterDuff.Mode a4 = H.a(a2.d(j.SwitchCompat_thumbTintMode, -1), null);
        if (this.f445e != a4) {
            this.f445e = a4;
            this.f447g = true;
        }
        if (this.f446f || this.f447g) {
            a();
        }
        ColorStateList a5 = a2.a(j.SwitchCompat_trackTint);
        if (a5 != null) {
            this.f449i = a5;
            this.f451k = true;
        }
        PorterDuff.Mode a6 = H.a(a2.d(j.SwitchCompat_trackTintMode, -1), null);
        if (this.f450j != a6) {
            this.f450j = a6;
            this.f452l = true;
        }
        if (this.f451k || this.f452l) {
            b();
        }
        int g2 = a2.g(j.SwitchCompat_switchTextAppearance, 0);
        if (g2 != 0) {
            a(context, g2);
        }
        this.N = new C(this);
        this.N.a(attributeSet, i2);
        a2.a();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.u = viewConfiguration.getScaledTouchSlop();
        this.y = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    public final void b(MotionEvent motionEvent) {
        boolean z2;
        this.t = 0;
        boolean z3 = true;
        boolean z4 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z4) {
            this.x.computeCurrentVelocity(AnswersRetryFilesSender.BACKOFF_MS);
            float xVelocity = this.x.getXVelocity();
            if (Math.abs(xVelocity) > ((float) this.y)) {
                if (!Da.a(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                    z3 = false;
                }
                z2 = z3;
            } else {
                z2 = getTargetCheckedState();
            }
        } else {
            z2 = isChecked;
        }
        if (z2 != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z2);
        a(motionEvent);
    }

    public final void a(int i2, int i3) {
        Typeface typeface;
        if (i2 == 1) {
            typeface = Typeface.SANS_SERIF;
        } else if (i2 != 2) {
            typeface = i2 != 3 ? null : Typeface.MONOSPACE;
        } else {
            typeface = Typeface.SERIF;
        }
        a(typeface, i3);
    }

    public void a(Typeface typeface, int i2) {
        Typeface typeface2;
        float f2 = 0.0f;
        boolean z2 = false;
        if (i2 > 0) {
            if (typeface == null) {
                typeface2 = Typeface.defaultFromStyle(i2);
            } else {
                typeface2 = Typeface.create(typeface, i2);
            }
            setSwitchTypeface(typeface2);
            int style = ((typeface2 != null ? typeface2.getStyle() : 0) ^ -1) & i2;
            TextPaint textPaint = this.H;
            if ((style & 1) != 0) {
                z2 = true;
            }
            textPaint.setFakeBoldText(z2);
            TextPaint textPaint2 = this.H;
            if ((style & 2) != 0) {
                f2 = -0.25f;
            }
            textPaint2.setTextSkewX(f2);
            return;
        }
        this.H.setFakeBoldText(false);
        this.H.setTextSkewX(0.0f);
        setSwitchTypeface(typeface);
    }

    public final void a() {
        if (this.f443c == null) {
            return;
        }
        if (this.f446f || this.f447g) {
            this.f443c = b.i.c.a.a.i(this.f443c).mutate();
            if (this.f446f) {
                b.i.c.a.a.a(this.f443c, this.f444d);
            }
            if (this.f447g) {
                b.i.c.a.a.a(this.f443c, this.f445e);
            }
            if (this.f443c.isStateful()) {
                this.f443c.setState(getDrawableState());
            }
        }
    }

    public final Layout a(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.L;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        CharSequence charSequence2 = charSequence;
        TextPaint textPaint = this.H;
        StaticLayout staticLayout = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil((double) Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        return staticLayout;
    }

    public final boolean a(float f2, float f3) {
        boolean z2 = false;
        if (this.f443c == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f443c.getPadding(this.O);
        int i2 = this.E;
        int i3 = this.u;
        int i4 = i2 - i3;
        int i5 = (this.D + thumbOffset) - i3;
        Rect rect = this.O;
        int i6 = this.C + i5 + rect.left + rect.right + i3;
        int i7 = this.G + i3;
        if (f2 > ((float) i5) && f2 < ((float) i6) && f3 > ((float) i4) && f3 < ((float) i7)) {
            z2 = true;
        }
        return z2;
    }

    public final void a(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    public final void a(boolean z2) {
        this.M = ObjectAnimator.ofFloat(this, f441a, new float[]{z2 ? 1.0f : 0.0f});
        this.M.setDuration(250);
        if (Build.VERSION.SDK_INT >= 18) {
            this.M.setAutoCancel(true);
        }
        this.M.start();
    }
}
