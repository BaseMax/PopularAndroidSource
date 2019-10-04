package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import b.i.k.z;
import b.k.b.g;
import c.e.a.c.d;
import c.e.a.c.k;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.b<V> {

    /* renamed from: a  reason: collision with root package name */
    public boolean f13342a = true;

    /* renamed from: b  reason: collision with root package name */
    public float f13343b;

    /* renamed from: c  reason: collision with root package name */
    public int f13344c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f13345d;

    /* renamed from: e  reason: collision with root package name */
    public int f13346e;

    /* renamed from: f  reason: collision with root package name */
    public int f13347f;

    /* renamed from: g  reason: collision with root package name */
    public int f13348g;

    /* renamed from: h  reason: collision with root package name */
    public int f13349h;

    /* renamed from: i  reason: collision with root package name */
    public int f13350i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f13351j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f13352k;

    /* renamed from: l  reason: collision with root package name */
    public int f13353l = 4;
    public g m;
    public boolean n;
    public int o;
    public boolean p;
    public int q;
    public WeakReference<V> r;
    public WeakReference<View> s;
    public a t;
    public VelocityTracker u;
    public int v;
    public int w;
    public boolean x;
    public Map<View, Integer> y;
    public final g.a z = new b(this);

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new c();

        /* renamed from: c  reason: collision with root package name */
        public final int f13354c;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f13354c = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f13354c);
        }

        public SavedState(Parcelable parcelable, int i2) {
            super(parcelable);
            this.f13354c = i2;
        }
    }

    public static abstract class a {
        public abstract void a(View view, float f2);

        public abstract void a(View view, int i2);
    }

    private class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final View f13355a;

        /* renamed from: b  reason: collision with root package name */
        public final int f13356b;

        public b(View view, int i2) {
            this.f13355a = view;
            this.f13356b = i2;
        }

        public void run() {
            g gVar = BottomSheetBehavior.this.m;
            if (gVar == null || !gVar.a(true)) {
                BottomSheetBehavior.this.d(this.f13356b);
            } else {
                z.a(this.f13355a, (Runnable) this);
            }
        }
    }

    public BottomSheetBehavior() {
    }

    public void c(boolean z2) {
        this.f13352k = z2;
    }

    public void d(int i2) {
        if (this.f13353l != i2) {
            this.f13353l = i2;
            if (i2 == 6 || i2 == 3) {
                d(true);
            } else if (i2 == 5 || i2 == 4) {
                d(false);
            }
            View view = (View) this.r.get();
            if (view != null) {
                a aVar = this.t;
                if (aVar != null) {
                    aVar.a(view, i2);
                }
            }
        }
    }

    public final void e() {
        this.v = -1;
        VelocityTracker velocityTracker = this.u;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.u = null;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v12, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v4, resolved type: android.view.View} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout r9, V r10, android.view.MotionEvent r11) {
        /*
            r8 = this;
            boolean r0 = r10.isShown()
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x000b
            r8.n = r2
            return r1
        L_0x000b:
            int r0 = r11.getActionMasked()
            if (r0 != 0) goto L_0x0014
            r8.e()
        L_0x0014:
            android.view.VelocityTracker r3 = r8.u
            if (r3 != 0) goto L_0x001e
            android.view.VelocityTracker r3 = android.view.VelocityTracker.obtain()
            r8.u = r3
        L_0x001e:
            android.view.VelocityTracker r3 = r8.u
            r3.addMovement(r11)
            r3 = 0
            r4 = -1
            if (r0 == 0) goto L_0x0038
            if (r0 == r2) goto L_0x002d
            r10 = 3
            if (r0 == r10) goto L_0x002d
            goto L_0x0077
        L_0x002d:
            r8.x = r1
            r8.v = r4
            boolean r10 = r8.n
            if (r10 == 0) goto L_0x0077
            r8.n = r1
            return r1
        L_0x0038:
            float r5 = r11.getX()
            int r5 = (int) r5
            float r6 = r11.getY()
            int r6 = (int) r6
            r8.w = r6
            java.lang.ref.WeakReference<android.view.View> r6 = r8.s
            if (r6 == 0) goto L_0x004f
            java.lang.Object r6 = r6.get()
            android.view.View r6 = (android.view.View) r6
            goto L_0x0050
        L_0x004f:
            r6 = r3
        L_0x0050:
            if (r6 == 0) goto L_0x0066
            int r7 = r8.w
            boolean r6 = r9.a((android.view.View) r6, (int) r5, (int) r7)
            if (r6 == 0) goto L_0x0066
            int r6 = r11.getActionIndex()
            int r6 = r11.getPointerId(r6)
            r8.v = r6
            r8.x = r2
        L_0x0066:
            int r6 = r8.v
            if (r6 != r4) goto L_0x0074
            int r4 = r8.w
            boolean r10 = r9.a((android.view.View) r10, (int) r5, (int) r4)
            if (r10 != 0) goto L_0x0074
            r10 = 1
            goto L_0x0075
        L_0x0074:
            r10 = 0
        L_0x0075:
            r8.n = r10
        L_0x0077:
            boolean r10 = r8.n
            if (r10 != 0) goto L_0x0086
            b.k.b.g r10 = r8.m
            if (r10 == 0) goto L_0x0086
            boolean r10 = r10.c((android.view.MotionEvent) r11)
            if (r10 == 0) goto L_0x0086
            return r2
        L_0x0086:
            java.lang.ref.WeakReference<android.view.View> r10 = r8.s
            if (r10 == 0) goto L_0x0091
            java.lang.Object r10 = r10.get()
            r3 = r10
            android.view.View r3 = (android.view.View) r3
        L_0x0091:
            r10 = 2
            if (r0 != r10) goto L_0x00ca
            if (r3 == 0) goto L_0x00ca
            boolean r10 = r8.n
            if (r10 != 0) goto L_0x00ca
            int r10 = r8.f13353l
            if (r10 == r2) goto L_0x00ca
            float r10 = r11.getX()
            int r10 = (int) r10
            float r0 = r11.getY()
            int r0 = (int) r0
            boolean r9 = r9.a((android.view.View) r3, (int) r10, (int) r0)
            if (r9 != 0) goto L_0x00ca
            b.k.b.g r9 = r8.m
            if (r9 == 0) goto L_0x00ca
            int r9 = r8.w
            float r9 = (float) r9
            float r10 = r11.getY()
            float r9 = r9 - r10
            float r9 = java.lang.Math.abs(r9)
            b.k.b.g r10 = r8.m
            int r10 = r10.c()
            float r10 = (float) r10
            int r9 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
            if (r9 <= 0) goto L_0x00ca
            r1 = 1
        L_0x00ca:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v2, int i2) {
        if (z.j(coordinatorLayout) && !z.j(v2)) {
            v2.setFitsSystemWindows(true);
        }
        int top = v2.getTop();
        coordinatorLayout.d(v2, i2);
        this.q = coordinatorLayout.getHeight();
        if (this.f13345d) {
            if (this.f13346e == 0) {
                this.f13346e = coordinatorLayout.getResources().getDimensionPixelSize(d.design_bottom_sheet_peek_height_min);
            }
            this.f13347f = Math.max(this.f13346e, this.q - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            this.f13347f = this.f13344c;
        }
        this.f13348g = Math.max(0, this.q - v2.getHeight());
        this.f13349h = this.q / 2;
        a();
        int i3 = this.f13353l;
        if (i3 == 3) {
            z.e(v2, b());
        } else if (i3 == 6) {
            z.e(v2, this.f13349h);
        } else if (!this.f13351j || i3 != 5) {
            int i4 = this.f13353l;
            if (i4 == 4) {
                z.e(v2, this.f13350i);
            } else if (i4 == 1 || i4 == 2) {
                z.e(v2, top - v2.getTop());
            }
        } else {
            z.e(v2, this.q);
        }
        if (this.m == null) {
            this.m = g.a((ViewGroup) coordinatorLayout, this.z);
        }
        this.r = new WeakReference<>(v2);
        this.s = new WeakReference<>(a((View) v2));
        return true;
    }

    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v2, View view, float f2, float f3) {
        return view == this.s.get() && (this.f13353l != 3 || super.onNestedPreFling(coordinatorLayout, v2, view, f2, f3));
    }

    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v2, View view, int i2, int i3, int[] iArr, int i4) {
        if (i4 != 1 && view == ((View) this.s.get())) {
            int top = v2.getTop();
            int i5 = top - i3;
            if (i3 > 0) {
                if (i5 < b()) {
                    iArr[1] = top - b();
                    z.e(v2, -iArr[1]);
                    d(3);
                } else {
                    iArr[1] = i3;
                    z.e(v2, -i3);
                    d(1);
                }
            } else if (i3 < 0 && !view.canScrollVertically(-1)) {
                int i6 = this.f13350i;
                if (i5 <= i6 || this.f13351j) {
                    iArr[1] = i3;
                    z.e(v2, -i3);
                    d(1);
                } else {
                    iArr[1] = top - i6;
                    z.e(v2, -iArr[1]);
                    d(4);
                }
            }
            a(v2.getTop());
            this.o = i3;
            this.p = true;
        }
    }

    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v2, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v2, savedState.a());
        int i2 = savedState.f13354c;
        if (i2 == 1 || i2 == 2) {
            this.f13353l = 4;
        } else {
            this.f13353l = i2;
        }
    }

    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v2) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v2), this.f13353l);
    }

    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v2, View view, View view2, int i2, int i3) {
        this.o = 0;
        this.p = false;
        if ((i2 & 2) != 0) {
            return true;
        }
        return false;
    }

    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v2, View view, int i2) {
        int i3;
        int i4;
        int i5 = 3;
        if (v2.getTop() == b()) {
            d(3);
            return;
        }
        if (view == this.s.get() && this.p) {
            if (this.o > 0) {
                i3 = b();
            } else if (!this.f13351j || !a((View) v2, d())) {
                if (this.o == 0) {
                    int top = v2.getTop();
                    if (!this.f13342a) {
                        int i6 = this.f13349h;
                        if (top < i6) {
                            if (top < Math.abs(top - this.f13350i)) {
                                i3 = 0;
                            } else {
                                i3 = this.f13349h;
                            }
                        } else if (Math.abs(top - i6) < Math.abs(top - this.f13350i)) {
                            i3 = this.f13349h;
                        } else {
                            i4 = this.f13350i;
                        }
                        i5 = 6;
                    } else if (Math.abs(top - this.f13348g) < Math.abs(top - this.f13350i)) {
                        i3 = this.f13348g;
                    } else {
                        i4 = this.f13350i;
                    }
                } else {
                    i4 = this.f13350i;
                }
                i5 = 4;
            } else {
                i3 = this.q;
                i5 = 5;
            }
            if (this.m.b((View) v2, v2.getLeft(), i3)) {
                d(2);
                z.a((View) v2, (Runnable) new b(v2, i5));
            } else {
                d(i5);
            }
            this.p = false;
        }
    }

    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v2, MotionEvent motionEvent) {
        if (!v2.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f13353l == 1 && actionMasked == 0) {
            return true;
        }
        g gVar = this.m;
        if (gVar != null) {
            gVar.a(motionEvent);
        }
        if (actionMasked == 0) {
            e();
        }
        if (this.u == null) {
            this.u = VelocityTracker.obtain();
        }
        this.u.addMovement(motionEvent);
        if (actionMasked == 2 && !this.n && Math.abs(((float) this.w) - motionEvent.getY()) > ((float) this.m.c())) {
            this.m.a((View) v2, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.n;
    }

    public void a(boolean z2) {
        if (this.f13342a != z2) {
            this.f13342a = z2;
            if (this.r != null) {
                a();
            }
            d((!this.f13342a || this.f13353l != 6) ? this.f13353l : 3);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0026  */
    /* JADX WARNING: Removed duplicated region for block: B:20:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(int r4) {
        /*
            r3 = this;
            r0 = 1
            r1 = 0
            r2 = -1
            if (r4 != r2) goto L_0x000c
            boolean r4 = r3.f13345d
            if (r4 != 0) goto L_0x0015
            r3.f13345d = r0
            goto L_0x0024
        L_0x000c:
            boolean r2 = r3.f13345d
            if (r2 != 0) goto L_0x0017
            int r2 = r3.f13344c
            if (r2 == r4) goto L_0x0015
            goto L_0x0017
        L_0x0015:
            r0 = 0
            goto L_0x0024
        L_0x0017:
            r3.f13345d = r1
            int r1 = java.lang.Math.max(r1, r4)
            r3.f13344c = r1
            int r1 = r3.q
            int r1 = r1 - r4
            r3.f13350i = r1
        L_0x0024:
            if (r0 == 0) goto L_0x003a
            int r4 = r3.f13353l
            r0 = 4
            if (r4 != r0) goto L_0x003a
            java.lang.ref.WeakReference<V> r4 = r3.r
            if (r4 == 0) goto L_0x003a
            java.lang.Object r4 = r4.get()
            android.view.View r4 = (android.view.View) r4
            if (r4 == 0) goto L_0x003a
            r4.requestLayout()
        L_0x003a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.b(int):void");
    }

    public final void c(int i2) {
        if (i2 != this.f13353l) {
            WeakReference<V> weakReference = this.r;
            if (weakReference == null) {
                if (i2 == 4 || i2 == 3 || i2 == 6 || (this.f13351j && i2 == 5)) {
                    this.f13353l = i2;
                }
                return;
            }
            View view = (View) weakReference.get();
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent == null || !parent.isLayoutRequested() || !z.A(view)) {
                    a(view, i2);
                } else {
                    view.post(new a(this, view, i2));
                }
            }
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.BottomSheetBehavior_Layout);
        TypedValue peekValue = obtainStyledAttributes.peekValue(k.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue != null) {
            int i2 = peekValue.data;
            if (i2 == -1) {
                b(i2);
                b(obtainStyledAttributes.getBoolean(k.BottomSheetBehavior_Layout_behavior_hideable, false));
                a(obtainStyledAttributes.getBoolean(k.BottomSheetBehavior_Layout_behavior_fitToContents, true));
                c(obtainStyledAttributes.getBoolean(k.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
                obtainStyledAttributes.recycle();
                this.f13343b = (float) ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            }
        }
        b(obtainStyledAttributes.getDimensionPixelSize(k.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        b(obtainStyledAttributes.getBoolean(k.BottomSheetBehavior_Layout_behavior_hideable, false));
        a(obtainStyledAttributes.getBoolean(k.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        c(obtainStyledAttributes.getBoolean(k.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        obtainStyledAttributes.recycle();
        this.f13343b = (float) ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public void a(a aVar) {
        this.t = aVar;
    }

    public final void a() {
        if (this.f13342a) {
            this.f13350i = Math.max(this.q - this.f13347f, this.f13348g);
        } else {
            this.f13350i = this.q - this.f13347f;
        }
    }

    public final float d() {
        VelocityTracker velocityTracker = this.u;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(AnswersRetryFilesSender.BACKOFF_MS, this.f13343b);
        return this.u.getYVelocity(this.v);
    }

    public boolean a(View view, float f2) {
        boolean z2 = true;
        if (this.f13352k) {
            return true;
        }
        if (view.getTop() < this.f13350i) {
            return false;
        }
        if (Math.abs((((float) view.getTop()) + (f2 * 0.1f)) - ((float) this.f13350i)) / ((float) this.f13344c) <= 0.5f) {
            z2 = false;
        }
        return z2;
    }

    public void b(boolean z2) {
        this.f13351j = z2;
    }

    public final int c() {
        return this.f13353l;
    }

    public final void d(boolean z2) {
        WeakReference<V> weakReference = this.r;
        if (weakReference != null) {
            ViewParent parent = ((View) weakReference.get()).getParent();
            if (parent instanceof CoordinatorLayout) {
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
                int childCount = coordinatorLayout.getChildCount();
                if (Build.VERSION.SDK_INT >= 16 && z2) {
                    if (this.y == null) {
                        this.y = new HashMap(childCount);
                    } else {
                        return;
                    }
                }
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = coordinatorLayout.getChildAt(i2);
                    if (childAt != this.r.get()) {
                        if (!z2) {
                            Map<View, Integer> map = this.y;
                            if (map != null && map.containsKey(childAt)) {
                                z.g(childAt, this.y.get(childAt).intValue());
                            }
                        } else {
                            if (Build.VERSION.SDK_INT >= 16) {
                                this.y.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                            }
                            z.g(childAt, 4);
                        }
                    }
                }
                if (!z2) {
                    this.y = null;
                }
            }
        }
    }

    public final int b() {
        if (this.f13342a) {
            return this.f13348g;
        }
        return 0;
    }

    public static <V extends View> BottomSheetBehavior<V> b(V v2) {
        ViewGroup.LayoutParams layoutParams = v2.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.e) {
            CoordinatorLayout.b d2 = ((CoordinatorLayout.e) layoutParams).d();
            if (d2 instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) d2;
            }
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    public View a(View view) {
        if (z.C(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View a2 = a(viewGroup.getChildAt(i2));
                if (a2 != null) {
                    return a2;
                }
            }
        }
        return null;
    }

    public void a(View view, int i2) {
        int i3;
        if (i2 == 4) {
            i3 = this.f13350i;
        } else if (i2 == 6) {
            int i4 = this.f13349h;
            if (this.f13342a) {
                int i5 = this.f13348g;
                if (i4 <= i5) {
                    i3 = i5;
                    i2 = 3;
                }
            }
            i3 = i4;
        } else if (i2 == 3) {
            i3 = b();
        } else if (!this.f13351j || i2 != 5) {
            throw new IllegalArgumentException("Illegal state argument: " + i2);
        } else {
            i3 = this.q;
        }
        if (this.m.b(view, view.getLeft(), i3)) {
            d(2);
            z.a(view, (Runnable) new b(view, i2));
            return;
        }
        d(i2);
    }

    public void a(int i2) {
        View view = (View) this.r.get();
        if (view != null) {
            a aVar = this.t;
            if (aVar != null) {
                int i3 = this.f13350i;
                if (i2 > i3) {
                    aVar.a(view, ((float) (i3 - i2)) / ((float) (this.q - i3)));
                } else {
                    aVar.a(view, ((float) (i3 - i2)) / ((float) (i3 - b())));
                }
            }
        }
    }
}
