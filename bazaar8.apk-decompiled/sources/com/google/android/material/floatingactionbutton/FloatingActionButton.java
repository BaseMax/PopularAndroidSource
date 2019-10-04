package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.b.g.C0222m;
import b.b.g.C0224o;
import b.i.k.u;
import b.i.k.z;
import b.i.l.m;
import c.e.a.c.a.h;
import c.e.a.c.d;
import c.e.a.c.j;
import c.e.a.c.j.c;
import c.e.a.c.k;
import c.e.a.c.k.e;
import c.e.a.c.l.f;
import c.e.a.c.l.p;
import c.e.a.c.l.q;
import c.e.a.c.l.r;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.stateful.ExtendableSavedState;
import java.util.List;

@CoordinatorLayout.c(Behavior.class)
public class FloatingActionButton extends r implements u, m, c.e.a.c.j.a {

    /* renamed from: b  reason: collision with root package name */
    public ColorStateList f13366b;

    /* renamed from: c  reason: collision with root package name */
    public PorterDuff.Mode f13367c;

    /* renamed from: d  reason: collision with root package name */
    public ColorStateList f13368d;

    /* renamed from: e  reason: collision with root package name */
    public PorterDuff.Mode f13369e;

    /* renamed from: f  reason: collision with root package name */
    public int f13370f;

    /* renamed from: g  reason: collision with root package name */
    public ColorStateList f13371g;

    /* renamed from: h  reason: collision with root package name */
    public int f13372h;

    /* renamed from: i  reason: collision with root package name */
    public int f13373i;

    /* renamed from: j  reason: collision with root package name */
    public int f13374j;

