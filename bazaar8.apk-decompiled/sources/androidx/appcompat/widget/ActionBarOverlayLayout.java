package androidx.appcompat.widget;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.OverScroller;
import b.b.f;
import b.b.f.a.t;
import b.b.g.Da;
import b.b.g.F;
import b.b.g.G;
import b.i.k.C0270m;
import b.i.k.n;
import b.i.k.o;
import b.i.k.p;
import b.i.k.z;

public class ActionBarOverlayLayout extends ViewGroup implements F, o, C0270m, n {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f333a = {b.b.a.actionBarSize, 16842841};
    public final Runnable A;
    public final p B;

    /* renamed from: b  reason: collision with root package name */
    public int f334b;

    /* renamed from: c  reason: collision with root package name */
    public int f335c;

    /* renamed from: d  reason: collision with root package name */
    public ContentFrameLayout f336d;

    /* renamed from: e  reason: collision with root package name */
    public ActionBarContainer f337e;

    /* renamed from: f  reason: collision with root package name */
    public G f338f;

    /* renamed from: g  reason: collision with root package name */
    public Drawable f339g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f340h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f341i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f342j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f343k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f344l;
    public int m;
    public int n;
    public final Rect o;
    public final Rect p;
    public final Rect q;
    public final Rect r;
    public final Rect s;
    public final Rect t;
    public final Rect u;
    public a v;
    public OverScroller w;
    public ViewPropertyAnimator x;
    public final AnimatorListenerAdapter y;
    public final Runnable z;

    public interface a {
        void a();

        void a(int i2);

        void a(boolean z);

        void b();

        void c();

        void d();
    }

