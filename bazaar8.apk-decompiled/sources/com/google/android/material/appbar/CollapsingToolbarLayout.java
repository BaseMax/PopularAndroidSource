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
import androidx.appcompat.widget.Toolbar;
import b.i.j.c;
import b.i.k.M;
import b.i.k.q;
import b.i.k.z;
import c.e.a.c.b.i;
import c.e.a.c.f;
import c.e.a.c.j;
import c.e.a.c.k;
import c.e.a.c.l.e;
import c.e.a.c.l.p;
import com.google.android.material.appbar.AppBarLayout;

public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public boolean f13296a;

    /* renamed from: b  reason: collision with root package name */
    public int f13297b;

    /* renamed from: c  reason: collision with root package name */
    public Toolbar f13298c;

    /* renamed from: d  reason: collision with root package name */
    public View f13299d;

    /* renamed from: e  reason: collision with root package name */
    public View f13300e;

    /* renamed from: f  reason: collision with root package name */
    public int f13301f;

    /* renamed from: g  reason: collision with root package name */
    public int f13302g;

    /* renamed from: h  reason: collision with root package name */
    public int f13303h;

    /* renamed from: i  reason: collision with root package name */
    public int f13304i;

    /* renamed from: j  reason: collision with root package name */
    public final Rect f13305j;

    /* renamed from: k  reason: collision with root package name */
    public final e f13306k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f13307l;
    public boolean m;
    public Drawable n;
    public Drawable o;
    public int p;
    public boolean q;
    public ValueAnimator r;
    public long s;
    public int t;
    public AppBarLayout.c u;
    public int v;
    public M w;

    public static class a extends FrameLayout.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f13308a = 0;

        /* renamed from: b  reason: collision with root package name */
        public float f13309b = 0.5f;

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.CollapsingToolbarLayout_Layout);
            this.f13308a = obtainStyledAttributes.getInt(k.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            a(obtainStyledAttributes.getFloat(k.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public void a(float f2) {
            this.f13309b = f2;
        }

        public a(int i2, int i3) {
            super(i2, i3);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    private class b implements AppBarLayout.c {
        public b() {
        }

        public void a(AppBarLayout appBarLayout, int i2) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.v = i2;
            M m = collapsingToolbarLayout.w;
            int e2 = m != null ? m.e() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i3);
                a aVar = (a) childAt.getLayoutParams();
                i d2 = CollapsingToolbarLayout.d(childAt);
                int i4 = aVar.f13308a;
                if (i4 == 1) {
                    d2.b(b.i.e.a.a(-i2, 0, CollapsingToolbarLayout.this.c(childAt)));
                } else if (i4 == 2) {
                    d2.b(Math.round(((float) (-i2)) * aVar.f13309b));
                }
            }
            CollapsingToolbarLayout.this.d();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.o != null && e2 > 0) {
                z.F(collapsingToolbarLayout2);
            }
            CollapsingToolbarLayout.this.f13306k.e(((float) Math.abs(i2)) / ((float) ((CollapsingToolbarLayout.this.getHeight() - z.n(CollapsingToolbarLayout.this)) - e2)));
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public static int b(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public static i d(View view) {
        i iVar = (i) view.getTag(f.view_offset_helper);
        if (iVar != null) {
            return iVar;
        }
        i iVar2 = new i(view);
        view.setTag(f.view_offset_helper, iVar2);
        return iVar2;
    }

    public M a(M m2) {
        M m3 = z.j(this) ? m2 : null;
        if (!c.a(this.w, m3)) {
            this.w = m3;
            requestLayout();
        }
        return m2.a();
    }

    public final void c() {
        if (!this.f13307l) {
            View view = this.f13300e;
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.f13300e);
                }
            }
        }
        if (this.f13307l && this.f13298c != null) {
            if (this.f13300e == null) {
                this.f13300e = new View(getContext());
            }
            if (this.f13300e.getParent() == null) {
                this.f13298c.addView(this.f13300e, -1, -1);
            }
        }
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        a();
        if (this.f13298c == null) {
            Drawable drawable = this.n;
            if (drawable != null && this.p > 0) {
                drawable.mutate().setAlpha(this.p);
                this.n.draw(canvas);
            }
        }
        if (this.f13307l && this.m) {
            this.f13306k.a(canvas);
        }
        if (this.o != null && this.p > 0) {
            M m2 = this.w;
            int e2 = m2 != null ? m2.e() : 0;
            if (e2 > 0) {
                this.o.setBounds(0, -this.v, getWidth(), e2 - this.v);
                this.o.mutate().setAlpha(this.p);
                this.o.draw(canvas);
            }
        }
    }

    public boolean drawChild(Canvas canvas, View view, long j2) {
        boolean z;
        if (this.n == null || this.p <= 0 || !e(view)) {
            z = false;
        } else {
            this.n.mutate().setAlpha(this.p);
            this.n.draw(canvas);
            z = true;
        }
        if (super.drawChild(canvas, view, j2) || z) {
            return true;
        }
        return false;
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.o;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.n;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        e eVar = this.f13306k;
        if (eVar != null) {
            z |= eVar.a(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    public final boolean e(View view) {
        View view2 = this.f13299d;
        if (view2 == null || view2 == this) {
            if (view == this.f13298c) {
                return true;
            }
        } else if (view == view2) {
            return true;
        }
        return false;
    }

    public int getCollapsedTitleGravity() {
        return this.f13306k.g();
    }

    public Typeface getCollapsedTitleTypeface() {
        return this.f13306k.i();
    }

    public Drawable getContentScrim() {
        return this.n;
    }

    public int getExpandedTitleGravity() {
        return this.f13306k.l();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f13304i;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f13303h;
    }

    public int getExpandedTitleMarginStart() {
        return this.f13301f;
    }

    public int getExpandedTitleMarginTop() {
        return this.f13302g;
    }

    public Typeface getExpandedTitleTypeface() {
        return this.f13306k.m();
    }

    public int getScrimAlpha() {
        return this.p;
    }

    public long getScrimAnimationDuration() {
        return this.s;
    }

    public int getScrimVisibleHeightTrigger() {
        int i2 = this.t;
        if (i2 >= 0) {
            return i2;
        }
        M m2 = this.w;
        int e2 = m2 != null ? m2.e() : 0;
        int n2 = z.n(this);
        if (n2 > 0) {
            return Math.min((n2 * 2) + e2, getHeight());
        }
        return getHeight() / 3;
    }

    public Drawable getStatusBarScrim() {
        return this.o;
    }

    public CharSequence getTitle() {
        if (this.f13307l) {
            return this.f13306k.o();
        }
        return null;
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            z.a((View) this, z.j((View) parent));
            if (this.u == null) {
                this.u = new b();
            }
            ((AppBarLayout) parent).a(this.u);
            z.G(this);
        }
    }

    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.c cVar = this.u;
        if (cVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).b(cVar);
        }
        super.onDetachedFromWindow();
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        M m2 = this.w;
        if (m2 != null) {
            int e2 = m2.e();
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                if (!z.j(childAt) && childAt.getTop() < e2) {
                    z.e(childAt, e2);
                }
            }
        }
        if (this.f13307l) {
            View view = this.f13300e;
            if (view != null) {
                boolean z2 = true;
                this.m = z.A(view) && this.f13300e.getVisibility() == 0;
                if (this.m) {
                    if (z.m(this) != 1) {
                        z2 = false;
                    }
                    View view2 = this.f13299d;
                    if (view2 == null) {
                        view2 = this.f13298c;
                    }
                    int c2 = c(view2);
                    c.e.a.c.l.f.a((ViewGroup) this, this.f13300e, this.f13305j);
                    this.f13306k.a(this.f13305j.left + (z2 ? this.f13298c.getTitleMarginEnd() : this.f13298c.getTitleMarginStart()), this.f13305j.top + c2 + this.f13298c.getTitleMarginTop(), this.f13305j.right + (z2 ? this.f13298c.getTitleMarginStart() : this.f13298c.getTitleMarginEnd()), (this.f13305j.bottom + c2) - this.f13298c.getTitleMarginBottom());
                    this.f13306k.b(z2 ? this.f13303h : this.f13301f, this.f13305j.top + this.f13302g, (i4 - i2) - (z2 ? this.f13301f : this.f13303h), (i5 - i3) - this.f13304i);
                    this.f13306k.r();
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i7 = 0; i7 < childCount2; i7++) {
            d(getChildAt(i7)).c();
        }
        if (this.f13298c != null) {
            if (this.f13307l && TextUtils.isEmpty(this.f13306k.o())) {
                setTitle(this.f13298c.getTitle());
            }
            View view3 = this.f13299d;
            if (view3 == null || view3 == this) {
                setMinimumHeight(b(this.f13298c));
            } else {
                setMinimumHeight(b(view3));
            }
        }
        d();
    }

    public void onMeasure(int i2, int i3) {
        a();
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i3);
        M m2 = this.w;
        int e2 = m2 != null ? m2.e() : 0;
        if (mode == 0 && e2 > 0) {
            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + e2, 1073741824));
        }
    }

    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        Drawable drawable = this.n;
        if (drawable != null) {
            drawable.setBounds(0, 0, i2, i3);
        }
    }

    public void setCollapsedTitleGravity(int i2) {
        this.f13306k.c(i2);
    }

    public void setCollapsedTitleTextAppearance(int i2) {
        this.f13306k.b(i2);
    }

    public void setCollapsedTitleTextColor(int i2) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        this.f13306k.a(typeface);
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.n;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.n = drawable3;
            Drawable drawable4 = this.n;
            if (drawable4 != null) {
                drawable4.setBounds(0, 0, getWidth(), getHeight());
                this.n.setCallback(this);
                this.n.setAlpha(this.p);
            }
            z.F(this);
        }
    }

    public void setContentScrimColor(int i2) {
        setContentScrim(new ColorDrawable(i2));
    }

    public void setContentScrimResource(int i2) {
        setContentScrim(b.i.b.a.c(getContext(), i2));
    }

    public void setExpandedTitleColor(int i2) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setExpandedTitleGravity(int i2) {
        this.f13306k.e(i2);
    }

    public void setExpandedTitleMarginBottom(int i2) {
        this.f13304i = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i2) {
        this.f13303h = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i2) {
        this.f13301f = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i2) {
        this.f13302g = i2;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i2) {
        this.f13306k.d(i2);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        this.f13306k.b(colorStateList);
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        this.f13306k.b(typeface);
    }

    public void setScrimAlpha(int i2) {
        if (i2 != this.p) {
            if (this.n != null) {
                Toolbar toolbar = this.f13298c;
                if (toolbar != null) {
                    z.F(toolbar);
                }
            }
            this.p = i2;
            z.F(this);
        }
    }

    public void setScrimAnimationDuration(long j2) {
        this.s = j2;
    }

    public void setScrimVisibleHeightTrigger(int i2) {
        if (this.t != i2) {
            this.t = i2;
            d();
        }
    }

    public void setScrimsShown(boolean z) {
        a(z, z.B(this) && !isInEditMode());
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = this.o;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.o = drawable3;
            Drawable drawable4 = this.o;
            if (drawable4 != null) {
                if (drawable4.isStateful()) {
                    this.o.setState(getDrawableState());
                }
                b.i.c.a.a.a(this.o, z.m(this));
                this.o.setVisible(getVisibility() == 0, false);
                this.o.setCallback(this);
                this.o.setAlpha(this.p);
            }
            z.F(this);
        }
    }

    public void setStatusBarScrimColor(int i2) {
        setStatusBarScrim(new ColorDrawable(i2));
    }

    public void setStatusBarScrimResource(int i2) {
        setStatusBarScrim(b.i.b.a.c(getContext(), i2));
    }

    public void setTitle(CharSequence charSequence) {
        this.f13306k.b(charSequence);
        b();
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.f13307l) {
            this.f13307l = z;
            b();
            c();
            requestLayout();
        }
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.o;
        if (!(drawable == null || drawable.isVisible() == z)) {
            this.o.setVisible(z, false);
        }
        Drawable drawable2 = this.n;
        if (drawable2 != null && drawable2.isVisible() != z) {
            this.n.setVisible(z, false);
        }
    }

    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.n || drawable == this.o;
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.f13306k.a(colorStateList);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13296a = true;
        this.f13305j = new Rect();
        this.t = -1;
        this.f13306k = new e(this);
        this.f13306k.b(c.e.a.c.a.a.f11188e);
        TypedArray c2 = p.c(context, attributeSet, k.CollapsingToolbarLayout, i2, j.Widget_Design_CollapsingToolbar, new int[0]);
        this.f13306k.e(c2.getInt(k.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
        this.f13306k.c(c2.getInt(k.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = c2.getDimensionPixelSize(k.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.f13304i = dimensionPixelSize;
        this.f13303h = dimensionPixelSize;
        this.f13302g = dimensionPixelSize;
        this.f13301f = dimensionPixelSize;
        if (c2.hasValue(k.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.f13301f = c2.getDimensionPixelSize(k.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (c2.hasValue(k.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.f13303h = c2.getDimensionPixelSize(k.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (c2.hasValue(k.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.f13302g = c2.getDimensionPixelSize(k.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (c2.hasValue(k.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.f13304i = c2.getDimensionPixelSize(k.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.f13307l = c2.getBoolean(k.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(c2.getText(k.CollapsingToolbarLayout_title));
        this.f13306k.d(j.TextAppearance_Design_CollapsingToolbar_Expanded);
        this.f13306k.b(b.b.i.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (c2.hasValue(k.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            this.f13306k.d(c2.getResourceId(k.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (c2.hasValue(k.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            this.f13306k.b(c2.getResourceId(k.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        this.t = c2.getDimensionPixelSize(k.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        this.s = (long) c2.getInt(k.CollapsingToolbarLayout_scrimAnimationDuration, 600);
        setContentScrim(c2.getDrawable(k.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(c2.getDrawable(k.CollapsingToolbarLayout_statusBarScrim));
        this.f13297b = c2.getResourceId(k.CollapsingToolbarLayout_toolbarId, -1);
        c2.recycle();
        setWillNotDraw(false);
        z.a((View) this, (q) new d(this));
    }

    public a generateDefaultLayoutParams() {
        return new a(-1, -1);
    }

    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public final void d() {
        if (this.n != null || this.o != null) {
            setScrimsShown(getHeight() + this.v < getScrimVisibleHeightTrigger());
        }
    }

    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    /* JADX WARNING: type inference failed for: r4v0, types: [android.view.View] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a() {
        /*
            r6 = this;
            boolean r0 = r6.f13296a
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            r0 = 0
            r6.f13298c = r0
            r6.f13299d = r0
            int r1 = r6.f13297b
            r2 = -1
            if (r1 == r2) goto L_0x0021
            android.view.View r1 = r6.findViewById(r1)
            androidx.appcompat.widget.Toolbar r1 = (androidx.appcompat.widget.Toolbar) r1
            r6.f13298c = r1
            androidx.appcompat.widget.Toolbar r1 = r6.f13298c
            if (r1 == 0) goto L_0x0021
            android.view.View r1 = r6.a((android.view.View) r1)
            r6.f13299d = r1
        L_0x0021:
            androidx.appcompat.widget.Toolbar r1 = r6.f13298c
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
            r6.f13298c = r0
        L_0x003e:
            r6.c()
            r6.f13296a = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.a():void");
    }

    public final void b() {
        setContentDescription(getTitle());
    }

    public final int c(View view) {
        return ((getHeight() - d(view).a()) - view.getHeight()) - ((a) view.getLayoutParams()).bottomMargin;
    }

    public final View a(View view) {
        ViewParent parent = view.getParent();
        while (parent != this && parent != null) {
            if (parent instanceof View) {
                view = (View) parent;
            }
            parent = parent.getParent();
        }
        return view;
    }

    public void a(boolean z, boolean z2) {
        if (this.q != z) {
            int i2 = 255;
            if (z2) {
                if (!z) {
                    i2 = 0;
                }
                a(i2);
            } else {
                if (!z) {
                    i2 = 0;
                }
                setScrimAlpha(i2);
            }
            this.q = z;
        }
    }

    public final void a(int i2) {
        a();
        ValueAnimator valueAnimator = this.r;
        if (valueAnimator == null) {
            this.r = new ValueAnimator();
            this.r.setDuration(this.s);
            this.r.setInterpolator(i2 > this.p ? c.e.a.c.a.a.f11186c : c.e.a.c.a.a.f11187d);
            this.r.addUpdateListener(new e(this));
        } else if (valueAnimator.isRunning()) {
            this.r.cancel();
        }
        this.r.setIntValues(new int[]{this.p, i2});
        this.r.start();
    }
}
