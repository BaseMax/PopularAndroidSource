package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.R;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.c;
import com.google.android.material.internal.d;
import com.google.android.material.internal.k;
import io.fabric.sdk.android.services.settings.t;

public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    final c f3782a;

    /* renamed from: b  reason: collision with root package name */
    Drawable f3783b;
    int c;
    WindowInsetsCompat d;
    private boolean e;
    private int f;
    private Toolbar g;
    private View h;
    private View i;
    private int j;
    private int k;
    private int l;
    private int m;
    private final Rect n;
    private boolean o;
    private boolean p;
    private Drawable q;
    private int r;
    private boolean s;
    private ValueAnimator t;
    private long u;
    private int v;
    private AppBarLayout.b w;

    public static class LayoutParams extends FrameLayout.LayoutParams {
        public static final int COLLAPSE_MODE_OFF = 0;
        public static final int COLLAPSE_MODE_PARALLAX = 2;
        public static final int COLLAPSE_MODE_PIN = 1;

        /* renamed from: a  reason: collision with root package name */
        int f3786a = 0;

        /* renamed from: b  reason: collision with root package name */
        float f3787b = 0.5f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.k.CollapsingToolbarLayout_Layout);
            this.f3786a = obtainStyledAttributes.getInt(a.k.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            setParallaxMultiplier(obtainStyledAttributes.getFloat(a.k.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public void setCollapseMode(int i) {
            this.f3786a = i;
        }

        public int getCollapseMode() {
            return this.f3786a;
        }

        public void setParallaxMultiplier(float f) {
            this.f3787b = f;
        }

        public float getParallaxMultiplier() {
            return this.f3787b;
        }
    }

    class a implements AppBarLayout.b {
        a() {
        }

        public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.c = i;
            int systemWindowInsetTop = collapsingToolbarLayout.d != null ? CollapsingToolbarLayout.this.d.getSystemWindowInsetTop() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                a a2 = CollapsingToolbarLayout.a(childAt);
                int i3 = layoutParams.f3786a;
                if (i3 == 1) {
                    a2.setTopAndBottomOffset(MathUtils.clamp(-i, 0, CollapsingToolbarLayout.this.b(childAt)));
                } else if (i3 == 2) {
                    a2.setTopAndBottomOffset(Math.round(((float) (-i)) * layoutParams.f3787b));
                }
            }
            CollapsingToolbarLayout.this.a();
            if (CollapsingToolbarLayout.this.f3783b != null && systemWindowInsetTop > 0) {
                ViewCompat.postInvalidateOnAnimation(CollapsingToolbarLayout.this);
            }
            CollapsingToolbarLayout.this.f3782a.setExpansionFraction(((float) Math.abs(i)) / ((float) ((CollapsingToolbarLayout.this.getHeight() - ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this)) - systemWindowInsetTop)));
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.e = true;
        this.n = new Rect();
        this.v = -1;
        this.f3782a = new c(this);
        this.f3782a.setTextSizeInterpolator(com.google.android.material.a.a.DECELERATE_INTERPOLATOR);
        TypedArray obtainStyledAttributes = k.obtainStyledAttributes(context, attributeSet, a.k.CollapsingToolbarLayout, i2, a.j.Widget_Design_CollapsingToolbar, new int[0]);
        this.f3782a.setExpandedTextGravity(obtainStyledAttributes.getInt(a.k.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
        this.f3782a.setCollapsedTextGravity(obtainStyledAttributes.getInt(a.k.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.k.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.m = dimensionPixelSize;
        this.l = dimensionPixelSize;
        this.k = dimensionPixelSize;
        this.j = dimensionPixelSize;
        if (obtainStyledAttributes.hasValue(a.k.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.j = obtainStyledAttributes.getDimensionPixelSize(a.k.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (obtainStyledAttributes.hasValue(a.k.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.l = obtainStyledAttributes.getDimensionPixelSize(a.k.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (obtainStyledAttributes.hasValue(a.k.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.k = obtainStyledAttributes.getDimensionPixelSize(a.k.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (obtainStyledAttributes.hasValue(a.k.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.m = obtainStyledAttributes.getDimensionPixelSize(a.k.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.o = obtainStyledAttributes.getBoolean(a.k.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(obtainStyledAttributes.getText(a.k.CollapsingToolbarLayout_title));
        this.f3782a.setExpandedTextAppearance(a.j.TextAppearance_Design_CollapsingToolbar_Expanded);
        this.f3782a.setCollapsedTextAppearance(R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (obtainStyledAttributes.hasValue(a.k.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            this.f3782a.setExpandedTextAppearance(obtainStyledAttributes.getResourceId(a.k.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (obtainStyledAttributes.hasValue(a.k.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            this.f3782a.setCollapsedTextAppearance(obtainStyledAttributes.getResourceId(a.k.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        this.v = obtainStyledAttributes.getDimensionPixelSize(a.k.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        this.u = (long) obtainStyledAttributes.getInt(a.k.CollapsingToolbarLayout_scrimAnimationDuration, t.ANALYTICS_FLUSH_INTERVAL_SECS_DEFAULT);
        setContentScrim(obtainStyledAttributes.getDrawable(a.k.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(obtainStyledAttributes.getDrawable(a.k.CollapsingToolbarLayout_statusBarScrim));
        this.f = obtainStyledAttributes.getResourceId(a.k.CollapsingToolbarLayout_toolbarId, -1);
        obtainStyledAttributes.recycle();
        setWillNotDraw(false);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() {
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
                WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(collapsingToolbarLayout) ? windowInsetsCompat : null;
                if (!ObjectsCompat.equals(collapsingToolbarLayout.d, windowInsetsCompat2)) {
                    collapsingToolbarLayout.d = windowInsetsCompat2;
                    collapsingToolbarLayout.requestLayout();
                }
                return windowInsetsCompat.consumeSystemWindowInsets();
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows((View) parent));
            if (this.w == null) {
                this.w = new a();
            }
            ((AppBarLayout) parent).addOnOffsetChangedListener(this.w);
            ViewCompat.requestApplyInsets(this);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.b bVar = this.w;
        if (bVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(bVar);
        }
        super.onDetachedFromWindow();
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        b();
        if (this.g == null) {
            Drawable drawable = this.q;
            if (drawable != null && this.r > 0) {
                drawable.mutate().setAlpha(this.r);
                this.q.draw(canvas);
            }
        }
        if (this.o && this.p) {
            this.f3782a.draw(canvas);
        }
        if (this.f3783b != null && this.r > 0) {
            WindowInsetsCompat windowInsetsCompat = this.d;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            if (systemWindowInsetTop > 0) {
                this.f3783b.setBounds(0, -this.c, getWidth(), systemWindowInsetTop - this.c);
                this.f3783b.mutate().setAlpha(this.r);
                this.f3783b.draw(canvas);
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j2) {
        boolean z;
        if (this.q != null && this.r > 0) {
            View view2 = this.h;
            if (view2 == null || view2 == this ? view == this.g : view == view2) {
                this.q.mutate().setAlpha(this.r);
                this.q.draw(canvas);
                z = true;
                return !super.drawChild(canvas, view, j2) || z;
            }
        }
        z = false;
        if (!super.drawChild(canvas, view, j2)) {
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        Drawable drawable = this.q;
        if (drawable != null) {
            drawable.setBounds(0, 0, i2, i3);
        }
    }

    /* JADX WARNING: type inference failed for: r4v0, types: [android.view.View] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b() {
        /*
            r6 = this;
            boolean r0 = r6.e
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            r0 = 0
            r6.g = r0
            r6.h = r0
            int r1 = r6.f
            r2 = -1
            if (r1 == r2) goto L_0x0021
            android.view.View r1 = r6.findViewById(r1)
            androidx.appcompat.widget.Toolbar r1 = (androidx.appcompat.widget.Toolbar) r1
            r6.g = r1
            androidx.appcompat.widget.Toolbar r1 = r6.g
            if (r1 == 0) goto L_0x0021
            android.view.View r1 = r6.c(r1)
            r6.h = r1
        L_0x0021:
            androidx.appcompat.widget.Toolbar r1 = r6.g
            r2 = 0
            if (r1 != 0) goto L_0x003e
            int r1 = r6.getChildCount()
            r3 = 0
        L_0x002b:
            if (r3 >= r1) goto L_0x003c
            android.view.View r4 = r6.getChildAt(r3)
            boolean r5 = r4 instanceof androidx.appcompat.widget.Toolbar
            if (r5 == 0) goto L_0x0039
            r0 = r4
            androidx.appcompat.widget.Toolbar r0 = (androidx.appcompat.widget.Toolbar) r0
            goto L_0x003c
        L_0x0039:
            int r3 = r3 + 1
            goto L_0x002b
        L_0x003c:
            r6.g = r0
        L_0x003e:
            r6.c()
            r6.e = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.b():void");
    }

    private View c(View view) {
        ViewParent parent = view.getParent();
        while (parent != this && parent != null) {
            if (parent instanceof View) {
                view = (View) parent;
            }
            parent = parent.getParent();
        }
        return view;
    }

    private void c() {
        if (!this.o) {
            View view = this.i;
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.i);
                }
            }
        }
        if (this.o && this.g != null) {
            if (this.i == null) {
                this.i = new View(getContext());
            }
            if (this.i.getParent() == null) {
                this.g.addView(this.i, -1, -1);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        b();
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i3);
        WindowInsetsCompat windowInsetsCompat = this.d;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (mode == 0 && systemWindowInsetTop > 0) {
            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + systemWindowInsetTop, 1073741824));
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        WindowInsetsCompat windowInsetsCompat = this.d;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                if (!ViewCompat.getFitsSystemWindows(childAt) && childAt.getTop() < systemWindowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
        }
        if (this.o) {
            View view = this.i;
            if (view != null) {
                boolean z2 = true;
                this.p = ViewCompat.isAttachedToWindow(view) && this.i.getVisibility() == 0;
                if (this.p) {
                    if (ViewCompat.getLayoutDirection(this) != 1) {
                        z2 = false;
                    }
                    View view2 = this.h;
                    if (view2 == null) {
                        view2 = this.g;
                    }
                    int b2 = b(view2);
                    d.getDescendantRect(this, this.i, this.n);
                    this.f3782a.setCollapsedBounds(this.n.left + (z2 ? this.g.getTitleMarginEnd() : this.g.getTitleMarginStart()), this.n.top + b2 + this.g.getTitleMarginTop(), this.n.right + (z2 ? this.g.getTitleMarginStart() : this.g.getTitleMarginEnd()), (this.n.bottom + b2) - this.g.getTitleMarginBottom());
                    this.f3782a.setExpandedBounds(z2 ? this.l : this.j, this.n.top + this.k, (i4 - i2) - (z2 ? this.j : this.l), (i5 - i3) - this.m);
                    this.f3782a.recalculate();
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i7 = 0; i7 < childCount2; i7++) {
            a(getChildAt(i7)).onViewLayout();
        }
        if (this.g != null) {
            if (this.o && TextUtils.isEmpty(this.f3782a.getText())) {
                setTitle(this.g.getTitle());
            }
            View view3 = this.h;
            if (view3 == null || view3 == this) {
                setMinimumHeight(d(this.g));
            } else {
                setMinimumHeight(d(view3));
            }
        }
        a();
    }

    private static int d(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    static a a(View view) {
        a aVar = (a) view.getTag(a.f.view_offset_helper);
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(view);
        view.setTag(a.f.view_offset_helper, aVar2);
        return aVar2;
    }

    public void setTitle(CharSequence charSequence) {
        this.f3782a.setText(charSequence);
        e();
    }

    public CharSequence getTitle() {
        if (this.o) {
            return this.f3782a.getText();
        }
        return null;
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.o) {
            this.o = z;
            e();
            c();
            requestLayout();
        }
    }

    public boolean isTitleEnabled() {
        return this.o;
    }

    public void setScrimsShown(boolean z) {
        setScrimsShown(z, ViewCompat.isLaidOut(this) && !isInEditMode());
    }

    public void setScrimsShown(boolean z, boolean z2) {
        if (this.s != z) {
            int i2 = 255;
            if (z2) {
                if (!z) {
                    i2 = 0;
                }
                b();
                ValueAnimator valueAnimator = this.t;
                if (valueAnimator == null) {
                    this.t = new ValueAnimator();
                    this.t.setDuration(this.u);
                    this.t.setInterpolator(i2 > this.r ? com.google.android.material.a.a.FAST_OUT_LINEAR_IN_INTERPOLATOR : com.google.android.material.a.a.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
                    this.t.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
                        }
                    });
                } else if (valueAnimator.isRunning()) {
                    this.t.cancel();
                }
                this.t.setIntValues(new int[]{this.r, i2});
                this.t.start();
            } else {
                if (!z) {
                    i2 = 0;
                }
                setScrimAlpha(i2);
            }
            this.s = z;
        }
    }

    /* access modifiers changed from: package-private */
    public void setScrimAlpha(int i2) {
        if (i2 != this.r) {
            if (this.q != null) {
                Toolbar toolbar = this.g;
                if (toolbar != null) {
                    ViewCompat.postInvalidateOnAnimation(toolbar);
                }
            }
            this.r = i2;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* access modifiers changed from: package-private */
    public int getScrimAlpha() {
        return this.r;
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.q;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.q = drawable3;
            Drawable drawable4 = this.q;
            if (drawable4 != null) {
                drawable4.setBounds(0, 0, getWidth(), getHeight());
                this.q.setCallback(this);
                this.q.setAlpha(this.r);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setContentScrimColor(int i2) {
        setContentScrim(new ColorDrawable(i2));
    }

    public void setContentScrimResource(int i2) {
        setContentScrim(ContextCompat.getDrawable(getContext(), i2));
    }

    public Drawable getContentScrim() {
        return this.q;
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = this.f3783b;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f3783b = drawable3;
            Drawable drawable4 = this.f3783b;
            if (drawable4 != null) {
                if (drawable4.isStateful()) {
                    this.f3783b.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f3783b, ViewCompat.getLayoutDirection(this));
                this.f3783b.setVisible(getVisibility() == 0, false);
                this.f3783b.setCallback(this);
                this.f3783b.setAlpha(this.r);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f3783b;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.q;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        c cVar = this.f3782a;
        if (cVar != null) {
            z |= cVar.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.q || drawable == this.f3783b;
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.f3783b;
        if (!(drawable == null || drawable.isVisible() == z)) {
            this.f3783b.setVisible(z, false);
        }
        Drawable drawable2 = this.q;
        if (drawable2 != null && drawable2.isVisible() != z) {
            this.q.setVisible(z, false);
        }
    }

    public void setStatusBarScrimColor(int i2) {
        setStatusBarScrim(new ColorDrawable(i2));
    }

    public void setStatusBarScrimResource(int i2) {
        setStatusBarScrim(ContextCompat.getDrawable(getContext(), i2));
    }

    public Drawable getStatusBarScrim() {
        return this.f3783b;
    }

    public void setCollapsedTitleTextAppearance(int i2) {
        this.f3782a.setCollapsedTextAppearance(i2);
    }

    public void setCollapsedTitleTextColor(int i2) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.f3782a.setCollapsedTextColor(colorStateList);
    }

    public void setCollapsedTitleGravity(int i2) {
        this.f3782a.setCollapsedTextGravity(i2);
    }

    public int getCollapsedTitleGravity() {
        return this.f3782a.getCollapsedTextGravity();
    }

    public void setExpandedTitleTextAppearance(int i2) {
        this.f3782a.setExpandedTextAppearance(i2);
    }

    public void setExpandedTitleColor(int i2) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        this.f3782a.setExpandedTextColor(colorStateList);
    }

    public void setExpandedTitleGravity(int i2) {
        this.f3782a.setExpandedTextGravity(i2);
    }

    public int getExpandedTitleGravity() {
        return this.f3782a.getExpandedTextGravity();
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        this.f3782a.setCollapsedTypeface(typeface);
    }

    public Typeface getCollapsedTitleTypeface() {
        return this.f3782a.getCollapsedTypeface();
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        this.f3782a.setExpandedTypeface(typeface);
    }

    public Typeface getExpandedTitleTypeface() {
        return this.f3782a.getExpandedTypeface();
    }

    public void setExpandedTitleMargin(int i2, int i3, int i4, int i5) {
        this.j = i2;
        this.k = i3;
        this.l = i4;
        this.m = i5;
        requestLayout();
    }

    public int getExpandedTitleMarginStart() {
        return this.j;
    }

    public void setExpandedTitleMarginStart(int i2) {
        this.j = i2;
        requestLayout();
    }

    public int getExpandedTitleMarginTop() {
        return this.k;
    }

    public void setExpandedTitleMarginTop(int i2) {
        this.k = i2;
        requestLayout();
    }

    public int getExpandedTitleMarginEnd() {
        return this.l;
    }

    public void setExpandedTitleMarginEnd(int i2) {
        this.l = i2;
        requestLayout();
    }

    public int getExpandedTitleMarginBottom() {
        return this.m;
    }

    public void setExpandedTitleMarginBottom(int i2) {
        this.m = i2;
        requestLayout();
    }

    public void setScrimVisibleHeightTrigger(int i2) {
        if (this.v != i2) {
            this.v = i2;
            a();
        }
    }

    public int getScrimVisibleHeightTrigger() {
        int i2 = this.v;
        if (i2 >= 0) {
            return i2;
        }
        WindowInsetsCompat windowInsetsCompat = this.d;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight > 0) {
            return Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight());
        }
        return getHeight() / 3;
    }

    public void setScrimAnimationDuration(long j2) {
        this.u = j2;
    }

    public long getScrimAnimationDuration() {
        return this.u;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    private static LayoutParams d() {
        return new LayoutParams(-1, -1);
    }

    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.q != null || this.f3783b != null) {
            setScrimsShown(getHeight() + this.c < getScrimVisibleHeightTrigger());
        }
    }

    /* access modifiers changed from: package-private */
    public final int b(View view) {
        return ((getHeight() - a(view).getLayoutTop()) - view.getHeight()) - ((LayoutParams) view.getLayoutParams()).bottomMargin;
    }

    private void e() {
        setContentDescription(getTitle());
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
