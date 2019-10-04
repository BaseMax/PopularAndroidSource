package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.OverScroller;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;

abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {

    /* renamed from: a  reason: collision with root package name */
    OverScroller f3789a;

    /* renamed from: b  reason: collision with root package name */
    private Runnable f3790b;
    private boolean c;
    private int d = -1;
    private int e;
    private int f = -1;
    private VelocityTracker g;

    class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final CoordinatorLayout f3792b;
        private final V c;

        a(CoordinatorLayout coordinatorLayout, V v) {
            this.f3792b = coordinatorLayout;
            this.c = v;
        }

        public final void run() {
            if (!(this.c == null || HeaderBehavior.this.f3789a == null)) {
                if (HeaderBehavior.this.f3789a.computeScrollOffset()) {
                    HeaderBehavior headerBehavior = HeaderBehavior.this;
                    headerBehavior.a_(this.f3792b, this.c, headerBehavior.f3789a.getCurrY());
                    ViewCompat.postOnAnimation(this.c, this);
                    return;
                }
                HeaderBehavior.this.a(this.f3792b, this.c);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(CoordinatorLayout coordinatorLayout, V v) {
    }

    /* access modifiers changed from: package-private */
    public boolean c(V v) {
        return false;
    }

    public HeaderBehavior() {
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002c, code lost:
        if (r0 != 3) goto L_0x0081;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout r5, V r6, android.view.MotionEvent r7) {
        /*
            r4 = this;
            int r0 = r4.f
            if (r0 >= 0) goto L_0x0012
            android.content.Context r0 = r5.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r4.f = r0
        L_0x0012:
            int r0 = r7.getAction()
            r1 = 2
            r2 = 1
            if (r0 != r1) goto L_0x001f
            boolean r0 = r4.c
            if (r0 == 0) goto L_0x001f
            return r2
        L_0x001f:
            int r0 = r7.getActionMasked()
            r3 = 0
            if (r0 == 0) goto L_0x005e
            r5 = -1
            if (r0 == r2) goto L_0x004f
            if (r0 == r1) goto L_0x002f
            r6 = 3
            if (r0 == r6) goto L_0x004f
            goto L_0x0081
        L_0x002f:
            int r6 = r4.d
            if (r6 == r5) goto L_0x0081
            int r6 = r7.findPointerIndex(r6)
            if (r6 == r5) goto L_0x0081
            float r5 = r7.getY(r6)
            int r5 = (int) r5
            int r6 = r4.e
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r0 = r4.f
            if (r6 <= r0) goto L_0x0081
            r4.c = r2
            r4.e = r5
            goto L_0x0081
        L_0x004f:
            r4.c = r3
            r4.d = r5
            android.view.VelocityTracker r5 = r4.g
            if (r5 == 0) goto L_0x0081
            r5.recycle()
            r5 = 0
            r4.g = r5
            goto L_0x0081
        L_0x005e:
            r4.c = r3
            float r0 = r7.getX()
            int r0 = (int) r0
            float r1 = r7.getY()
            int r1 = (int) r1
            boolean r2 = r4.c(r6)
            if (r2 == 0) goto L_0x0081
            boolean r5 = r5.isPointInChildBounds(r6, r0, r1)
            if (r5 == 0) goto L_0x0081
            r4.e = r1
            int r5 = r7.getPointerId(r3)
            r4.d = r5
            r4.b()
        L_0x0081:
            android.view.VelocityTracker r5 = r4.g
            if (r5 == 0) goto L_0x0088
            r5.addMovement(r7)
        L_0x0088:
            boolean r5 = r4.c
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r0 != 3) goto L_0x00f8;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout r20, V r21, android.view.MotionEvent r22) {
        /*
            r19 = this;
            r6 = r19
            r1 = r20
            r2 = r21
            r7 = r22
            int r0 = r6.f
            if (r0 >= 0) goto L_0x001a
            android.content.Context r0 = r20.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r6.f = r0
        L_0x001a:
            int r0 = r22.getActionMasked()
            r8 = 1
            r3 = 0
            if (r0 == 0) goto L_0x00d7
            r4 = 0
            r5 = -1
            if (r0 == r8) goto L_0x0068
            r9 = 2
            if (r0 == r9) goto L_0x002e
            r1 = 3
            if (r0 == r1) goto L_0x00c9
            goto L_0x00f8
        L_0x002e:
            int r0 = r6.d
            int r0 = r7.findPointerIndex(r0)
            if (r0 != r5) goto L_0x0037
            return r3
        L_0x0037:
            float r0 = r7.getY(r0)
            int r0 = (int) r0
            int r3 = r6.e
            int r3 = r3 - r0
            boolean r4 = r6.c
            if (r4 != 0) goto L_0x0052
            int r4 = java.lang.Math.abs(r3)
            int r5 = r6.f
            if (r4 <= r5) goto L_0x0052
            r6.c = r8
            if (r3 <= 0) goto L_0x0051
            int r3 = r3 - r5
            goto L_0x0052
        L_0x0051:
            int r3 = r3 + r5
        L_0x0052:
            boolean r4 = r6.c
            if (r4 == 0) goto L_0x00f8
            r6.e = r0
            int r4 = r6.b(r2)
            r5 = 0
            r0 = r19
            r1 = r20
            r2 = r21
            r0.b(r1, r2, r3, r4, r5)
            goto L_0x00f8
        L_0x0068:
            android.view.VelocityTracker r0 = r6.g
            if (r0 == 0) goto L_0x00c9
            r0.addMovement(r7)
            android.view.VelocityTracker r0 = r6.g
            r9 = 1000(0x3e8, float:1.401E-42)
            r0.computeCurrentVelocity(r9)
            android.view.VelocityTracker r0 = r6.g
            int r9 = r6.d
            float r0 = r0.getYVelocity(r9)
            int r9 = r6.a(r2)
            int r9 = -r9
            java.lang.Runnable r10 = r6.f3790b
            if (r10 == 0) goto L_0x008c
            r2.removeCallbacks(r10)
            r6.f3790b = r4
        L_0x008c:
            android.widget.OverScroller r10 = r6.f3789a
            if (r10 != 0) goto L_0x009b
            android.widget.OverScroller r10 = new android.widget.OverScroller
            android.content.Context r11 = r21.getContext()
            r10.<init>(r11)
            r6.f3789a = r10
        L_0x009b:
            android.widget.OverScroller r10 = r6.f3789a
            r11 = 0
            int r12 = r19.getTopAndBottomOffset()
            r13 = 0
            int r14 = java.lang.Math.round(r0)
            r15 = 0
            r16 = 0
            r18 = 0
            r17 = r9
            r10.fling(r11, r12, r13, r14, r15, r16, r17, r18)
            android.widget.OverScroller r0 = r6.f3789a
            boolean r0 = r0.computeScrollOffset()
            if (r0 == 0) goto L_0x00c6
            com.google.android.material.appbar.HeaderBehavior$a r0 = new com.google.android.material.appbar.HeaderBehavior$a
            r0.<init>(r1, r2)
            r6.f3790b = r0
            java.lang.Runnable r0 = r6.f3790b
            androidx.core.view.ViewCompat.postOnAnimation(r2, r0)
            goto L_0x00c9
        L_0x00c6:
            r19.a(r20, r21)
        L_0x00c9:
            r6.c = r3
            r6.d = r5
            android.view.VelocityTracker r0 = r6.g
            if (r0 == 0) goto L_0x00f8
            r0.recycle()
            r6.g = r4
            goto L_0x00f8
        L_0x00d7:
            float r0 = r22.getX()
            int r0 = (int) r0
            float r4 = r22.getY()
            int r4 = (int) r4
            boolean r0 = r1.isPointInChildBounds(r2, r0, r4)
            if (r0 == 0) goto L_0x0100
            boolean r0 = r6.c(r2)
            if (r0 == 0) goto L_0x0100
            r6.e = r4
            int r0 = r7.getPointerId(r3)
            r6.d = r0
            r19.b()
        L_0x00f8:
            android.view.VelocityTracker r0 = r6.g
            if (r0 == 0) goto L_0x00ff
            r0.addMovement(r7)
        L_0x00ff:
            return r8
        L_0x0100:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.onTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* access modifiers changed from: package-private */
    public final int a_(CoordinatorLayout coordinatorLayout, V v, int i) {
        return a(coordinatorLayout, v, i, Integer.MIN_VALUE, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    /* access modifiers changed from: package-private */
    public int a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int topAndBottomOffset = getTopAndBottomOffset();
        if (i2 != 0 && topAndBottomOffset >= i2 && topAndBottomOffset <= i3) {
            int clamp = MathUtils.clamp(i, i2, i3);
            if (topAndBottomOffset != clamp) {
                setTopAndBottomOffset(clamp);
                return topAndBottomOffset - clamp;
            }
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public int a() {
        return getTopAndBottomOffset();
    }

    /* access modifiers changed from: package-private */
    public final int b(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return a(coordinatorLayout, v, a() - i, i2, i3);
    }

    /* access modifiers changed from: package-private */
    public int b(V v) {
        return -v.getHeight();
    }

    /* access modifiers changed from: package-private */
    public int a(V v) {
        return v.getHeight();
    }

    private void b() {
        if (this.g == null) {
            this.g = VelocityTracker.obtain();
        }
    }
}
