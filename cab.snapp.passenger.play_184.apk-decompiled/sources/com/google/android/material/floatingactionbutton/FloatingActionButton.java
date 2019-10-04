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
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TintableImageSourceView;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.d.c;
import com.google.android.material.floatingactionbutton.a;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.internal.d;
import com.google.android.material.internal.k;
import com.google.android.material.internal.l;
import com.google.android.material.stateful.ExtendableSavedState;
import java.util.ArrayList;
import java.util.List;

@CoordinatorLayout.DefaultBehavior(Behavior.class)
public class FloatingActionButton extends VisibilityAwareImageButton implements TintableBackgroundView, TintableImageSourceView, com.google.android.material.d.a {
    public static final int NO_CUSTOM_SIZE = 0;
    public static final int SIZE_AUTO = -1;
    public static final int SIZE_MINI = 1;
    public static final int SIZE_NORMAL = 0;

    /* renamed from: a  reason: collision with root package name */
    boolean f3887a;

    /* renamed from: b  reason: collision with root package name */
    final Rect f3888b;
    private ColorStateList c;
    private PorterDuff.Mode d;
    private ColorStateList e;
    private PorterDuff.Mode f;
    private int g;
    private ColorStateList h;
    private int i;
    private int j;
    /* access modifiers changed from: private */
    public int k;
    private int l;
    private final Rect m;
    private final AppCompatImageHelper n;
    private final c o;
    private a p;

    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a  reason: collision with root package name */
        private Rect f3891a;

        /* renamed from: b  reason: collision with root package name */
        private a f3892b;
        private boolean c;