    /* renamed from: k  reason: collision with root package name */
    public int f13375k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f13376l;
    public final Rect m;
    public final Rect n;
    public final C0224o o;
    public final c p;
    public e q;

    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.b<T> {

        /* renamed from: a  reason: collision with root package name */
        public Rect f13377a;

        /* renamed from: b  reason: collision with root package name */
        public a f13378b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f13379c;

        public BaseBehavior() {
            this.f13379c = true;
        }

        /* renamed from: a */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
            } else if (a(view)) {
                b(view, floatingActionButton);
            }
            return false;
        }

        public final boolean b(View view, FloatingActionButton floatingActionButton) {
            if (!a(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((CoordinatorLayout.e) floatingActionButton.getLayoutParams()).topMargin) {
                floatingActionButton.a(this.f13378b, false);
            } else {
                floatingActionButton.b(this.f13378b, false);
            }
            return true;
        }

        public void onAttachedToLayoutParams(CoordinatorLayout.e eVar) {
            if (eVar.f574h == 0) {
                eVar.f574h = 80;
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.FloatingActionButton_Behavior_Layout);
            this.f13379c = obtainStyledAttributes.getBoolean(k.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        public static boolean a(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.e) {
                return ((CoordinatorLayout.e) layoutParams).d() instanceof BottomSheetBehavior;
            }
            return false;
        }

        public final boolean a(View view, FloatingActionButton floatingActionButton) {
            CoordinatorLayout.e eVar = (CoordinatorLayout.e) floatingActionButton.getLayoutParams();
            if (this.f13379c && eVar.c() == view.getId() && floatingActionButton.getUserSetVisibility() == 0) {
                return true;
            }
            return false;
        }

        public final boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!a((View) appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f13377a == null) {
                this.f13377a = new Rect();
            }
            Rect rect = this.f13377a;
            f.a((ViewGroup) coordinatorLayout, (View) appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.a(this.f13378b, false);
            } else {
                floatingActionButton.b(this.f13378b, false);
            }
            return true;
        }

        /* renamed from: a */
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i2) {
            List<View> b2 = coordinatorLayout.b((View) floatingActionButton);
            int size = b2.size();
            for (int i3 = 0; i3 < size; i3++) {
                View view = b2.get(i3);
                if (!(view instanceof AppBarLayout)) {
                    if (a(view) && b(view, floatingActionButton)) {
                        break;
                    }
                } else if (a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.d(floatingActionButton, i2);
            a(coordinatorLayout, floatingActionButton);
            return true;
        }

        /* renamed from: a */
        public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.m;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        public final void a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            int i2;
            Rect rect = floatingActionButton.m;
            if (rect != null && rect.centerX() > 0 && rect.centerY() > 0) {
                CoordinatorLayout.e eVar = (CoordinatorLayout.e) floatingActionButton.getLayoutParams();
                int i3 = 0;
                if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - eVar.rightMargin) {
                    i2 = rect.right;
                } else {
                    i2 = floatingActionButton.getLeft() <= eVar.leftMargin ? -rect.left : 0;
                }
                if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - eVar.bottomMargin) {
                    i3 = rect.bottom;
                } else if (floatingActionButton.getTop() <= eVar.topMargin) {
                    i3 = -rect.top;
                }
                if (i3 != 0) {
                    z.e(floatingActionButton, i3);
                }
                if (i2 != 0) {
                    z.d(floatingActionButton, i2);
                }
            }
        }
    }

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static abstract class a {
        public abstract void a(FloatingActionButton floatingActionButton);

        public abstract void b(FloatingActionButton floatingActionButton);
    }

    private class b implements c.e.a.c.q.b {
        public b() {
        }

        public void a(int i2, int i3, int i4, int i5) {
            FloatingActionButton.this.m.set(i2, i3, i4, i5);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i2 + floatingActionButton.f13374j, i3 + FloatingActionButton.this.f13374j, i4 + FloatingActionButton.this.f13374j, i5 + FloatingActionButton.this.f13374j);
        }

        public float b() {
            return ((float) FloatingActionButton.this.getSizeDimension()) / 2.0f;
        }

        public void a(Drawable drawable) {
            FloatingActionButton.super.setBackgroundDrawable(drawable);
        }

        public boolean a() {
            return FloatingActionButton.this.f13376l;
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    private e getImpl() {
        if (this.q == null) {
            this.q = b();
        }
        return this.q;
    }

    public void b(a aVar, boolean z) {
        getImpl().b(a(aVar), z);
    }

    public void c(Animator.AnimatorListener animatorListener) {
        getImpl().c(animatorListener);
    }

    public final void d() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            ColorStateList colorStateList = this.f13368d;
            if (colorStateList == null) {
                b.i.c.a.a.b(drawable);
                return;
            }
            int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
            PorterDuff.Mode mode = this.f13369e;
            if (mode == null) {
                mode = PorterDuff.Mode.SRC_IN;
            }
            drawable.mutate().setColorFilter(C0222m.a(colorForState, mode));
        }
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().a(getDrawableState());
    }

    public ColorStateList getBackgroundTintList() {
        return this.f13366b;
    }

    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f13367c;
    }

    public float getCompatElevation() {
        return getImpl().f();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().h();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().i();
    }

    public Drawable getContentBackground() {
        return getImpl().c();
    }

    public int getCustomSize() {
        return this.f13373i;
    }

    public int getExpandedComponentIdHint() {
        return this.p.b();
    }

    public h getHideMotionSpec() {
        return getImpl().g();
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f13371g;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.f13371g;
    }

    public h getShowMotionSpec() {
        return getImpl().j();
    }

    public int getSize() {
        return this.f13372h;
    }

    public int getSizeDimension() {
        return a(this.f13372h);
    }

    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    public ColorStateList getSupportImageTintList() {
        return this.f13368d;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f13369e;
    }

    public boolean getUseCompatPadding() {
        return this.f13376l;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().m();
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().p();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().r();
    }

    public void onMeasure(int i2, int i3) {
        int sizeDimension = getSizeDimension();
        this.f13374j = (sizeDimension - this.f13375k) / 2;
        getImpl().x();
        int min = Math.min(a(sizeDimension, i2), a(sizeDimension, i3));
        Rect rect = this.m;
        setMeasuredDimension(rect.left + min + rect.right, min + rect.top + rect.bottom);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.a());
        this.p.a(extendableSavedState.f13407c.get("expandableWidgetHelper"));
    }

    public Parcelable onSaveInstanceState() {
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(super.onSaveInstanceState());
        extendableSavedState.f13407c.put("expandableWidgetHelper", this.p.d());
        return extendableSavedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !a(this.n) || this.n.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void setBackgroundColor(int i2) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    public void setBackgroundResource(int i2) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f13366b != colorStateList) {
            this.f13366b = colorStateList;
            getImpl().a(colorStateList);
        }
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f13367c != mode) {
            this.f13367c = mode;
            getImpl().a(mode);
        }
    }

    public void setCompatElevation(float f2) {
        getImpl().a(f2);
    }

    public void setCompatElevationResource(int i2) {
        setCompatElevation(getResources().getDimension(i2));
    }

    public void setCompatHoveredFocusedTranslationZ(float f2) {
        getImpl().b(f2);
    }

    public void setCompatHoveredFocusedTranslationZResource(int i2) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i2));
    }

    public void setCompatPressedTranslationZ(float f2) {
        getImpl().d(f2);
    }

    public void setCompatPressedTranslationZResource(int i2) {
        setCompatPressedTranslationZ(getResources().getDimension(i2));
    }

    public void setCustomSize(int i2) {
        if (i2 >= 0) {
            this.f13373i = i2;
            return;
        }
        throw new IllegalArgumentException("Custom size must be non-negative");
    }

    public void setExpandedComponentIdHint(int i2) {
        this.p.a(i2);
    }

    public void setHideMotionSpec(h hVar) {
        getImpl().a(hVar);
    }

    public void setHideMotionSpecResource(int i2) {
        setHideMotionSpec(h.a(getContext(), i2));
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        getImpl().w();
    }

    public void setImageResource(int i2) {
        this.o.a(i2);
    }

    public void setRippleColor(int i2) {
        setRippleColor(ColorStateList.valueOf(i2));
    }

    public void setShowMotionSpec(h hVar) {
        getImpl().b(hVar);
    }

    public void setShowMotionSpecResource(int i2) {
        setShowMotionSpec(h.a(getContext(), i2));
    }

    public void setSize(int i2) {
        this.f13373i = 0;
        if (i2 != this.f13372h) {
            this.f13372h = i2;
            requestLayout();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.f13368d != colorStateList) {
            this.f13368d = colorStateList;
            d();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f13369e != mode) {
            this.f13369e = mode;
            d();
        }
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f13376l != z) {
            this.f13376l = z;
            getImpl().q();
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.e.a.c.b.floatingActionButtonStyle);
    }

    public void b(Animator.AnimatorListener animatorListener) {
        getImpl().b(animatorListener);
    }

    public boolean c() {
        return getImpl().l();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f13371g != colorStateList) {
            this.f13371g = colorStateList;
            getImpl().b(this.f13371g);
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.m = new Rect();
        this.n = new Rect();
        TypedArray c2 = p.c(context, attributeSet, k.FloatingActionButton, i2, j.Widget_Design_FloatingActionButton, new int[0]);
        this.f13366b = c.e.a.c.o.a.a(context, c2, k.FloatingActionButton_backgroundTint);
        this.f13367c = q.a(c2.getInt(k.FloatingActionButton_backgroundTintMode, -1), null);
        this.f13371g = c.e.a.c.o.a.a(context, c2, k.FloatingActionButton_rippleColor);
        this.f13372h = c2.getInt(k.FloatingActionButton_fabSize, -1);
        this.f13373i = c2.getDimensionPixelSize(k.FloatingActionButton_fabCustomSize, 0);
        this.f13370f = c2.getDimensionPixelSize(k.FloatingActionButton_borderWidth, 0);
        float dimension = c2.getDimension(k.FloatingActionButton_elevation, 0.0f);
        float dimension2 = c2.getDimension(k.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = c2.getDimension(k.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.f13376l = c2.getBoolean(k.FloatingActionButton_useCompatPadding, false);
        this.f13375k = c2.getDimensionPixelSize(k.FloatingActionButton_maxImageSize, 0);
        h a2 = h.a(context, c2, k.FloatingActionButton_showMotionSpec);
        h a3 = h.a(context, c2, k.FloatingActionButton_hideMotionSpec);
        c2.recycle();
        this.o = new C0224o(this);
        this.o.a(attributeSet, i2);
        this.p = new c(this);
        getImpl().a(this.f13366b, this.f13367c, this.f13371g, this.f13370f);
        getImpl().a(dimension);
        getImpl().b(dimension2);
        getImpl().d(dimension3);
        getImpl().a(this.f13375k);
        getImpl().b(a2);
        getImpl().a(a3);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public void a(a aVar, boolean z) {
        getImpl().a(a(aVar), z);
    }

    public void b(Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        c(rect);
    }

    public final void c(Rect rect) {
        int i2 = rect.left;
        Rect rect2 = this.m;
        rect.left = i2 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    public void a(Animator.AnimatorListener animatorListener) {
        getImpl().a(animatorListener);
    }

    public boolean a() {
        return this.p.c();
    }

    public final e b() {
        if (Build.VERSION.SDK_INT >= 21) {
            return new c.e.a.c.k.f(this, new b());
        }
        return new e(this, new b());
    }

    public final e.d a(a aVar) {
        if (aVar == null) {
            return null;
        }
        return new a(this, aVar);
    }

    public final int a(int i2) {
        int i3;
        int i4 = this.f13373i;
        if (i4 != 0) {
            return i4;
        }
        Resources resources = getResources();
        if (i2 == -1) {
            if (Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470) {
                i3 = a(1);
            } else {
                i3 = a(0);
            }
            return i3;
        } else if (i2 != 1) {
            return resources.getDimensionPixelSize(d.design_fab_size_normal);
        } else {
            return resources.getDimensionPixelSize(d.design_fab_size_mini);
        }
    }

    public void d(Animator.AnimatorListener animatorListener) {
        getImpl().d(animatorListener);
    }

    @Deprecated
    public boolean a(Rect rect) {
        if (!z.B(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        c(rect);
        return true;
    }

    public static int a(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i2, size);
        }
        if (mode == 0) {
            return i2;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }
}
