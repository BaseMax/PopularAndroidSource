package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import b.i.k.C0268k;
import b.i.k.M;
import b.i.k.q;
import b.i.k.z;
import c.e.a.c.b.f;
import c.e.a.c.b.g;
import c.e.a.c.b.j;
import c.e.a.c.k;
import c.e.a.c.l.p;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@CoordinatorLayout.c(Behavior.class)
public class AppBarLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    public int f13277a;

    /* renamed from: b  reason: collision with root package name */
    public int f13278b;

    /* renamed from: c  reason: collision with root package name */
    public int f13279c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f13280d;

    /* renamed from: e  reason: collision with root package name */
    public int f13281e;

    /* renamed from: f  reason: collision with root package name */
    public M f13282f;

    /* renamed from: g  reason: collision with root package name */
    public List<a> f13283g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f13284h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f13285i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f13286j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f13287k;

    /* renamed from: l  reason: collision with root package name */
    public int[] f13288l;

    protected static class BaseBehavior<T extends AppBarLayout> extends f<T> {

        /* renamed from: k  reason: collision with root package name */
        public int f13289k;

        /* renamed from: l  reason: collision with root package name */
        public int f13290l;
        public ValueAnimator m;
        public int n = -1;
        public boolean o;
        public float p;
        public WeakReference<View> q;
        public a r;

        protected static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new c();

            /* renamed from: c  reason: collision with root package name */
            public int f13291c;

            /* renamed from: d  reason: collision with root package name */
            public float f13292d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f13293e;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f13291c = parcel.readInt();
                this.f13292d = parcel.readFloat();
                this.f13293e = parcel.readByte() != 0;
            }

            public void writeToParcel(Parcel parcel, int i2) {
                super.writeToParcel(parcel, i2);
                parcel.writeInt(this.f13291c);
                parcel.writeFloat(this.f13292d);
                parcel.writeByte(this.f13293e ? (byte) 1 : 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }

        public static abstract class a<T extends AppBarLayout> {
            public abstract boolean a(T t);
        }

        public BaseBehavior() {
        }

        public static boolean a(int i2, int i3) {
            return (i2 & i3) == i3;
        }

        public final void d(CoordinatorLayout coordinatorLayout, T t) {
            int c2 = c();
            int b2 = b(t, c2);
            if (b2 >= 0) {
                View childAt = t.getChildAt(b2);
                b bVar = (b) childAt.getLayoutParams();
                int a2 = bVar.a();
                if ((a2 & 17) == 17) {
                    int i2 = -childAt.getTop();
                    int i3 = -childAt.getBottom();
                    if (b2 == t.getChildCount() - 1) {
                        i3 += t.getTopInset();
                    }
                    if (a(a2, 2)) {
                        i3 += z.n(childAt);
                    } else if (a(a2, 5)) {
                        int n2 = z.n(childAt) + i3;
                        if (c2 < n2) {
                            i2 = n2;
                        } else {
                            i3 = n2;
                        }
                    }
                    if (a(a2, 32)) {
                        i2 += bVar.topMargin;
                        i3 -= bVar.bottomMargin;
                    }
                    if (c2 < (i3 + i2) / 2) {
                        i2 = i3;
                    }
                    a(coordinatorLayout, t, b.i.e.a.a(i2, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        public int c(T t) {
            return t.getTotalScrollRange();
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public final int b(T t, int i2) {
            int childCount = t.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = t.getChildAt(i3);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                b bVar = (b) childAt.getLayoutParams();
                if (a(bVar.a(), 32)) {
                    top -= bVar.topMargin;
                    bottom += bVar.bottomMargin;
                }
                int i4 = -i2;
                if (top <= i4 && bottom >= i4) {
                    return i3;
                }
            }
            return -1;
        }

        public final int c(T t, int i2) {
            int abs = Math.abs(i2);
            int childCount = t.getChildCount();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i4 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i4);
                b bVar = (b) childAt.getLayoutParams();
                Interpolator b2 = bVar.b();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i4++;
                } else if (b2 != null) {
                    int a2 = bVar.a();
                    if ((a2 & 1) != 0) {
                        i3 = 0 + childAt.getHeight() + bVar.topMargin + bVar.bottomMargin;
                        if ((a2 & 2) != 0) {
                            i3 -= z.n(childAt);
                        }
                    }
                    if (z.j(childAt)) {
                        i3 -= t.getTopInset();
                    }
                    if (i3 > 0) {
                        float f2 = (float) i3;
                        return Integer.signum(i2) * (childAt.getTop() + Math.round(f2 * b2.getInterpolation(((float) (abs - childAt.getTop())) / f2)));
                    }
                }
            }
            return i2;
        }

        /* renamed from: a */
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i2, int i3) {
            boolean z = (i2 & 2) != 0 && (t.e() || a(coordinatorLayout, t, view));
            if (z) {
                ValueAnimator valueAnimator = this.m;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
            }
            this.q = null;
            this.f13290l = i3;
            return z;
        }

        public final boolean a(CoordinatorLayout coordinatorLayout, T t, View view) {
            return t.c() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        /* renamed from: a */
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i2, int i3, int[] iArr, int i4) {
            int i5;
            int i6;
            if (i3 != 0) {
                if (i3 < 0) {
                    int i7 = -t.getTotalScrollRange();
                    i6 = i7;
                    i5 = t.getDownNestedPreScrollRange() + i7;
                } else {
                    i6 = -t.getUpNestedPreScrollRange();
                    i5 = 0;
                }
                if (i6 != i5) {
                    iArr[1] = a(coordinatorLayout, t, i3, i6, i5);
                    a(i3, t, view, i4);
                }
            }
        }

        public int b(T t) {
            return -t.getDownNestedScrollRange();
        }

        /* renamed from: b */
        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, t);
            int a2 = a();
            int childCount = t.getChildCount();
            boolean z = false;
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = t.getChildAt(i2);
                int bottom = childAt.getBottom() + a2;
                if (childAt.getTop() + a2 > 0 || bottom < 0) {
                    i2++;
                } else {
                    SavedState savedState = new SavedState(onSaveInstanceState);
                    savedState.f13291c = i2;
                    if (bottom == z.n(childAt) + t.getTopInset()) {
                        z = true;
                    }
                    savedState.f13293e = z;
                    savedState.f13292d = ((float) bottom) / ((float) childAt.getHeight());
                    return savedState;
                }
            }
            return onSaveInstanceState;
        }

        /* renamed from: a */
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i2, int i3, int i4, int i5, int i6) {
            if (i5 < 0) {
                a(coordinatorLayout, t, i5, -t.getDownNestedScrollRange(), 0);
                a(i5, t, view, i6);
            }
            if (t.e()) {
                t.b(view.getScrollY() > 0);
            }
        }

        public final boolean c(CoordinatorLayout coordinatorLayout, T t) {
            List<View> c2 = coordinatorLayout.c((View) t);
            int size = c2.size();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                CoordinatorLayout.b d2 = ((CoordinatorLayout.e) c2.get(i2).getLayoutParams()).d();
                if (d2 instanceof ScrollingViewBehavior) {
                    if (((ScrollingViewBehavior) d2).b() != 0) {
                        z = true;
                    }
                    return z;
                }
            }
            return false;
        }

        public final void a(int i2, T t, View view, int i3) {
            if (i3 == 1) {
                int c2 = c();
                if ((i2 < 0 && c2 == 0) || (i2 > 0 && c2 == (-t.getDownNestedScrollRange()))) {
                    z.i(view, 1);
                }
            }
        }

        /* renamed from: a */
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i2) {
            if (this.f13290l == 0 || i2 == 1) {
                d(coordinatorLayout, t);
            }
            this.q = new WeakReference<>(view);
        }

        public int c() {
            return a() + this.f13289k;
        }

        public final void a(CoordinatorLayout coordinatorLayout, T t, int i2, float f2) {
            int i3;
            int abs = Math.abs(c() - i2);
            float abs2 = Math.abs(f2);
            if (abs2 > 0.0f) {
                i3 = Math.round((((float) abs) / abs2) * 1000.0f) * 3;
            } else {
                i3 = (int) (((((float) abs) / ((float) t.getHeight())) + 1.0f) * 150.0f);
            }
            a(coordinatorLayout, t, i2, i3);
        }

        public final void a(CoordinatorLayout coordinatorLayout, T t, int i2, int i3) {
            int c2 = c();
            if (c2 == i2) {
                ValueAnimator valueAnimator = this.m;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.m.cancel();
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.m;
            if (valueAnimator2 == null) {
                this.m = new ValueAnimator();
                this.m.setInterpolator(c.e.a.c.a.a.f11188e);
                this.m.addUpdateListener(new b(this, coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.m.setDuration((long) Math.min(i3, 600));
            this.m.setIntValues(new int[]{c2, i2});
            this.m.start();
        }

        /* renamed from: a */
        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, T t, int i2, int i3, int i4, int i5) {
            if (((CoordinatorLayout.e) t.getLayoutParams()).height != -2) {
                return super.onMeasureChild(coordinatorLayout, t, i2, i3, i4, i5);
            }
            coordinatorLayout.a((View) t, i2, i3, View.MeasureSpec.makeMeasureSpec(0, 0), i5);
            return true;
        }

        /* renamed from: a */
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, T t, int i2) {
            int i3;
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, t, i2);
            int pendingAction = t.getPendingAction();
            int i4 = this.n;
            if (i4 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(i4);
                int i5 = -childAt.getBottom();
                if (this.o) {
                    i3 = z.n(childAt) + t.getTopInset();
                } else {
                    i3 = Math.round(((float) childAt.getHeight()) * this.p);
                }
                b(coordinatorLayout, t, i5 + i3);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i6 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        a(coordinatorLayout, t, i6, 0.0f);
                    } else {
                        b(coordinatorLayout, t, i6);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        a(coordinatorLayout, t, 0, 0.0f);
                    } else {
                        b(coordinatorLayout, t, 0);
                    }
                }
            }
            t.f();
            this.n = -1;
            a(b.i.e.a.a(a(), -t.getTotalScrollRange(), 0));
            a(coordinatorLayout, t, a(), 0, true);
            t.a(a());
            return onLayoutChild;
        }

        public boolean a(T t) {
            a aVar = this.r;
            if (aVar != null) {
                return aVar.a(t);
            }
            WeakReference<View> weakReference = this.q;
            boolean z = true;
            if (weakReference != null) {
                View view = (View) weakReference.get();
                if (view == null || !view.isShown() || view.canScrollVertically(-1)) {
                    z = false;
                }
            }
            return z;
        }

        public void a(CoordinatorLayout coordinatorLayout, T t) {
            d(coordinatorLayout, t);
        }

        /* renamed from: a */
        public int b(CoordinatorLayout coordinatorLayout, T t, int i2, int i3, int i4) {
            int c2 = c();
            int i5 = 0;
            if (i3 == 0 || c2 < i3 || c2 > i4) {
                this.f13289k = 0;
            } else {
                int a2 = b.i.e.a.a(i2, i3, i4);
                if (c2 != a2) {
                    int c3 = t.a() ? c(t, a2) : a2;
                    boolean a3 = a(c3);
                    i5 = c2 - a2;
                    this.f13289k = a2 - c3;
                    if (!a3 && t.a()) {
                        coordinatorLayout.a((View) t);
                    }
                    t.a(a());
                    a(coordinatorLayout, t, a2, a2 < c2 ? -1 : 1, false);
                }
            }
            return i5;
        }

        /* JADX WARNING: Removed duplicated region for block: B:18:0x0048  */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x0061  */
        /* JADX WARNING: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a(androidx.coordinatorlayout.widget.CoordinatorLayout r6, T r7, int r8, int r9, boolean r10) {
            /*
                r5 = this;
                android.view.View r0 = a((com.google.android.material.appbar.AppBarLayout) r7, (int) r8)
                if (r0 == 0) goto L_0x006e
                android.view.ViewGroup$LayoutParams r1 = r0.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$b r1 = (com.google.android.material.appbar.AppBarLayout.b) r1
                int r1 = r1.a()
                r2 = r1 & 1
                r3 = 1
                r4 = 0
                if (r2 == 0) goto L_0x0041
                int r2 = b.i.k.z.n(r0)
                if (r9 <= 0) goto L_0x002f
                r9 = r1 & 12
                if (r9 == 0) goto L_0x002f
                int r8 = -r8
                int r9 = r0.getBottom()
                int r9 = r9 - r2
                int r0 = r7.getTopInset()
                int r9 = r9 - r0
                if (r8 < r9) goto L_0x0041
            L_0x002d:
                r8 = 1
                goto L_0x0042
            L_0x002f:
                r9 = r1 & 2
                if (r9 == 0) goto L_0x0041
                int r8 = -r8
                int r9 = r0.getBottom()
                int r9 = r9 - r2
                int r0 = r7.getTopInset()
                int r9 = r9 - r0
                if (r8 < r9) goto L_0x0041
                goto L_0x002d
            L_0x0041:
                r8 = 0
            L_0x0042:
                boolean r9 = r7.e()
                if (r9 == 0) goto L_0x0057
                android.view.View r9 = r5.a((androidx.coordinatorlayout.widget.CoordinatorLayout) r6)
                if (r9 == 0) goto L_0x0057
                int r8 = r9.getScrollY()
                if (r8 <= 0) goto L_0x0056
                r8 = 1
                goto L_0x0057
            L_0x0056:
                r8 = 0
            L_0x0057:
                boolean r8 = r7.b((boolean) r8)
                int r9 = android.os.Build.VERSION.SDK_INT
                r0 = 11
                if (r9 < r0) goto L_0x006e
                if (r10 != 0) goto L_0x006b
                if (r8 == 0) goto L_0x006e
                boolean r6 = r5.c((androidx.coordinatorlayout.widget.CoordinatorLayout) r6, r7)
                if (r6 == 0) goto L_0x006e
            L_0x006b:
                r7.jumpDrawablesToCurrentState()
            L_0x006e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        public static View a(AppBarLayout appBarLayout, int i2) {
            int abs = Math.abs(i2);
            int childCount = appBarLayout.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = appBarLayout.getChildAt(i3);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        public final View a(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt instanceof C0268k) {
                    return childAt;
                }
            }
            return null;
        }

        /* renamed from: a */
        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.onRestoreInstanceState(coordinatorLayout, t, savedState.a());
                this.n = savedState.f13291c;
                this.p = savedState.f13292d;
                this.o = savedState.f13293e;
                return;
            }
            super.onRestoreInstanceState(coordinatorLayout, t, parcelable);
            this.n = -1;
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends g {
        public ScrollingViewBehavior() {
        }

        public float b(View view) {
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int a2 = a(appBarLayout);
                if (downNestedPreScrollRange != 0 && totalScrollRange + a2 <= downNestedPreScrollRange) {
                    return 0.0f;
                }
                int i2 = totalScrollRange - downNestedPreScrollRange;
                if (i2 != 0) {
                    return (((float) a2) / ((float) i2)) + 1.0f;
                }
            }
            return 0.0f;
        }

        public int c(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).getTotalScrollRange();
            }
            return super.c(view);
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            a(view, view2);
            b(view, view2);
            return false;
        }

        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout a2 = a((List) coordinatorLayout.b(view));
            if (a2 != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f11222d;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    a2.a(false, !z);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.ScrollingViewBehavior_Layout);
            c(obtainStyledAttributes.getDimensionPixelSize(k.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        public final void a(View view, View view2) {
            CoordinatorLayout.b d2 = ((CoordinatorLayout.e) view2.getLayoutParams()).d();
            if (d2 instanceof BaseBehavior) {
                z.e(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) d2).f13289k) + c()) - a(view2));
            }
        }

        public final void b(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.e()) {
                    appBarLayout.b(view.getScrollY() > 0);
                }
            }
        }

        public static int a(AppBarLayout appBarLayout) {
            CoordinatorLayout.b d2 = ((CoordinatorLayout.e) appBarLayout.getLayoutParams()).d();
            if (d2 instanceof BaseBehavior) {
                return ((BaseBehavior) d2).c();
            }
            return 0;
        }

        public AppBarLayout a(List<View> list) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = list.get(i2);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }
    }

    public interface a<T extends AppBarLayout> {
        void a(T t, int i2);
    }

    public static class b extends LinearLayout.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f13294a = 1;

        /* renamed from: b  reason: collision with root package name */
        public Interpolator f13295b;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.AppBarLayout_Layout);
            this.f13294a = obtainStyledAttributes.getInt(k.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(k.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f13295b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(k.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public int a() {
            return this.f13294a;
        }

        public Interpolator b() {
            return this.f13295b;
        }

        public boolean c() {
            int i2 = this.f13294a;
            return (i2 & 1) == 1 && (i2 & 10) != 0;
        }

        public b(int i2, int i3) {
            super(i2, i3);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public b(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public interface c extends a<AppBarLayout> {
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public void a(a aVar) {
        if (this.f13283g == null) {
            this.f13283g = new ArrayList();
        }
        if (aVar != null && !this.f13283g.contains(aVar)) {
            this.f13283g.add(aVar);
        }
    }

    public void b(a aVar) {
        List<a> list = this.f13283g;
        if (list != null && aVar != null) {
            list.remove(aVar);
        }
    }

    public boolean c() {
        return getTotalScrollRange() != 0;
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    public final void d() {
        this.f13277a = -1;
        this.f13278b = -1;
        this.f13279c = -1;
    }

    public boolean e() {
        return this.f13287k;
    }

    public void f() {
        this.f13281e = 0;
    }

    public int getDownNestedPreScrollRange() {
        int i2;
        int i3 = this.f13278b;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = bVar.f13294a;
            if ((i5 & 5) == 5) {
                int i6 = i4 + bVar.topMargin + bVar.bottomMargin;
                if ((i5 & 8) != 0) {
                    i4 = i6 + z.n(childAt);
                } else {
                    if ((i5 & 2) != 0) {
                        i2 = z.n(childAt);
                    } else {
                        i2 = getTopInset();
                    }
                    i4 = i6 + (measuredHeight - i2);
                }
            } else if (i4 > 0) {
                break;
            }
        }
        int max = Math.max(0, i4);
        this.f13278b = max;
        return max;
    }

    public int getDownNestedScrollRange() {
        int i2 = this.f13279c;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + bVar.topMargin + bVar.bottomMargin;
            int i5 = bVar.f13294a;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight;
            if ((i5 & 2) != 0) {
                i4 -= z.n(childAt) + getTopInset();
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4);
        this.f13279c = max;
        return max;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int n = z.n(this);
        if (n == 0) {
            int childCount = getChildCount();
            n = childCount >= 1 ? z.n(getChildAt(childCount - 1)) : 0;
            if (n == 0) {
                return getHeight() / 3;
            }
        }
        return (n * 2) + topInset;
    }

    public int getPendingAction() {
        return this.f13281e;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public final int getTopInset() {
        M m = this.f13282f;
        if (m != null) {
            return m.e();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i2 = this.f13277a;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = bVar.f13294a;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + bVar.topMargin + bVar.bottomMargin;
            if ((i5 & 2) != 0) {
                i4 -= z.n(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4 - getTopInset());
        this.f13277a = max;
        return max;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    public int[] onCreateDrawableState(int i2) {
        if (this.f13288l == null) {
            this.f13288l = new int[4];
        }
        int[] iArr = this.f13288l;
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + iArr.length);
        iArr[0] = this.f13285i ? c.e.a.c.b.state_liftable : -c.e.a.c.b.state_liftable;
        iArr[1] = (!this.f13285i || !this.f13286j) ? -c.e.a.c.b.state_lifted : c.e.a.c.b.state_lifted;
        iArr[2] = this.f13285i ? c.e.a.c.b.state_collapsible : -c.e.a.c.b.state_collapsible;
        iArr[3] = (!this.f13285i || !this.f13286j) ? -c.e.a.c.b.state_collapsed : c.e.a.c.b.state_collapsed;
        return LinearLayout.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        d();
        boolean z2 = false;
        this.f13280d = false;
        int childCount = getChildCount();
        int i6 = 0;
        while (true) {
            if (i6 >= childCount) {
                break;
            } else if (((b) getChildAt(i6).getLayoutParams()).b() != null) {
                this.f13280d = true;
                break;
            } else {
                i6++;
            }
        }
        if (!this.f13284h) {
            if (this.f13287k || b()) {
                z2 = true;
            }
            a(z2);
        }
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        d();
    }

    public void setExpanded(boolean z) {
        a(z, z.B(this));
    }

    public void setLiftOnScroll(boolean z) {
        this.f13287k = z;
    }

    public void setOrientation(int i2) {
        if (i2 == 1) {
            super.setOrientation(i2);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    @Deprecated
    public void setTargetElevation(float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            j.a(this, f2);
        }
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13277a = -1;
        this.f13278b = -1;
        this.f13279c = -1;
        this.f13281e = 0;
        setOrientation(1);
        if (Build.VERSION.SDK_INT >= 21) {
            j.a(this);
            j.a(this, attributeSet, 0, c.e.a.c.j.Widget_Design_AppBarLayout);
        }
        TypedArray c2 = p.c(context, attributeSet, k.AppBarLayout, 0, c.e.a.c.j.Widget_Design_AppBarLayout, new int[0]);
        z.a((View) this, c2.getDrawable(k.AppBarLayout_android_background));
        if (c2.hasValue(k.AppBarLayout_expanded)) {
            a(c2.getBoolean(k.AppBarLayout_expanded, false), false, false);
        }
        if (Build.VERSION.SDK_INT >= 21 && c2.hasValue(k.AppBarLayout_elevation)) {
            j.a(this, (float) c2.getDimensionPixelSize(k.AppBarLayout_elevation, 0));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (c2.hasValue(k.AppBarLayout_android_keyboardNavigationCluster)) {
                setKeyboardNavigationCluster(c2.getBoolean(k.AppBarLayout_android_keyboardNavigationCluster, false));
            }
            if (c2.hasValue(k.AppBarLayout_android_touchscreenBlocksFocus)) {
                setTouchscreenBlocksFocus(c2.getBoolean(k.AppBarLayout_android_touchscreenBlocksFocus, false));
            }
        }
        this.f13287k = c2.getBoolean(k.AppBarLayout_liftOnScroll, false);
        c2.recycle();
        z.a((View) this, (q) new a(this));
    }

    public void b(c cVar) {
        b((a) cVar);
    }

    public b generateDefaultLayoutParams() {
        return new b(-1, -2);
    }

    public final boolean b() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (((b) getChildAt(i2).getLayoutParams()).c()) {
                return true;
            }
        }
        return false;
    }

    public void a(c cVar) {
        a((a) cVar);
    }

    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    public void a(boolean z, boolean z2) {
        a(z, z2, true);
    }

    public boolean b(boolean z) {
        if (this.f13286j == z) {
            return false;
        }
        this.f13286j = z;
        refreshDrawableState();
        return true;
    }

    public b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 19 && (layoutParams instanceof LinearLayout.LayoutParams)) {
            return new b((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    public final void a(boolean z, boolean z2, boolean z3) {
        int i2 = 0;
        int i3 = (z ? 1 : 2) | (z2 ? 4 : 0);
        if (z3) {
            i2 = 8;
        }
        this.f13281e = i3 | i2;
        requestLayout();
    }

    public boolean a() {
        return this.f13280d;
    }

    public void a(int i2) {
        List<a> list = this.f13283g;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                a aVar = this.f13283g.get(i3);
                if (aVar != null) {
                    aVar.a(this, i2);
                }
            }
        }
    }

    public final boolean a(boolean z) {
        if (this.f13285i == z) {
            return false;
        }
        this.f13285i = z;
        refreshDrawableState();
        return true;
    }

    public M a(M m) {
        M m2 = z.j(this) ? m : null;
        if (!b.i.j.c.a(this.f13282f, m2)) {
            this.f13282f = m2;
            d();
        }
        return m;
    }
}