        public BaseBehavior() {
            this.c = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.k.FloatingActionButton_Behavior_Layout);
            this.c = obtainStyledAttributes.getBoolean(a.k.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        public void setAutoHideEnabled(boolean z) {
            this.c = z;
        }

        public boolean isAutoHideEnabled() {
            return this.c;
        }

        public void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
            } else if (a(view)) {
                b(view, floatingActionButton);
            }
            return false;
        }

        private static boolean a(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        public void setInternalAutoHideListener(a aVar) {
            this.f3892b = aVar;
        }

        private boolean a(View view, FloatingActionButton floatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
            if (this.c && layoutParams.getAnchorId() == view.getId() && floatingActionButton.getUserSetVisibility() == 0) {
                return true;
            }
            return false;
        }

        private boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!a(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f3891a == null) {
                this.f3891a = new Rect();
            }
            Rect rect = this.f3891a;
            d.getDescendantRect(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.b(this.f3892b, false);
            } else {
                floatingActionButton.a(this.f3892b, false);
            }
            return true;
        }

        private boolean b(View view, FloatingActionButton floatingActionButton) {
            if (!a(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).topMargin) {
                floatingActionButton.b(this.f3892b, false);
            } else {
                floatingActionButton.a(this.f3892b, false);
            }
            return true;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            int i2;
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                View view = dependencies.get(i4);
                if (!(view instanceof AppBarLayout)) {
                    if (a(view) && b(view, floatingActionButton)) {
                        break;
                    }
                } else if (a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i);
            Rect rect = floatingActionButton.f3888b;
            if (rect != null && rect.centerX() > 0 && rect.centerY() > 0) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
                if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - layoutParams.rightMargin) {
                    i2 = rect.right;
                } else {
                    i2 = floatingActionButton.getLeft() <= layoutParams.leftMargin ? -rect.left : 0;
                }
                if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - layoutParams.bottomMargin) {
                    i3 = rect.bottom;
                } else if (floatingActionButton.getTop() <= layoutParams.topMargin) {
                    i3 = -rect.top;
                }
                if (i3 != 0) {
                    ViewCompat.offsetTopAndBottom(floatingActionButton, i3);
                }
                if (i2 != 0) {
                    ViewCompat.offsetLeftAndRight(floatingActionButton, i2);
                }
            }
            return true;
        }

        public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.f3888b;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }
    }

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public /* bridge */ /* synthetic */ boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, floatingActionButton, rect);
        }

        public /* bridge */ /* synthetic */ boolean isAutoHideEnabled() {
            return super.isAutoHideEnabled();
        }

        public /* bridge */ /* synthetic */ void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
            super.onAttachedToLayoutParams(layoutParams);
        }

        public /* bridge */ /* synthetic */ boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return super.onDependentViewChanged(coordinatorLayout, floatingActionButton, view);
        }

        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            return super.onLayoutChild(coordinatorLayout, floatingActionButton, i);
        }

        public /* bridge */ /* synthetic */ void setAutoHideEnabled(boolean z) {
            super.setAutoHideEnabled(z);
        }

        public /* bridge */ /* synthetic */ void setInternalAutoHideListener(a aVar) {
            super.setInternalAutoHideListener(aVar);
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static abstract class a {
        public void onHidden(FloatingActionButton floatingActionButton) {
        }

        public void onShown(FloatingActionButton floatingActionButton) {
        }
    }

    class b implements com.google.android.material.h.b {
        b() {
        }

        public final float getRadius() {
            return ((float) FloatingActionButton.this.getSizeDimension()) / 2.0f;
        }

        public final void setShadowPadding(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f3888b.set(i, i2, i3, i4);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i + floatingActionButton.k, i2 + FloatingActionButton.this.k, i3 + FloatingActionButton.this.k, i4 + FloatingActionButton.this.k);
        }

        public final void setBackgroundDrawable(Drawable drawable) {
            FloatingActionButton.super.setBackgroundDrawable(drawable);
        }

        public final boolean isCompatPaddingEnabled() {
            return FloatingActionButton.this.f3887a;
        }
    }

    public void setBackgroundColor(int i2) {
    }

    public void setBackgroundDrawable(Drawable drawable) {
    }

    public void setBackgroundResource(int i2) {
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.floatingActionButtonStyle);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f3888b = new Rect();
        this.m = new Rect();
        TypedArray obtainStyledAttributes = k.obtainStyledAttributes(context, attributeSet, a.k.FloatingActionButton, i2, a.j.Widget_Design_FloatingActionButton, new int[0]);
        this.c = com.google.android.material.f.a.getColorStateList(context, obtainStyledAttributes, a.k.FloatingActionButton_backgroundTint);
        this.d = l.parseTintMode(obtainStyledAttributes.getInt(a.k.FloatingActionButton_backgroundTintMode, -1), null);
        this.h = com.google.android.material.f.a.getColorStateList(context, obtainStyledAttributes, a.k.FloatingActionButton_rippleColor);
        this.i = obtainStyledAttributes.getInt(a.k.FloatingActionButton_fabSize, -1);
        this.j = obtainStyledAttributes.getDimensionPixelSize(a.k.FloatingActionButton_fabCustomSize, 0);
        this.g = obtainStyledAttributes.getDimensionPixelSize(a.k.FloatingActionButton_borderWidth, 0);
        float dimension = obtainStyledAttributes.getDimension(a.k.FloatingActionButton_elevation, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(a.k.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(a.k.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.f3887a = obtainStyledAttributes.getBoolean(a.k.FloatingActionButton_useCompatPadding, false);
        this.l = obtainStyledAttributes.getDimensionPixelSize(a.k.FloatingActionButton_maxImageSize, 0);
        h createFromAttribute = h.createFromAttribute(context, obtainStyledAttributes, a.k.FloatingActionButton_showMotionSpec);
        h createFromAttribute2 = h.createFromAttribute(context, obtainStyledAttributes, a.k.FloatingActionButton_hideMotionSpec);
        obtainStyledAttributes.recycle();
        this.n = new AppCompatImageHelper(this);
        this.n.loadFromAttributes(attributeSet, i2);
        this.o = new c(this);
        getImpl().a(this.c, this.d, this.h, this.g);
        getImpl().a(dimension);
        getImpl().b(dimension2);
        getImpl().c(dimension3);
        a impl = getImpl();
        int i3 = this.l;
        if (impl.o != i3) {
            impl.o = i3;
            impl.a();
        }
        getImpl().d = createFromAttribute;
        getImpl().e = createFromAttribute2;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int sizeDimension = getSizeDimension();
        this.k = (sizeDimension - this.l) / 2;
        getImpl().d();
        int min = Math.min(a(sizeDimension, i2), a(sizeDimension, i3));
        setMeasuredDimension(this.f3888b.left + min + this.f3888b.right, min + this.f3888b.top + this.f3888b.bottom);
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.h;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.h;
    }

    public void setRippleColor(int i2) {
        setRippleColor(ColorStateList.valueOf(i2));
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            getImpl().a(this.h);
        }
    }

    public ColorStateList getBackgroundTintList() {
        return this.c;
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.c != colorStateList) {
            this.c = colorStateList;
            a impl = getImpl();
            if (impl.h != null) {
                DrawableCompat.setTintList(impl.h, colorStateList);
            }
            if (impl.j != null) {
                impl.j.setBorderTint(colorStateList);
            }
        }
    }

    public PorterDuff.Mode getBackgroundTintMode() {
        return this.d;
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.d != mode) {
            this.d = mode;
            a impl = getImpl();
            if (impl.h != null) {
                DrawableCompat.setTintMode(impl.h, mode);
            }
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.e != colorStateList) {
            this.e = colorStateList;
            a();
        }
    }

    public ColorStateList getSupportImageTintList() {
        return this.e;
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f != mode) {
            this.f = mode;
            a();
        }
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f;
    }

    private void a() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            ColorStateList colorStateList = this.e;
            if (colorStateList == null) {
                DrawableCompat.clearColorFilter(drawable);
                return;
            }
            int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
            PorterDuff.Mode mode = this.f;
            if (mode == null) {
                mode = PorterDuff.Mode.SRC_IN;
            }
            drawable.mutate().setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(colorForState, mode));
        }
    }

    public void setImageResource(int i2) {
        this.n.setImageResource(i2);
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        getImpl().a();
    }

    public void show() {
        show(null);
    }

    public void show(a aVar) {
        a(aVar, true);
    }

    /* access modifiers changed from: package-private */
    public final void a(a aVar, boolean z) {
        getImpl().b(a(aVar), z);
    }

    public void addOnShowAnimationListener(Animator.AnimatorListener animatorListener) {
        a impl = getImpl();
        if (impl.q == null) {
            impl.q = new ArrayList<>();
        }
        impl.q.add(animatorListener);
    }

    public void removeOnShowAnimationListener(Animator.AnimatorListener animatorListener) {
        a impl = getImpl();
        if (impl.q != null) {
            impl.q.remove(animatorListener);
        }
    }

    public void hide() {
        hide(null);
    }

    public void hide(a aVar) {
        b(aVar, true);
    }

    /* access modifiers changed from: package-private */
    public final void b(a aVar, boolean z) {
        getImpl().a(a(aVar), z);
    }

    public void addOnHideAnimationListener(Animator.AnimatorListener animatorListener) {
        getImpl().addOnHideAnimationListener(animatorListener);
    }

    public void removeOnHideAnimationListener(Animator.AnimatorListener animatorListener) {
        getImpl().removeOnHideAnimationListener(animatorListener);
    }

    public boolean setExpanded(boolean z) {
        return this.o.setExpanded(z);
    }

    public boolean isExpanded() {
        return this.o.isExpanded();
    }

    public void setExpandedComponentIdHint(int i2) {
        this.o.setExpandedComponentIdHint(i2);
    }

    public int getExpandedComponentIdHint() {
        return this.o.getExpandedComponentIdHint();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f3887a != z) {
            this.f3887a = z;
            getImpl().c();
        }
    }

    public boolean getUseCompatPadding() {
        return this.f3887a;
    }

    public void setSize(int i2) {
        this.j = 0;
        if (i2 != this.i) {
            this.i = i2;
            requestLayout();
        }
    }

    public int getSize() {
        return this.i;
    }

    private a.d a(final a aVar) {
        if (aVar == null) {
            return null;
        }
        return new a.d() {
            public final void onShown() {
                aVar.onShown(FloatingActionButton.this);
            }

            public final void onHidden() {
                aVar.onHidden(FloatingActionButton.this);
            }
        };
    }

    public boolean isOrWillBeHidden() {
        return getImpl().j();
    }

    public boolean isOrWillBeShown() {
        return getImpl().i();
    }

    public void setCustomSize(int i2) {
        if (i2 >= 0) {
            this.j = i2;
            return;
        }
        throw new IllegalArgumentException("Custom size must be non-negative");
    }

    public int getCustomSize() {
        return this.j;
    }

    public void clearCustomSize() {
        setCustomSize(0);
    }

    /* access modifiers changed from: package-private */
    public int getSizeDimension() {
        int i2 = this.i;
        while (true) {
            int i3 = this.j;
            if (i3 != 0) {
                return i3;
            }
            Resources resources = getResources();
            if (i2 == -1) {
                i2 = Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? 1 : 0;
            } else if (i2 != 1) {
                return resources.getDimensionPixelSize(a.d.design_fab_size_normal);
            } else {
                return resources.getDimensionPixelSize(a.d.design_fab_size_mini);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a impl = getImpl();
        if (impl.e()) {
            if (impl.z == null) {
                impl.z = new ViewTreeObserver.OnPreDrawListener() {
                    public final boolean onPreDraw() {
                        a aVar = a.this;
                        float rotation = aVar.x.getRotation();
                        if (aVar.g != rotation) {
                            aVar.g = rotation;
                            if (Build.VERSION.SDK_INT == 19) {
                                if (aVar.g % 90.0f != 0.0f) {
                                    if (aVar.x.getLayerType() != 1) {
                                        aVar.x.setLayerType(1, null);
                                    }
                                } else if (aVar.x.getLayerType() != 0) {
                                    aVar.x.setLayerType(0, null);
                                }
                            }
                            if (aVar.f != null) {
                                aVar.f.setRotation(-aVar.g);
                            }
                            if (aVar.j != null) {
                                aVar.j.setRotation(-aVar.g);
                            }
                        }
                        return true;
                    }
                };
            }
            impl.x.getViewTreeObserver().addOnPreDrawListener(impl.z);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a impl = getImpl();
        if (impl.z != null) {
            impl.x.getViewTreeObserver().removeOnPreDrawListener(impl.z);
            impl.z = null;
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().a(getDrawableState());
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().b();
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(super.onSaveInstanceState());
        extendableSavedState.extendableStates.put("expandableWidgetHelper", this.o.onSaveInstanceState());
        return extendableSavedState;
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        this.o.onRestoreInstanceState(extendableSavedState.extendableStates.get("expandableWidgetHelper"));
    }

    @Deprecated
    public boolean getContentRect(Rect rect) {
        if (!ViewCompat.isLaidOut(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        a(rect);
        return true;
    }

    public void getMeasuredContentRect(Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        a(rect);
    }

    private void a(Rect rect) {
        rect.left += this.f3888b.left;
        rect.top += this.f3888b.top;
        rect.right -= this.f3888b.right;
        rect.bottom -= this.f3888b.bottom;
    }

    public Drawable getContentBackground() {
        return getImpl().k;
    }

    private static int a(int i2, int i3) {
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

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !getContentRect(this.m) || this.m.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public float getCompatElevation() {
        return getImpl().getElevation();
    }

    public void setCompatElevation(float f2) {
        getImpl().a(f2);
    }

    public void setCompatElevationResource(int i2) {
        setCompatElevation(getResources().getDimension(i2));
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().m;
    }

    public void setCompatHoveredFocusedTranslationZ(float f2) {
        getImpl().b(f2);
    }

    public void setCompatHoveredFocusedTranslationZResource(int i2) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i2));
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().n;
    }

    public void setCompatPressedTranslationZ(float f2) {
        getImpl().c(f2);
    }

    public void setCompatPressedTranslationZResource(int i2) {
        setCompatPressedTranslationZ(getResources().getDimension(i2));
    }

    public h getShowMotionSpec() {
        return getImpl().d;
    }

    public void setShowMotionSpec(h hVar) {
        getImpl().d = hVar;
    }

    public void setShowMotionSpecResource(int i2) {
        setShowMotionSpec(h.createFromResource(getContext(), i2));
    }

    public h getHideMotionSpec() {
        return getImpl().e;
    }

    public void setHideMotionSpec(h hVar) {
        getImpl().e = hVar;
    }

    public void setHideMotionSpecResource(int i2) {
        setHideMotionSpec(h.createFromResource(getContext(), i2));
    }

    private a getImpl() {
        a aVar;
        if (this.p == null) {
            if (Build.VERSION.SDK_INT >= 21) {
                aVar = new b(this, new b());
            } else {
                aVar = new a(this, new b());
            }
            this.p = aVar;
        }
        return this.p;
    }
}
