package c.e.a.c.h;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import b.i.b.a.h;
import b.k.b.c;
import c.e.a.c.h.b;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: Chip */
public class a extends AppCompatCheckBox implements b.a {

    /* renamed from: d  reason: collision with root package name */
    public static final Rect f11297d = new Rect();

    /* renamed from: e  reason: collision with root package name */
    public static final int[] f11298e = {16842913};

    /* renamed from: f  reason: collision with root package name */
    public b f11299f;

    /* renamed from: g  reason: collision with root package name */
    public RippleDrawable f11300g;

    /* renamed from: h  reason: collision with root package name */
    public View.OnClickListener f11301h;

    /* renamed from: i  reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f11302i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f11303j;

    /* renamed from: k  reason: collision with root package name */
    public int f11304k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f11305l;
    public boolean m;
    public boolean n;
    public final C0131a o;
    public final Rect p;
    public final RectF q;
    public final h.a r;

    /* renamed from: c.e.a.c.h.a$a  reason: collision with other inner class name */
    /* compiled from: Chip */
    private class C0131a extends c {
    }

    private RectF getCloseIconTouchBounds() {
        this.q.setEmpty();
        if (!b()) {
            return this.q;
        }
        this.f11299f.a(this.q);
        throw null;
    }

    private Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.p.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.p;
    }

    private c.e.a.c.o.b getTextAppearance() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.y();
        throw null;
    }

    private void setCloseIconFocused(boolean z) {
        if (this.n != z) {
            this.n = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconHovered(boolean z) {
        if (this.m != z) {
            this.m = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.f11305l != z) {
            this.f11305l = z;
            refreshDrawableState();
        }
    }

    private void setFocusedVirtualView(int i2) {
        int i3 = this.f11304k;
        if (i3 != i2) {
            if (i3 == 0) {
                setCloseIconFocused(false);
            }
            this.f11304k = i2;
            if (i2 == 0) {
                setCloseIconFocused(true);
            }
        }
    }

    public final void a(b bVar) {
        bVar.a((b.a) this);
        throw null;
    }

    public final void b(b bVar) {
        if (bVar != null) {
            bVar.a((b.a) null);
            throw null;
        }
    }

    public boolean c() {
        boolean z;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f11301h;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        } else {
            z = false;
        }
        this.o.c(0, 1);
        return z;
    }

    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return a(motionEvent) || this.o.a(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.o.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.C();
            throw null;
        }
    }

    public Drawable getCheckedIcon() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.a();
        throw null;
    }

    public ColorStateList getChipBackgroundColor() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.b();
        throw null;
    }

    public float getChipCornerRadius() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.c();
        throw null;
    }

    public Drawable getChipDrawable() {
        return this.f11299f;
    }

    public float getChipEndPadding() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.d();
        throw null;
    }

    public Drawable getChipIcon() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.e();
        throw null;
    }

    public float getChipIconSize() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.f();
        throw null;
    }

    public ColorStateList getChipIconTint() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.g();
        throw null;
    }

    public float getChipMinHeight() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.h();
        throw null;
    }

    public float getChipStartPadding() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.i();
        throw null;
    }

    public ColorStateList getChipStrokeColor() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.j();
        throw null;
    }

    public float getChipStrokeWidth() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.k();
        throw null;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.l();
        throw null;
    }

    public CharSequence getCloseIconContentDescription() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.m();
        throw null;
    }

    public float getCloseIconEndPadding() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.n();
        throw null;
    }

    public float getCloseIconSize() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.o();
        throw null;
    }

    public float getCloseIconStartPadding() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.p();
        throw null;
    }

    public ColorStateList getCloseIconTint() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.q();
        throw null;
    }

    public TextUtils.TruncateAt getEllipsize() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.r();
        throw null;
    }

    public void getFocusedRect(Rect rect) {
        if (this.f11304k == 0) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    public c.e.a.c.a.h getHideMotionSpec() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.s();
        throw null;
    }

    public float getIconEndPadding() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.t();
        throw null;
    }

    public float getIconStartPadding() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.u();
        throw null;
    }

    public ColorStateList getRippleColor() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.v();
        throw null;
    }

    public c.e.a.c.a.h getShowMotionSpec() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return null;
        }
        bVar.w();
        throw null;
    }

    public CharSequence getText() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return "";
        }
        bVar.x();
        throw null;
    }

    public float getTextEndPadding() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.z();
        throw null;
    }

    public float getTextStartPadding() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return 0.0f;
        }
        bVar.A();
        throw null;
    }

    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, f11298e);
        }
        return onCreateDrawableState;
    }

    public void onDraw(Canvas canvas) {
        if (!TextUtils.isEmpty(getText())) {
            b bVar = this.f11299f;
            if (bVar != null) {
                bVar.D();
                throw null;
            }
        }
        super.onDraw(canvas);
    }

    public void onFocusChanged(boolean z, int i2, Rect rect) {
        if (z) {
            setFocusedVirtualView(-1);
        } else {
            setFocusedVirtualView(Integer.MIN_VALUE);
        }
        invalidate();
        super.onFocusChanged(z, i2, rect);
        this.o.a(z, i2, rect);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0069  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onKeyDown(int r7, android.view.KeyEvent r8) {
        /*
            r6 = this;
            int r0 = r8.getKeyCode()
            r1 = 61
            r2 = 0
            r3 = 1
            if (r0 == r1) goto L_0x0041
            r1 = 66
            if (r0 == r1) goto L_0x0031
            switch(r0) {
                case 21: goto L_0x0022;
                case 22: goto L_0x0012;
                case 23: goto L_0x0031;
                default: goto L_0x0011;
            }
        L_0x0011:
            goto L_0x006d
        L_0x0012:
            boolean r0 = r8.hasNoModifiers()
            if (r0 == 0) goto L_0x006d
            boolean r0 = c.e.a.c.l.q.a(r6)
            r0 = r0 ^ r3
            boolean r2 = r6.a((boolean) r0)
            goto L_0x006d
        L_0x0022:
            boolean r0 = r8.hasNoModifiers()
            if (r0 == 0) goto L_0x006d
            boolean r0 = c.e.a.c.l.q.a(r6)
            boolean r2 = r6.a((boolean) r0)
            goto L_0x006d
        L_0x0031:
            int r0 = r6.f11304k
            r1 = -1
            if (r0 == r1) goto L_0x003d
            if (r0 == 0) goto L_0x0039
            goto L_0x006d
        L_0x0039:
            r6.c()
            return r3
        L_0x003d:
            r6.performClick()
            return r3
        L_0x0041:
            boolean r0 = r8.hasNoModifiers()
            if (r0 == 0) goto L_0x0049
            r0 = 2
            goto L_0x0052
        L_0x0049:
            boolean r0 = r8.hasModifiers(r3)
            if (r0 == 0) goto L_0x0051
            r0 = 1
            goto L_0x0052
        L_0x0051:
            r0 = 0
        L_0x0052:
            if (r0 == 0) goto L_0x006d
            android.view.ViewParent r1 = r6.getParent()
            r4 = r6
        L_0x0059:
            android.view.View r4 = r4.focusSearch(r0)
            if (r4 == 0) goto L_0x0067
            if (r4 == r6) goto L_0x0067
            android.view.ViewParent r5 = r4.getParent()
            if (r5 == r1) goto L_0x0059
        L_0x0067:
            if (r4 == 0) goto L_0x006d
            r4.requestFocus()
            return r3
        L_0x006d:
            if (r2 == 0) goto L_0x0073
            r6.invalidate()
            return r3
        L_0x0073:
            boolean r7 = super.onKeyDown(r7, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.c.h.a.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        if (!getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return null;
        }
        return PointerIcon.getSystemIcon(getContext(), 1002);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001e, code lost:
        if (r0 != 3) goto L_0x0040;
     */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0043  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L_0x0039
            if (r0 == r3) goto L_0x002b
            r4 = 2
            if (r0 == r4) goto L_0x0021
            r1 = 3
            if (r0 == r1) goto L_0x0034
            goto L_0x0040
        L_0x0021:
            boolean r0 = r5.f11305l
            if (r0 == 0) goto L_0x0040
            if (r1 != 0) goto L_0x003e
            r5.setCloseIconPressed(r2)
            goto L_0x003e
        L_0x002b:
            boolean r0 = r5.f11305l
            if (r0 == 0) goto L_0x0034
            r5.c()
            r0 = 1
            goto L_0x0035
        L_0x0034:
            r0 = 0
        L_0x0035:
            r5.setCloseIconPressed(r2)
            goto L_0x0041
        L_0x0039:
            if (r1 == 0) goto L_0x0040
            r5.setCloseIconPressed(r3)
        L_0x003e:
            r0 = 1
            goto L_0x0041
        L_0x0040:
            r0 = 0
        L_0x0041:
            if (r0 != 0) goto L_0x0049
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L_0x004a
        L_0x0049:
            r2 = 1
        L_0x004a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.c.h.a.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setBackground(Drawable drawable) {
        if (drawable == this.f11299f || drawable == this.f11300g) {
            super.setBackground(drawable);
            return;
        }
        throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
    }

    public void setBackgroundColor(int i2) {
        throw new UnsupportedOperationException("Do not set the background color; Chip manages its own background drawable.");
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == this.f11299f || drawable == this.f11300g) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        throw new UnsupportedOperationException("Do not set the background drawable; Chip manages its own background drawable.");
    }

    public void setBackgroundResource(int i2) {
        throw new UnsupportedOperationException("Do not set the background resource; Chip manages its own background drawable.");
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        throw new UnsupportedOperationException("Do not set the background tint list; Chip manages its own background drawable.");
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        throw new UnsupportedOperationException("Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.a(z);
            throw null;
        }
    }

    public void setCheckableResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.a(i2);
            throw null;
        }
    }

    public void setChecked(boolean z) {
        b bVar = this.f11299f;
        if (bVar == null) {
            this.f11303j = z;
        } else {
            bVar.B();
            throw null;
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.a(drawable);
            throw null;
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i2) {
        setCheckedIconVisible(i2);
    }

    public void setCheckedIconResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.b(i2);
            throw null;
        }
    }

    public void setCheckedIconVisible(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.c(i2);
            throw null;
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.a(colorStateList);
            throw null;
        }
    }

    public void setChipBackgroundColorResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.d(i2);
            throw null;
        }
    }

    public void setChipCornerRadius(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.a(f2);
            throw null;
        }
    }

    public void setChipCornerRadiusResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.e(i2);
            throw null;
        }
    }

    public void setChipDrawable(b bVar) {
        b bVar2 = this.f11299f;
        if (bVar2 != bVar) {
            b(bVar2);
            this.f11299f = bVar;
            a(this.f11299f);
            throw null;
        }
    }

    public void setChipEndPadding(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.b(f2);
            throw null;
        }
    }

    public void setChipEndPaddingResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.f(i2);
            throw null;
        }
    }

    public void setChipIcon(Drawable drawable) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.b(drawable);
            throw null;
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i2) {
        setChipIconVisible(i2);
    }

    public void setChipIconResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.g(i2);
            throw null;
        }
    }

    public void setChipIconSize(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.c(f2);
            throw null;
        }
    }

    public void setChipIconSizeResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.h(i2);
            throw null;
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.b(colorStateList);
            throw null;
        }
    }

    public void setChipIconTintResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.i(i2);
            throw null;
        }
    }

    public void setChipIconVisible(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.j(i2);
            throw null;
        }
    }

    public void setChipMinHeight(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.d(f2);
            throw null;
        }
    }

    public void setChipMinHeightResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.k(i2);
            throw null;
        }
    }

    public void setChipStartPadding(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.e(f2);
            throw null;
        }
    }

    public void setChipStartPaddingResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.l(i2);
            throw null;
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.c(colorStateList);
            throw null;
        }
    }

    public void setChipStrokeColorResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.m(i2);
            throw null;
        }
    }

    public void setChipStrokeWidth(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.f(f2);
            throw null;
        }
    }

    public void setChipStrokeWidthResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.n(i2);
            throw null;
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i2) {
        setText(getResources().getString(i2));
    }

    public void setCloseIcon(Drawable drawable) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.c(drawable);
            throw null;
        }
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.a(charSequence);
            throw null;
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i2) {
        setCloseIconVisible(i2);
    }

    public void setCloseIconEndPadding(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.g(f2);
            throw null;
        }
    }

    public void setCloseIconEndPaddingResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.o(i2);
            throw null;
        }
    }

    public void setCloseIconResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.p(i2);
            throw null;
        }
    }

    public void setCloseIconSize(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.h(f2);
            throw null;
        }
    }

    public void setCloseIconSizeResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.q(i2);
            throw null;
        }
    }

    public void setCloseIconStartPadding(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.i(f2);
            throw null;
        }
    }

    public void setCloseIconStartPaddingResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.r(i2);
            throw null;
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.d(colorStateList);
            throw null;
        }
    }

    public void setCloseIconTintResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.s(i2);
            throw null;
        }
    }

    public void setCloseIconVisible(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.t(i2);
            throw null;
        }
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i4 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i2, i3, i4, i5);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i4 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i2, i3, i4, i5);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f11299f != null) {
            if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
                super.setEllipsize(truncateAt);
                b bVar = this.f11299f;
                if (bVar != null) {
                    bVar.a(truncateAt);
                    throw null;
                }
                return;
            }
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
    }

    public void setGravity(int i2) {
        if (i2 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i2);
        }
    }

    public void setHideMotionSpec(c.e.a.c.a.h hVar) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.a(hVar);
            throw null;
        }
    }

    public void setHideMotionSpecResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.u(i2);
            throw null;
        }
    }

    public void setIconEndPadding(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.j(f2);
            throw null;
        }
    }

    public void setIconEndPaddingResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.v(i2);
            throw null;
        }
    }

    public void setIconStartPadding(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.k(f2);
            throw null;
        }
    }

    public void setIconStartPaddingResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.w(i2);
            throw null;
        }
    }

    public void setLines(int i2) {
        if (i2 <= 1) {
            super.setLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setMaxLines(int i2) {
        if (i2 <= 1) {
            super.setMaxLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setMaxWidth(int i2) {
        super.setMaxWidth(i2);
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.x(i2);
            throw null;
        }
    }

    public void setMinLines(int i2) {
        if (i2 <= 1) {
            super.setMinLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f11302i = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f11301h = onClickListener;
    }

    public void setRippleColor(ColorStateList colorStateList) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.e(colorStateList);
            throw null;
        }
    }

    public void setRippleColorResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.y(i2);
            throw null;
        }
    }

    public void setShowMotionSpec(c.e.a.c.a.h hVar) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.b(hVar);
            throw null;
        }
    }

    public void setShowMotionSpecResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.z(i2);
            throw null;
        }
    }

    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (this.f11299f != null) {
            if (charSequence == null) {
                charSequence = "";
            }
            b.i.i.a.a().c(charSequence);
            this.f11299f.D();
            throw null;
        }
    }

    public void setTextAppearance(c.e.a.c.o.b bVar) {
        b bVar2 = this.f11299f;
        if (bVar2 != null) {
            bVar2.a(bVar);
            throw null;
        } else if (getTextAppearance() != null) {
            getTextAppearance().a(getContext(), getPaint(), this.r);
            throw null;
        }
    }

    public void setTextAppearanceResource(int i2) {
        b bVar = this.f11299f;
        if (bVar == null) {
            setTextAppearance(getContext(), i2);
        } else {
            bVar.A(i2);
            throw null;
        }
    }

    public void setTextEndPadding(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.l(f2);
            throw null;
        }
    }

    public void setTextEndPaddingResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.B(i2);
            throw null;
        }
    }

    public void setTextStartPadding(float f2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.m(f2);
            throw null;
        }
    }

    public void setTextStartPaddingResource(int i2) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.C(i2);
            throw null;
        }
    }

    @SuppressLint({"PrivateApi"})
    public final boolean a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 10) {
            try {
                Field declaredField = c.class.getDeclaredField("p");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(this.o)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = c.class.getDeclaredMethod("i", new Class[]{Integer.TYPE});
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.o, new Object[]{Integer.MIN_VALUE});
                    return true;
                }
            } catch (NoSuchMethodException e2) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e2);
            } catch (IllegalAccessException e3) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e3);
            } catch (InvocationTargetException e4) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e4);
            } catch (NoSuchFieldException e5) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e5);
            }
        }
        return false;
    }

    public final boolean b() {
        b bVar = this.f11299f;
        if (bVar == null) {
            return false;
        }
        bVar.l();
        throw null;
    }

    public void setCheckedIconVisible(boolean z) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.b(z);
            throw null;
        }
    }

    public void setChipIconVisible(boolean z) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.c(z);
            throw null;
        }
    }

    public void setCloseIconVisible(boolean z) {
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.d(z);
            throw null;
        }
    }

    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
    }

    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.A(i2);
            throw null;
        } else if (getTextAppearance() != null) {
            getTextAppearance().a(context, getPaint(), this.r);
            throw null;
        }
    }

    public void setTextAppearance(int i2) {
        super.setTextAppearance(i2);
        b bVar = this.f11299f;
        if (bVar != null) {
            bVar.A(i2);
            throw null;
        } else if (getTextAppearance() != null) {
            getTextAppearance().a(getContext(), getPaint(), this.r);
            throw null;
        }
    }

    public final boolean a(boolean z) {
        a();
        if (z) {
            if (this.f11304k == -1) {
                setFocusedVirtualView(0);
                return true;
            }
        } else if (this.f11304k == 0) {
            setFocusedVirtualView(-1);
            return true;
        }
        return false;
    }

    public final void a() {
        if (this.f11304k == Integer.MIN_VALUE) {
            setFocusedVirtualView(-1);
        }
    }
}