    public static class b extends ViewGroup.MarginLayoutParams {
        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(int i2, int i3) {
            super(i2, i3);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public final void a(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f333a);
        boolean z2 = false;
        this.f334b = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f339g = obtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.f339g == null);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z2 = true;
        }
        this.f340h = z2;
        this.w = new OverScroller(context);
    }

    public void b(View view, View view2, int i2, int i3) {
        if (i3 == 0) {
            onNestedScrollAccepted(view, view2, i2);
        }
    }

    public void c() {
        m();
        this.f338f.c();
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    public boolean d() {
        m();
        return this.f338f.d();
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f339g != null && !this.f340h) {
            int bottom = this.f337e.getVisibility() == 0 ? (int) (((float) this.f337e.getBottom()) + this.f337e.getTranslationY() + 0.5f) : 0;
            this.f339g.setBounds(0, bottom, getWidth(), this.f339g.getIntrinsicHeight() + bottom);
            this.f339g.draw(canvas);
        }
    }

    public boolean e() {
        m();
        return this.f338f.e();
    }

    public boolean f() {
        m();
        return this.f338f.f();
    }

    public boolean fitSystemWindows(Rect rect) {
        m();
        int t2 = z.t(this) & 256;
        boolean a2 = a((View) this.f337e, rect, true, true, false, true);
        this.r.set(rect);
        Da.a(this, this.r, this.o);
        if (!this.s.equals(this.r)) {
            this.s.set(this.r);
            a2 = true;
        }
        if (!this.p.equals(this.o)) {
            this.p.set(this.o);
            a2 = true;
        }
        if (a2) {
            requestLayout();
        }
        return true;
    }

    public boolean g() {
        m();
        return this.f338f.g();
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f337e;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    public int getNestedScrollAxes() {
        return this.B.a();
    }

    public CharSequence getTitle() {
        m();
        return this.f338f.getTitle();
    }

    public void h() {
        m();
        this.f338f.h();
    }

    public void i() {
        removeCallbacks(this.z);
        removeCallbacks(this.A);
        ViewPropertyAnimator viewPropertyAnimator = this.x;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public boolean j() {
        return this.f341i;
    }

    public final void k() {
        i();
        postDelayed(this.A, 600);
    }

    public final void l() {
        i();
        postDelayed(this.z, 600);
    }

    public void m() {
        if (this.f336d == null) {
            this.f336d = (ContentFrameLayout) findViewById(f.action_bar_activity_content);
            this.f337e = (ActionBarContainer) findViewById(f.action_bar_container);
            this.f338f = a(findViewById(f.action_bar));
        }
    }

    public final void n() {
        i();
        this.z.run();
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(getContext());
        z.G(this);
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i();
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                b bVar = (b) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i7 = bVar.leftMargin + paddingLeft;
                int i8 = bVar.topMargin + paddingTop;
                childAt.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        m();
        measureChildWithMargins(this.f337e, i2, 0, i3, 0);
        b bVar = (b) this.f337e.getLayoutParams();
        int max = Math.max(0, this.f337e.getMeasuredWidth() + bVar.leftMargin + bVar.rightMargin);
        int max2 = Math.max(0, this.f337e.getMeasuredHeight() + bVar.topMargin + bVar.bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f337e.getMeasuredState());
        boolean z2 = (z.t(this) & 256) != 0;
        if (z2) {
            i4 = this.f334b;
            if (this.f342j && this.f337e.getTabContainer() != null) {
                i4 += this.f334b;
            }
        } else {
            i4 = this.f337e.getVisibility() != 8 ? this.f337e.getMeasuredHeight() : 0;
        }
        this.q.set(this.o);
        this.t.set(this.r);
        if (this.f341i || z2) {
            Rect rect = this.t;
            rect.top += i4;
            rect.bottom += 0;
        } else {
            Rect rect2 = this.q;
            rect2.top += i4;
            rect2.bottom += 0;
        }
        a((View) this.f336d, this.q, true, true, true, true);
        if (!this.u.equals(this.t)) {
            this.u.set(this.t);
            this.f336d.a(this.t);
        }
        measureChildWithMargins(this.f336d, i2, 0, i3, 0);
        b bVar2 = (b) this.f336d.getLayoutParams();
        int max3 = Math.max(max, this.f336d.getMeasuredWidth() + bVar2.leftMargin + bVar2.rightMargin);
        int max4 = Math.max(max2, this.f336d.getMeasuredHeight() + bVar2.topMargin + bVar2.bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f336d.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i2, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i3, combineMeasuredStates2 << 16));
    }

    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        if (!this.f343k || !z2) {
            return false;
        }
        if (a(f2, f3)) {
            b();
        } else {
            n();
        }
        this.f344l = true;
        return true;
    }

    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
    }

    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        this.m += i3;
        setActionBarHideOffset(this.m);
    }

    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.B.a(view, view2, i2);
        this.m = getActionBarHideOffset();
        i();
        a aVar = this.v;
        if (aVar != null) {
            aVar.d();
        }
    }

    public boolean onStartNestedScroll(View view, View view2, int i2) {
        if ((i2 & 2) == 0 || this.f337e.getVisibility() != 0) {
            return false;
        }
        return this.f343k;
    }

    public void onStopNestedScroll(View view) {
        if (this.f343k && !this.f344l) {
            if (this.m <= this.f337e.getHeight()) {
                l();
            } else {
                k();
            }
        }
        a aVar = this.v;
        if (aVar != null) {
            aVar.b();
        }
    }

    public void onWindowSystemUiVisibilityChanged(int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i2);
        }
        m();
        int i3 = this.n ^ i2;
        this.n = i2;
        boolean z2 = false;
        boolean z3 = (i2 & 4) == 0;
        if ((i2 & 256) != 0) {
            z2 = true;
        }
        a aVar = this.v;
        if (aVar != null) {
            aVar.a(!z2);
            if (z3 || !z2) {
                this.v.a();
            } else {
                this.v.c();
            }
        }
        if ((i3 & 256) != 0 && this.v != null) {
            z.G(this);
        }
    }

    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.f335c = i2;
        a aVar = this.v;
        if (aVar != null) {
            aVar.a(i2);
        }
    }

    public void setActionBarHideOffset(int i2) {
        i();
        this.f337e.setTranslationY((float) (-Math.max(0, Math.min(i2, this.f337e.getHeight()))));
    }

    public void setActionBarVisibilityCallback(a aVar) {
        this.v = aVar;
        if (getWindowToken() != null) {
            this.v.a(this.f335c);
            int i2 = this.n;
            if (i2 != 0) {
                onWindowSystemUiVisibilityChanged(i2);
                z.G(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z2) {
        this.f342j = z2;
    }

    public void setHideOnContentScrollEnabled(boolean z2) {
        if (z2 != this.f343k) {
            this.f343k = z2;
            if (!z2) {
                i();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i2) {
        m();
        this.f338f.setIcon(i2);
    }

    public void setLogo(int i2) {
        m();
        this.f338f.b(i2);
    }

    public void setOverlayMode(boolean z2) {
        this.f341i = z2;
        this.f340h = z2 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z2) {
    }

    public void setUiOptions(int i2) {
    }

    public void setWindowCallback(Window.Callback callback) {
        m();
        this.f338f.setWindowCallback(callback);
    }

    public void setWindowTitle(CharSequence charSequence) {
        m();
        this.f338f.setWindowTitle(charSequence);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f335c = 0;
        this.o = new Rect();
        this.p = new Rect();
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        this.u = new Rect();
        this.y = new C0211d(this);
        this.z = new C0213e(this);
        this.A = new C0215f(this);
        a(context);
        this.B = new p(this);
    }

    public final void b() {
        i();
        this.A.run();
    }

    public b generateDefaultLayoutParams() {
        return new b(-1, -1);
    }

    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        m();
        this.f338f.setIcon(drawable);
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(android.view.View r3, android.graphics.Rect r4, boolean r5, boolean r6, boolean r7, boolean r8) {
        /*
            r2 = this;
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$b r3 = (androidx.appcompat.widget.ActionBarOverlayLayout.b) r3
            r0 = 1
            if (r5 == 0) goto L_0x0013
            int r5 = r3.leftMargin
            int r1 = r4.left
            if (r5 == r1) goto L_0x0013
            r3.leftMargin = r1
            r5 = 1
            goto L_0x0014
        L_0x0013:
            r5 = 0
        L_0x0014:
            if (r6 == 0) goto L_0x001f
            int r6 = r3.topMargin
            int r1 = r4.top
            if (r6 == r1) goto L_0x001f
            r3.topMargin = r1
            r5 = 1
        L_0x001f:
            if (r8 == 0) goto L_0x002a
            int r6 = r3.rightMargin
            int r8 = r4.right
            if (r6 == r8) goto L_0x002a
            r3.rightMargin = r8
            r5 = 1
        L_0x002a:
            if (r7 == 0) goto L_0x0035
            int r6 = r3.bottomMargin
            int r4 = r4.bottom
            if (r6 == r4) goto L_0x0035
            r3.bottomMargin = r4
            r5 = 1
        L_0x0035:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.a(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    public void a(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        a(view, i2, i3, i4, i5, i6);
    }

    public boolean a(View view, View view2, int i2, int i3) {
        return i3 == 0 && onStartNestedScroll(view, view2, i2);
    }

    public void a(View view, int i2) {
        if (i2 == 0) {
            onStopNestedScroll(view);
        }
    }

    public void a(View view, int i2, int i3, int i4, int i5, int i6) {
        if (i6 == 0) {
            onNestedScroll(view, i2, i3, i4, i5);
        }
    }

    public void a(View view, int i2, int i3, int[] iArr, int i4) {
        if (i4 == 0) {
            onNestedPreScroll(view, i2, i3, iArr);
        }
    }

    public final G a(View view) {
        if (view instanceof G) {
            return (G) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    public final boolean a(float f2, float f3) {
        this.w.fling(0, 0, 0, (int) f3, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.w.getFinalY() > this.f337e.getHeight();
    }

    public void a(int i2) {
        m();
        if (i2 == 2) {
            this.f338f.n();
        } else if (i2 == 5) {
            this.f338f.o();
        } else if (i2 == 109) {
            setOverlayMode(true);
        }
    }

    public boolean a() {
        m();
        return this.f338f.a();
    }

    public void a(Menu menu, t.a aVar) {
        m();
        this.f338f.a(menu, aVar);
    }
}
