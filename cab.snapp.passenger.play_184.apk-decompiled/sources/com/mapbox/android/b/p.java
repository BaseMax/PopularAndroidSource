package com.mapbox.android.b;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.core.view.GestureDetectorCompat;
import java.util.HashSet;
import java.util.Set;

public final class p extends j<b> {
    private static final Set<Integer> d;
    private final GestureDetectorCompat e;
    /* access modifiers changed from: private */
    public boolean l;
    /* access modifiers changed from: private */
    public PointF m;
    private float n;
    private float o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private float u;
    private float v;
    private float w;
    private float x;
    private boolean y;
    private float z;

    public static class a implements b {
        public boolean onScale(p pVar) {
            return false;
        }

        public boolean onScaleBegin(p pVar) {
            return true;
        }

        public void onScaleEnd(p pVar, float f, float f2) {
        }
    }

    public interface b {
        boolean onScale(p pVar);

        boolean onScaleBegin(p pVar);

        void onScaleEnd(p pVar, float f, float f2);
    }

    static {
        HashSet hashSet = new HashSet();
        d = hashSet;
        hashSet.add(1);
        d.add(15);
    }

    public p(Context context, a aVar) {
        super(context, aVar);
        this.e = new GestureDetectorCompat(context, new GestureDetector.SimpleOnGestureListener() {
            public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() == 0) {
                    boolean unused = p.this.l = true;
                    PointF unused2 = p.this.m = new PointF(motionEvent.getX(), motionEvent.getY());
                }
                return true;
            }
        });
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0107  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0109  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0112  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0125  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x013f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean c() {
        /*
            r8 = this;
            super.c()
            boolean r0 = r8.isInProgress()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x0019
            boolean r0 = r8.l
            if (r0 == 0) goto L_0x0019
            int r0 = r8.getPointersCount()
            if (r0 <= r2) goto L_0x0019
            r8.e()
            return r1
        L_0x0019:
            boolean r0 = r8.l
            if (r0 == 0) goto L_0x0020
            android.graphics.PointF r0 = r8.m
            goto L_0x0024
        L_0x0020:
            android.graphics.PointF r0 = r8.getFocalPoint()
        L_0x0024:
            r3 = 0
            r8.r = r3
            r8.s = r3
            r4 = 0
        L_0x002a:
            int r5 = r8.getPointersCount()
            if (r4 >= r5) goto L_0x005b
            float r5 = r8.r
            android.view.MotionEvent r6 = r8.getCurrentEvent()
            float r6 = r6.getX(r4)
            float r7 = r0.x
            float r6 = r6 - r7
            float r6 = java.lang.Math.abs(r6)
            float r5 = r5 + r6
            r8.r = r5
            float r5 = r8.s
            android.view.MotionEvent r6 = r8.getCurrentEvent()
            float r6 = r6.getY(r4)
            float r7 = r0.y
            float r6 = r6 - r7
            float r6 = java.lang.Math.abs(r6)
            float r5 = r5 + r6
            r8.s = r5
            int r4 = r4 + 1
            goto L_0x002a
        L_0x005b:
            float r0 = r8.r
            r4 = 1073741824(0x40000000, float:2.0)
            float r0 = r0 * r4
            r8.r = r0
            float r0 = r8.s
            float r0 = r0 * r4
            r8.s = r0
            boolean r0 = r8.l
            if (r0 == 0) goto L_0x0072
            float r0 = r8.s
            r8.q = r0
            goto L_0x007f
        L_0x0072:
            float r0 = r8.r
            double r4 = (double) r0
            float r0 = r8.s
            double r6 = (double) r0
            double r4 = java.lang.Math.hypot(r4, r6)
            float r0 = (float) r4
            r8.q = r0
        L_0x007f:
            float r0 = r8.n
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 != 0) goto L_0x0091
            float r0 = r8.q
            r8.n = r0
            float r0 = r8.r
            r8.o = r0
            float r0 = r8.s
            r8.p = r0
        L_0x0091:
            float r0 = r8.n
            float r4 = r8.q
            float r0 = r0 - r4
            float r0 = java.lang.Math.abs(r0)
            r8.w = r0
            boolean r0 = r8.l
            r4 = 1065353216(0x3f800000, float:1.0)
            if (r0 == 0) goto L_0x00f2
            android.view.MotionEvent r0 = r8.getCurrentEvent()
            float r0 = r0.getY()
            android.graphics.PointF r5 = r8.m
            float r5 = r5.y
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 >= 0) goto L_0x00ba
            float r0 = r8.q
            float r5 = r8.t
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 < 0) goto L_0x00d2
        L_0x00ba:
            android.view.MotionEvent r0 = r8.getCurrentEvent()
            float r0 = r0.getY()
            android.graphics.PointF r5 = r8.m
            float r5 = r5.y
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 <= 0) goto L_0x00d4
            float r0 = r8.q
            float r5 = r8.t
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 <= 0) goto L_0x00d4
        L_0x00d2:
            r0 = 1
            goto L_0x00d5
        L_0x00d4:
            r0 = 0
        L_0x00d5:
            float r5 = r8.q
            float r6 = r8.t
            float r5 = r5 / r6
            float r5 = r4 - r5
            float r5 = java.lang.Math.abs(r5)
            r6 = 1056964608(0x3f000000, float:0.5)
            float r5 = r5 * r6
            float r6 = r8.t
            int r6 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r6 <= 0) goto L_0x00fd
            if (r0 == 0) goto L_0x00ef
            float r0 = r5 + r4
            goto L_0x00ff
        L_0x00ef:
            float r0 = r4 - r5
            goto L_0x00ff
        L_0x00f2:
            float r0 = r8.t
            int r5 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r5 <= 0) goto L_0x00fd
            float r5 = r8.q
            float r0 = r5 / r0
            goto L_0x00ff
        L_0x00fd:
            r0 = 1065353216(0x3f800000, float:1.0)
        L_0x00ff:
            r8.z = r0
            float r0 = r8.z
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 >= 0) goto L_0x0109
            r0 = 1
            goto L_0x010a
        L_0x0109:
            r0 = 0
        L_0x010a:
            r8.y = r0
            boolean r0 = r8.isInProgress()
            if (r0 == 0) goto L_0x0121
            float r0 = r8.q
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto L_0x0121
            java.lang.Object r0 = r8.c
            com.mapbox.android.b.p$b r0 = (com.mapbox.android.b.p.b) r0
            boolean r1 = r0.onScale(r8)
            goto L_0x0142
        L_0x0121:
            boolean r0 = r8.l
            if (r0 == 0) goto L_0x0127
            r2 = 15
        L_0x0127:
            boolean r0 = r8.a(r2)
            if (r0 == 0) goto L_0x0142
            float r0 = r8.w
            float r2 = r8.x
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L_0x0142
            java.lang.Object r0 = r8.c
            com.mapbox.android.b.p$b r0 = (com.mapbox.android.b.p.b) r0
            boolean r1 = r0.onScaleBegin(r8)
            if (r1 == 0) goto L_0x0142
            r8.h()
        L_0x0142:
            float r0 = r8.q
            r8.t = r0
            float r0 = r8.r
            r8.u = r0
            float r0 = r8.s
            r8.v = r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.android.b.p.c():boolean");
    }

    /* access modifiers changed from: protected */
    public final void e() {
        super.e();
        ((b) this.c).onScaleEnd(this, this.j, this.k);
        this.l = false;
    }

    /* access modifiers changed from: protected */
    public final void d() {
        super.d();
        this.n = 0.0f;
        this.w = 0.0f;
        this.q = 0.0f;
        this.t = 0.0f;
        this.z = 1.0f;
    }

    /* access modifiers changed from: protected */
    public final boolean b(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.l) {
            if (actionMasked == 5 || actionMasked == 3) {
                if (isInProgress()) {
                    interrupt();
                } else {
                    this.l = false;
                }
            } else if (!isInProgress() && actionMasked == 1) {
                this.l = false;
            }
        }
        return this.e.onTouchEvent(motionEvent) | super.b(motionEvent);
    }

    /* access modifiers changed from: protected */
    public final int f() {
        if (!isInProgress() || this.l) {
            return 1;
        }
        return 2;
    }

    /* access modifiers changed from: protected */
    public final boolean g() {
        return super.g() || (!this.l && getPointersCount() < 2);
    }

    /* access modifiers changed from: protected */
    public final Set<Integer> b() {
        return d;
    }

    public final boolean isScalingOut() {
        return this.y;
    }

    public final float getSpanSinceStartThreshold() {
        return this.x;
    }

    public final void setSpanSinceStartThreshold(float f) {
        this.x = f;
    }

    public final void setSpanSinceStartThresholdResource(int i) {
        setSpanSinceStartThreshold(this.f4899a.getResources().getDimension(i));
    }

    public final float getScaleFactor() {
        return this.z;
    }

    public final float getStartSpan() {
        return this.n;
    }

    public final float getStartSpanX() {
        return this.o;
    }

    public final float getStartSpanY() {
        return this.p;
    }

    public final float getCurrentSpan() {
        return this.q;
    }

    public final float getCurrentSpanX() {
        return this.r;
    }

    public final float getCurrentSpanY() {
        return this.s;
    }

    public final float getPreviousSpan() {
        return this.t;
    }

    public final float getPreviousSpanX() {
        return this.u;
    }

    public final float getPreviousSpanY() {
        return this.v;
    }
}
