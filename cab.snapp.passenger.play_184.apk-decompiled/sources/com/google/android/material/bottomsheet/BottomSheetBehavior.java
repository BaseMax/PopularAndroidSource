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
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final int PEEK_HEIGHT_AUTO = -1;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HALF_EXPANDED = 6;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;

    /* renamed from: a  reason: collision with root package name */
    int f3836a;

    /* renamed from: b  reason: collision with root package name */
    int f3837b;
    int c;
    boolean d;
    int e = 4;
    ViewDragHelper f;
    int g;
    WeakReference<V> h;
    WeakReference<View> i;
    int j;
    boolean k;
    /* access modifiers changed from: private */
    public boolean l = true;
    private float m;
    private int n;
    private boolean o;
    private int p;
    private int q;
    private boolean r;
    private boolean s;
    private int t;
    private boolean u;
    private a v;
    private VelocityTracker w;
    private int x;
    private Map<View, Integer> y;
    private final ViewDragHelper.Callback z = new ViewDragHelper.Callback() {
        public final boolean tryCaptureView(View view, int i) {
            if (BottomSheetBehavior.this.e == 1 || BottomSheetBehavior.this.k) {
                return false;
            }
            if (BottomSheetBehavior.this.e == 3 && BottomSheetBehavior.this.j == i) {
                View view2 = (View) BottomSheetBehavior.this.i.get();
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            return BottomSheetBehavior.this.h != null && BottomSheetBehavior.this.h.get() == view;
        }

        public final void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.b(i2);
        }

        public final void onViewDragStateChanged(int i) {
            if (i == 1) {
                BottomSheetBehavior.this.a(1);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:41:0x00dc  */
        /* JADX WARNING: Removed duplicated region for block: B:43:0x00ed  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onViewReleased(android.view.View r8, float r9, float r10) {
            /*
                r7 = this;
                r0 = 0
                r1 = 0
                r2 = 4
                r3 = 6
                r4 = 3
                int r5 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
                if (r5 >= 0) goto L_0x0029
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r9 = r9.l
                if (r9 == 0) goto L_0x0018
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r9.f3836a
            L_0x0015:
                r2 = 3
                goto L_0x00ce
            L_0x0018:
                int r9 = r8.getTop()
                com.google.android.material.bottomsheet.BottomSheetBehavior r10 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r10 = r10.f3837b
                if (r9 <= r10) goto L_0x0015
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r9.f3837b
            L_0x0026:
                r2 = 6
                goto L_0x00ce
            L_0x0029:
                com.google.android.material.bottomsheet.BottomSheetBehavior r5 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r5 = r5.d
                if (r5 == 0) goto L_0x0054
                com.google.android.material.bottomsheet.BottomSheetBehavior r5 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r5 = r5.a((android.view.View) r8, (float) r10)
                if (r5 == 0) goto L_0x0054
                int r5 = r8.getTop()
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r6 = r6.c
                if (r5 > r6) goto L_0x004d
                float r5 = java.lang.Math.abs(r9)
                float r6 = java.lang.Math.abs(r10)
                int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
                if (r5 >= 0) goto L_0x0054
            L_0x004d:
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r9.g
                r2 = 5
                goto L_0x00ce
            L_0x0054:
                int r1 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
                if (r1 == 0) goto L_0x006a
                float r9 = java.lang.Math.abs(r9)
                float r10 = java.lang.Math.abs(r10)
                int r9 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
                if (r9 <= 0) goto L_0x0065
                goto L_0x006a
            L_0x0065:
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r9.c
                goto L_0x00ce
            L_0x006a:
                int r9 = r8.getTop()
                com.google.android.material.bottomsheet.BottomSheetBehavior r10 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r10 = r10.l
                if (r10 == 0) goto L_0x0095
                com.google.android.material.bottomsheet.BottomSheetBehavior r10 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r10 = r10.f3836a
                int r10 = r9 - r10
                int r10 = java.lang.Math.abs(r10)
                com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r0.c
                int r9 = r9 - r0
                int r9 = java.lang.Math.abs(r9)
                if (r10 >= r9) goto L_0x0090
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r9.f3836a
                goto L_0x0015
            L_0x0090:
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r9.c
                goto L_0x00ce
            L_0x0095:
                com.google.android.material.bottomsheet.BottomSheetBehavior r10 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r10 = r10.f3837b
                if (r9 >= r10) goto L_0x00af
                com.google.android.material.bottomsheet.BottomSheetBehavior r10 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r10 = r10.c
                int r10 = r9 - r10
                int r10 = java.lang.Math.abs(r10)
                if (r9 >= r10) goto L_0x00a9
                goto L_0x0015
            L_0x00a9:
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r9.f3837b
                goto L_0x0026
            L_0x00af:
                com.google.android.material.bottomsheet.BottomSheetBehavior r10 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r10 = r10.f3837b
                int r10 = r9 - r10
                int r10 = java.lang.Math.abs(r10)
                com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r0.c
                int r9 = r9 - r0
                int r9 = java.lang.Math.abs(r9)
                if (r10 >= r9) goto L_0x00ca
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r9.f3837b
                goto L_0x0026
            L_0x00ca:
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r9.c
            L_0x00ce:
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                androidx.customview.widget.ViewDragHelper r9 = r9.f
                int r10 = r8.getLeft()
                boolean r9 = r9.settleCapturedViewAt(r10, r0)
                if (r9 == 0) goto L_0x00ed
                com.google.android.material.bottomsheet.BottomSheetBehavior r9 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                r10 = 2
                r9.a((int) r10)
                com.google.android.material.bottomsheet.BottomSheetBehavior$b r9 = new com.google.android.material.bottomsheet.BottomSheetBehavior$b
                com.google.android.material.bottomsheet.BottomSheetBehavior r10 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                r9.<init>(r8, r2)
                androidx.core.view.ViewCompat.postOnAnimation(r8, r9)
                return
            L_0x00ed:
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                r8.a((int) r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.AnonymousClass2.onViewReleased(android.view.View, float, float):void");
        }

        public final int clampViewPositionVertical(View view, int i, int i2) {
            return MathUtils.clamp(i, BottomSheetBehavior.this.c(), BottomSheetBehavior.this.d ? BottomSheetBehavior.this.g : BottomSheetBehavior.this.c);
        }

        public final int clampViewPositionHorizontal(View view, int i, int i2) {
            return view.getLeft();
        }

        public final int getViewVerticalDragRange(View view) {
            if (BottomSheetBehavior.this.d) {
                return BottomSheetBehavior.this.g;
            }
            return BottomSheetBehavior.this.c;
        }
    };

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        final int f3841a;

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3841a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f3841a = i;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3841a);
        }
    }

    public static abstract class a {
        public abstract void onSlide(View view, float f);

        public abstract void onStateChanged(View view, int i);
    }

    class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final View f3843b;
        private final int c;

        b(View view, int i) {
            this.f3843b = view;
            this.c = i;
        }

        public final void run() {
            if (BottomSheetBehavior.this.f == null || !BottomSheetBehavior.this.f.continueSettling(true)) {
                BottomSheetBehavior.this.a(this.c);
            } else {
                ViewCompat.postOnAnimation(this.f3843b, this);
            }
        }
    }

    public BottomSheetBehavior() {
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.k.BottomSheetBehavior_Layout);
        TypedValue peekValue = obtainStyledAttributes.peekValue(a.k.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue == null || peekValue.data != -1) {
            setPeekHeight(obtainStyledAttributes.getDimensionPixelSize(a.k.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            setPeekHeight(peekValue.data);
        }
        setHideable(obtainStyledAttributes.getBoolean(a.k.BottomSheetBehavior_Layout_behavior_hideable, false));
        setFitToContents(obtainStyledAttributes.getBoolean(a.k.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        setSkipCollapsed(obtainStyledAttributes.getBoolean(a.k.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        obtainStyledAttributes.recycle();
        this.m = (float) ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v2) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v2), this.e);
    }

    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v2, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v2, savedState.getSuperState());
        if (savedState.f3841a == 1 || savedState.f3841a == 2) {
            this.e = 4;
        } else {
            this.e = savedState.f3841a;
        }
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v2, int i2) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v2)) {
            v2.setFitsSystemWindows(true);
        }
        int top = v2.getTop();
        coordinatorLayout.onLayoutChild(v2, i2);
        this.g = coordinatorLayout.getHeight();
        if (this.o) {
            if (this.p == 0) {
                this.p = coordinatorLayout.getResources().getDimensionPixelSize(a.d.design_bottom_sheet_peek_height_min);
            }
            this.q = Math.max(this.p, this.g - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            this.q = this.n;
        }
        this.f3836a = Math.max(0, this.g - v2.getHeight());
        this.f3837b = this.g / 2;
        a();
        int i3 = this.e;
        if (i3 == 3) {
            ViewCompat.offsetTopAndBottom(v2, c());
        } else if (i3 == 6) {
            ViewCompat.offsetTopAndBottom(v2, this.f3837b);
        } else if (!this.d || i3 != 5) {
            int i4 = this.e;
            if (i4 == 4) {
                ViewCompat.offsetTopAndBottom(v2, this.c);
            } else if (i4 == 1 || i4 == 2) {
                ViewCompat.offsetTopAndBottom(v2, top - v2.getTop());
            }
        } else {
            ViewCompat.offsetTopAndBottom(v2, this.g);
        }
        if (this.f == null) {
            this.f = ViewDragHelper.create(coordinatorLayout, this.z);
        }
        this.h = new WeakReference<>(v2);
        this.i = new WeakReference<>(a((View) v2));
        return true;
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
            r8.s = r2
            return r1
        L_0x000b:
            int r0 = r11.getActionMasked()
            if (r0 != 0) goto L_0x0014
            r8.b()
        L_0x0014:
            android.view.VelocityTracker r3 = r8.w
            if (r3 != 0) goto L_0x001e
            android.view.VelocityTracker r3 = android.view.VelocityTracker.obtain()
            r8.w = r3
        L_0x001e:
            android.view.VelocityTracker r3 = r8.w
            r3.addMovement(r11)
            r3 = 0
            r4 = -1
            if (r0 == 0) goto L_0x0038
            if (r0 == r2) goto L_0x002d
            r10 = 3
            if (r0 == r10) goto L_0x002d
            goto L_0x0077
        L_0x002d:
            r8.k = r1
            r8.j = r4
            boolean r10 = r8.s
            if (r10 == 0) goto L_0x0077
            r8.s = r1
            return r1
        L_0x0038:
            float r5 = r11.getX()
            int r5 = (int) r5
            float r6 = r11.getY()
            int r6 = (int) r6
            r8.x = r6
            java.lang.ref.WeakReference<android.view.View> r6 = r8.i
            if (r6 == 0) goto L_0x004f
            java.lang.Object r6 = r6.get()
            android.view.View r6 = (android.view.View) r6
            goto L_0x0050
        L_0x004f:
            r6 = r3
        L_0x0050:
            if (r6 == 0) goto L_0x0066
            int r7 = r8.x
            boolean r6 = r9.isPointInChildBounds(r6, r5, r7)
            if (r6 == 0) goto L_0x0066
            int r6 = r11.getActionIndex()
            int r6 = r11.getPointerId(r6)
            r8.j = r6
            r8.k = r2
        L_0x0066:
            int r6 = r8.j
            if (r6 != r4) goto L_0x0074
            int r4 = r8.x
            boolean r10 = r9.isPointInChildBounds(r10, r5, r4)
            if (r10 != 0) goto L_0x0074
            r10 = 1
            goto L_0x0075
        L_0x0074:
            r10 = 0
        L_0x0075:
            r8.s = r10
        L_0x0077:
            boolean r10 = r8.s
            if (r10 != 0) goto L_0x0086
            androidx.customview.widget.ViewDragHelper r10 = r8.f
            if (r10 == 0) goto L_0x0086
            boolean r10 = r10.shouldInterceptTouchEvent(r11)
            if (r10 == 0) goto L_0x0086
            return r2
        L_0x0086:
            java.lang.ref.WeakReference<android.view.View> r10 = r8.i
            if (r10 == 0) goto L_0x0091
            java.lang.Object r10 = r10.get()
            r3 = r10
            android.view.View r3 = (android.view.View) r3
        L_0x0091:
            r10 = 2
            if (r0 != r10) goto L_0x00ca
            if (r3 == 0) goto L_0x00ca
            boolean r10 = r8.s
            if (r10 != 0) goto L_0x00ca
            int r10 = r8.e
            if (r10 == r2) goto L_0x00ca
            float r10 = r11.getX()
            int r10 = (int) r10
            float r0 = r11.getY()
            int r0 = (int) r0
            boolean r9 = r9.isPointInChildBounds(r3, r10, r0)
            if (r9 != 0) goto L_0x00ca
            androidx.customview.widget.ViewDragHelper r9 = r8.f
            if (r9 == 0) goto L_0x00ca
            int r9 = r8.x
            float r9 = (float) r9
            float r10 = r11.getY()
            float r9 = r9 - r10
            float r9 = java.lang.Math.abs(r9)
            androidx.customview.widget.ViewDragHelper r10 = r8.f
            int r10 = r10.getTouchSlop()
            float r10 = (float) r10
            int r9 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
            if (r9 <= 0) goto L_0x00ca
            return r2
        L_0x00ca:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v2, MotionEvent motionEvent) {
        if (!v2.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.e == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.f;
        if (viewDragHelper != null) {
            viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            b();
        }
        if (this.w == null) {
            this.w = VelocityTracker.obtain();
        }
        this.w.addMovement(motionEvent);
        if (actionMasked == 2 && !this.s && Math.abs(((float) this.x) - motionEvent.getY()) > ((float) this.f.getTouchSlop())) {
            this.f.captureChildView(v2, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        if (!this.s) {
            return true;
        }
        return false;
    }

    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v2, View view, View view2, int i2, int i3) {
        this.t = 0;
        this.u = false;
        if ((i2 & 2) != 0) {
            return true;
        }
        return false;
    }

    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v2, View view, int i2, int i3, int[] iArr, int i4) {
        if (i4 != 1 && view == ((View) this.i.get())) {
            int top = v2.getTop();
            int i5 = top - i3;
            if (i3 > 0) {
                if (i5 < c()) {
                    iArr[1] = top - c();
                    ViewCompat.offsetTopAndBottom(v2, -iArr[1]);
                    a(3);
                } else {
                    iArr[1] = i3;
                    ViewCompat.offsetTopAndBottom(v2, -i3);
                    a(1);
                }
            } else if (i3 < 0 && !view.canScrollVertically(-1)) {
                int i6 = this.c;
                if (i5 <= i6 || this.d) {
                    iArr[1] = i3;
                    ViewCompat.offsetTopAndBottom(v2, -i3);
                    a(1);
                } else {
                    iArr[1] = top - i6;
                    ViewCompat.offsetTopAndBottom(v2, -iArr[1]);
                    a(4);
                }
            }
            b(v2.getTop());
            this.t = i3;
            this.u = true;
        }
    }

    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v2, View view, int i2) {
        int i3;
        int i4;
        float f2;
        int i5 = 3;
        if (v2.getTop() == c()) {
            a(3);
            return;
        }
        if (view == this.i.get() && this.u) {
            if (this.t > 0) {
                i3 = c();
            } else {
                if (this.d) {
                    VelocityTracker velocityTracker = this.w;
                    if (velocityTracker == null) {
                        f2 = 0.0f;
                    } else {
                        velocityTracker.computeCurrentVelocity(1000, this.m);
                        f2 = this.w.getYVelocity(this.j);
                    }
                    if (a((View) v2, f2)) {
                        i3 = this.g;
                        i5 = 5;
                    }
                }
                if (this.t == 0) {
                    int top = v2.getTop();
                    if (!this.l) {
                        int i6 = this.f3837b;
                        if (top < i6) {
                            if (top < Math.abs(top - this.c)) {
                                i3 = 0;
                            } else {
                                i3 = this.f3837b;
                            }
                        } else if (Math.abs(top - i6) < Math.abs(top - this.c)) {
                            i3 = this.f3837b;
                        } else {
                            i4 = this.c;
                        }
                        i5 = 6;
                    } else if (Math.abs(top - this.f3836a) < Math.abs(top - this.c)) {
                        i3 = this.f3836a;
                    } else {
                        i4 = this.c;
                    }
                } else {
                    i4 = this.c;
                }
                i5 = 4;
            }
            if (this.f.smoothSlideViewTo(v2, v2.getLeft(), i3)) {
                a(2);
                ViewCompat.postOnAnimation(v2, new b(v2, i5));
            } else {
                a(i5);
            }
            this.u = false;
        }
    }

    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v2, View view, float f2, float f3) {
        return view == this.i.get() && (this.e != 3 || super.onNestedPreFling(coordinatorLayout, v2, view, f2, f3));
    }

    public boolean isFitToContents() {
        return this.l;
    }

    public void setFitToContents(boolean z2) {
        if (this.l != z2) {
            this.l = z2;
            if (this.h != null) {
                a();
            }
            a((!this.l || this.e != 6) ? this.e : 3);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0026  */
    /* JADX WARNING: Removed duplicated region for block: B:20:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setPeekHeight(int r4) {
        /*
            r3 = this;
            r0 = 1
            r1 = 0
            r2 = -1
            if (r4 != r2) goto L_0x000c
            boolean r4 = r3.o
            if (r4 != 0) goto L_0x0015
            r3.o = r0
            goto L_0x0024
        L_0x000c:
            boolean r2 = r3.o
            if (r2 != 0) goto L_0x0017
            int r2 = r3.n
            if (r2 == r4) goto L_0x0015
            goto L_0x0017
        L_0x0015:
            r0 = 0
            goto L_0x0024
        L_0x0017:
            r3.o = r1
            int r1 = java.lang.Math.max(r1, r4)
            r3.n = r1
            int r1 = r3.g
            int r1 = r1 - r4
            r3.c = r1
        L_0x0024:
            if (r0 == 0) goto L_0x003a
            int r4 = r3.e
            r0 = 4
            if (r4 != r0) goto L_0x003a
            java.lang.ref.WeakReference<V> r4 = r3.h
            if (r4 == 0) goto L_0x003a
            java.lang.Object r4 = r4.get()
            android.view.View r4 = (android.view.View) r4
            if (r4 == 0) goto L_0x003a
            r4.requestLayout()
        L_0x003a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.setPeekHeight(int):void");
    }

    public final int getPeekHeight() {
        if (this.o) {
            return -1;
        }
        return this.n;
    }

    public void setHideable(boolean z2) {
        this.d = z2;
    }

    public boolean isHideable() {
        return this.d;
    }

    public void setSkipCollapsed(boolean z2) {
        this.r = z2;
    }

    public boolean getSkipCollapsed() {
        return this.r;
    }

    public void setBottomSheetCallback(a aVar) {
        this.v = aVar;
    }

    public final void setState(final int i2) {
        if (i2 != this.e) {
            WeakReference<V> weakReference = this.h;
            if (weakReference == null) {
                if (i2 == 4 || i2 == 3 || i2 == 6 || (this.d && i2 == 5)) {
                    this.e = i2;
                }
                return;
            }
            final View view = (View) weakReference.get();
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent == null || !parent.isLayoutRequested() || !ViewCompat.isAttachedToWindow(view)) {
                    a(view, i2);
                } else {
                    view.post(new Runnable() {
                        public final void run() {
                            BottomSheetBehavior.this.a(view, i2);
                        }
                    });
                }
            }
        }
    }

    public final int getState() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2) {
        if (this.e != i2) {
            this.e = i2;
            if (i2 == 6 || i2 == 3) {
                a(true);
            } else if (i2 == 5 || i2 == 4) {
                a(false);
            }
            View view = (View) this.h.get();
            if (view != null) {
                a aVar = this.v;
                if (aVar != null) {
                    aVar.onStateChanged(view, i2);
                }
            }
        }
    }

    private void a() {
        if (this.l) {
            this.c = Math.max(this.g - this.q, this.f3836a);
        } else {
            this.c = this.g - this.q;
        }
    }

    private void b() {
        this.j = -1;
        VelocityTracker velocityTracker = this.w;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.w = null;
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean a(View view, float f2) {
        if (this.r) {
            return true;
        }
        if (view.getTop() >= this.c && Math.abs((((float) view.getTop()) + (f2 * 0.1f)) - ((float) this.c)) / ((float) this.n) > 0.5f) {
            return true;
        }
        return false;
    }

    private View a(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
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

    /* access modifiers changed from: private */
    public int c() {
        if (this.l) {
            return this.f3836a;
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final void a(View view, int i2) {
        int i3;
        if (i2 == 4) {
            i3 = this.c;
        } else if (i2 == 6) {
            int i4 = this.f3837b;
            if (this.l) {
                int i5 = this.f3836a;
                if (i4 <= i5) {
                    i3 = i5;
                    i2 = 3;
                }
            }
            i3 = i4;
        } else if (i2 == 3) {
            i3 = c();
        } else if (!this.d || i2 != 5) {
            throw new IllegalArgumentException("Illegal state argument: ".concat(String.valueOf(i2)));
        } else {
            i3 = this.g;
        }
        if (this.f.smoothSlideViewTo(view, view.getLeft(), i3)) {
            a(2);
            ViewCompat.postOnAnimation(view, new b(view, i2));
            return;
        }
        a(i2);
    }

    /* access modifiers changed from: package-private */
    public final void b(int i2) {
        View view = (View) this.h.get();
        if (view != null) {
            a aVar = this.v;
            if (aVar != null) {
                int i3 = this.c;
                if (i2 > i3) {
                    aVar.onSlide(view, ((float) (i3 - i2)) / ((float) (this.g - i3)));
                    return;
                }
                aVar.onSlide(view, ((float) (i3 - i2)) / ((float) (i3 - c())));
            }
        }
    }

    public static <V extends View> BottomSheetBehavior<V> from(V v2) {
        ViewGroup.LayoutParams layoutParams = v2.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
            if (behavior instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) behavior;
            }
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    private void a(boolean z2) {
        WeakReference<V> weakReference = this.h;
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
                    if (childAt != this.h.get()) {
                        if (!z2) {
                            Map<View, Integer> map = this.y;
                            if (map != null && map.containsKey(childAt)) {
                                ViewCompat.setImportantForAccessibility(childAt, this.y.get(childAt).intValue());
                            }
                        } else {
                            if (Build.VERSION.SDK_INT >= 16) {
                                this.y.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                            }
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    }
                }
                if (!z2) {
                    this.y = null;
                }
            }
        }
    }
}
