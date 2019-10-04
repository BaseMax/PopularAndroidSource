package com.mapbox.android.b;

import android.content.Context;
import android.graphics.PointF;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewConfiguration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public abstract class f<L> extends b<L> {
    private final float d;
    private float e;
    final List<Integer> f = new ArrayList();
    final HashMap<i, e> g = new HashMap<>();
    private final h h = new h();
    private PointF i = new PointF();
    private DisplayMetrics j;

    /* access modifiers changed from: protected */
    public boolean c() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void d() {
    }

    /* access modifiers changed from: protected */
    public int f() {
        return 2;
    }

    public f(Context context, a aVar) {
        super(context, aVar);
        this.d = (float) ViewConfiguration.get(context).getScaledEdgeSlop();
        b();
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x007f, code lost:
        if (r3 != false) goto L_0x0084;
     */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0087  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x0106  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0108  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x010b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean b(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            if (r2 != 0) goto L_0x000d
            r17.b()
        L_0x000d:
            int r3 = r18.getPointerCount()
            java.util.List<java.lang.Integer> r4 = r0.f
            int r4 = r4.size()
            r5 = 8
            r6 = 0
            r8 = 255(0xff, double:1.26E-321)
            r10 = 1
            if (r4 != 0) goto L_0x0022
            r3 = r6
            goto L_0x003f
        L_0x0022:
            int r11 = r3 - r4
            int r11 = java.lang.Math.abs(r11)
            if (r11 <= r10) goto L_0x002c
        L_0x002a:
            r3 = r8
            goto L_0x003f
        L_0x002c:
            if (r3 <= r4) goto L_0x0031
            r3 = 5
            goto L_0x003f
        L_0x0031:
            if (r3 >= r4) goto L_0x0034
            goto L_0x002a
        L_0x0034:
            if (r3 != r10) goto L_0x0039
            r3 = 1
            goto L_0x003b
        L_0x0039:
            r3 = 6
        L_0x003b:
            long r3 = r3 << r5
            r11 = 2
            long r3 = r3 + r11
        L_0x003f:
            long r11 = (long) r2
            r13 = 0
            int r14 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
            if (r14 != 0) goto L_0x0047
        L_0x0045:
            r3 = 0
            goto L_0x0055
        L_0x0047:
            int r14 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r14 == 0) goto L_0x0054
            long r14 = r3 & r8
            int r16 = (r11 > r14 ? 1 : (r11 == r14 ? 0 : -1))
            if (r16 != 0) goto L_0x0052
            goto L_0x0045
        L_0x0052:
            long r3 = r3 >> r5
            goto L_0x0047
        L_0x0054:
            r3 = 1
        L_0x0055:
            r4 = 2
            if (r3 != 0) goto L_0x0084
            if (r2 != r4) goto L_0x0082
            java.util.List<java.lang.Integer> r3 = r0.f
            java.util.Iterator r3 = r3.iterator()
        L_0x0060:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto L_0x007e
            java.lang.Object r5 = r3.next()
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            int r5 = r1.findPointerIndex(r5)
            r6 = -1
            if (r5 == r6) goto L_0x0079
            r5 = 1
            goto L_0x007a
        L_0x0079:
            r5 = 0
        L_0x007a:
            if (r5 != 0) goto L_0x0060
            r3 = 1
            goto L_0x007f
        L_0x007e:
            r3 = 0
        L_0x007f:
            if (r3 == 0) goto L_0x0082
            goto L_0x0084
        L_0x0082:
            r3 = 0
            goto L_0x0085
        L_0x0084:
            r3 = 1
        L_0x0085:
            if (r3 == 0) goto L_0x00a1
            boolean r5 = r0 instanceof com.mapbox.android.b.j
            if (r5 == 0) goto L_0x0097
            r5 = r0
            com.mapbox.android.b.j r5 = (com.mapbox.android.b.j) r5
            boolean r6 = r5.isInProgress()
            if (r6 == 0) goto L_0x0097
            r5.e()
        L_0x0097:
            java.util.List<java.lang.Integer> r5 = r0.f
            r5.clear()
            java.util.HashMap<com.mapbox.android.b.i, com.mapbox.android.b.e> r5 = r0.g
            r5.clear()
        L_0x00a1:
            if (r3 == 0) goto L_0x00a5
            if (r2 != 0) goto L_0x00d7
        L_0x00a5:
            int r5 = r18.getActionMasked()
            if (r5 == 0) goto L_0x00c6
            r6 = 5
            if (r5 != r6) goto L_0x00af
            goto L_0x00c6
        L_0x00af:
            if (r5 == r10) goto L_0x00b4
            r6 = 6
            if (r5 != r6) goto L_0x00d7
        L_0x00b4:
            java.util.List<java.lang.Integer> r5 = r0.f
            int r6 = r18.getActionIndex()
            int r6 = r1.getPointerId(r6)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r5.remove(r6)
            goto L_0x00d7
        L_0x00c6:
            java.util.List<java.lang.Integer> r5 = r0.f
            int r6 = r18.getActionIndex()
            int r6 = r1.getPointerId(r6)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r5.add(r6)
        L_0x00d7:
            android.graphics.PointF r1 = com.mapbox.android.b.q.determineFocalPoint(r18)
            r0.i = r1
            if (r3 == 0) goto L_0x00e0
            return r13
        L_0x00e0:
            if (r2 != r4) goto L_0x01ea
            java.util.List<java.lang.Integer> r1 = r0.f
            int r1 = r1.size()
            int r2 = r17.f()
            if (r1 < r2) goto L_0x01ea
            android.view.MotionEvent r1 = r17.getCurrentEvent()
            float r1 = r1.getPressure()
            android.view.MotionEvent r2 = r17.getPreviousEvent()
            float r2 = r2.getPressure()
            float r1 = r1 / r2
            r2 = 1059816735(0x3f2b851f, float:0.67)
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 <= 0) goto L_0x0108
            r1 = 1
            goto L_0x0109
        L_0x0108:
            r1 = 0
        L_0x0109:
            if (r1 == 0) goto L_0x01ea
            java.util.HashMap<com.mapbox.android.b.i, com.mapbox.android.b.e> r1 = r0.g
            r1.clear()
            r1 = 0
        L_0x0111:
            java.util.List<java.lang.Integer> r2 = r0.f
            int r2 = r2.size()
            int r2 = r2 - r10
            if (r1 >= r2) goto L_0x01df
            int r2 = r1 + 1
            r3 = r2
        L_0x011d:
            java.util.List<java.lang.Integer> r4 = r0.f
            int r4 = r4.size()
            if (r3 >= r4) goto L_0x01dc
            java.util.List<java.lang.Integer> r4 = r0.f
            java.lang.Object r4 = r4.get(r1)
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            java.util.List<java.lang.Integer> r5 = r0.f
            java.lang.Object r5 = r5.get(r3)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            android.view.MotionEvent r6 = r17.getPreviousEvent()
            android.view.MotionEvent r7 = r17.getPreviousEvent()
            int r7 = r7.findPointerIndex(r4)
            float r6 = r6.getX(r7)
            android.view.MotionEvent r7 = r17.getPreviousEvent()
            android.view.MotionEvent r8 = r17.getPreviousEvent()
            int r8 = r8.findPointerIndex(r4)
            float r7 = r7.getY(r8)
            android.view.MotionEvent r8 = r17.getPreviousEvent()
            android.view.MotionEvent r9 = r17.getPreviousEvent()
            int r9 = r9.findPointerIndex(r5)
            float r8 = r8.getX(r9)
            android.view.MotionEvent r9 = r17.getPreviousEvent()
            android.view.MotionEvent r11 = r17.getPreviousEvent()
            int r11 = r11.findPointerIndex(r5)
            float r9 = r9.getY(r11)
            float r8 = r8 - r6
            float r9 = r9 - r7
            android.view.MotionEvent r6 = r17.getCurrentEvent()
            android.view.MotionEvent r7 = r17.getCurrentEvent()
            int r7 = r7.findPointerIndex(r4)
            float r6 = r6.getX(r7)
            android.view.MotionEvent r7 = r17.getCurrentEvent()
            android.view.MotionEvent r11 = r17.getCurrentEvent()
            int r11 = r11.findPointerIndex(r4)
            float r7 = r7.getY(r11)
            android.view.MotionEvent r11 = r17.getCurrentEvent()
            android.view.MotionEvent r12 = r17.getCurrentEvent()
            int r12 = r12.findPointerIndex(r5)
            float r11 = r11.getX(r12)
            android.view.MotionEvent r12 = r17.getCurrentEvent()
            android.view.MotionEvent r14 = r17.getCurrentEvent()
            int r14 = r14.findPointerIndex(r5)
            float r12 = r12.getY(r14)
            float r11 = r11 - r6
            float r12 = r12 - r7
            java.util.HashMap<com.mapbox.android.b.i, com.mapbox.android.b.e> r6 = r0.g
            com.mapbox.android.b.i r7 = new com.mapbox.android.b.i
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r7.<init>(r4, r5)
            com.mapbox.android.b.e r4 = new com.mapbox.android.b.e
            r4.<init>(r8, r9, r11, r12)
            r6.put(r7, r4)
            int r3 = r3 + 1
            goto L_0x011d
        L_0x01dc:
            r1 = r2
            goto L_0x0111
        L_0x01df:
            boolean r1 = r17.g()
            if (r1 != 0) goto L_0x01ea
            boolean r1 = r17.c()
            return r1
        L_0x01ea:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.android.b.f.b(android.view.MotionEvent):boolean");
    }

    private void b() {
        if (this.f4900b != null) {
            this.j = new DisplayMetrics();
            Display defaultDisplay = this.f4900b.getDefaultDisplay();
            if (Build.VERSION.SDK_INT >= 17) {
                defaultDisplay.getRealMetrics(this.j);
            } else {
                defaultDisplay.getMetrics(this.j);
            }
        } else {
            this.j = this.f4899a.getResources().getDisplayMetrics();
        }
    }

    /* access modifiers changed from: protected */
    public boolean g() {
        boolean z;
        float f2 = ((float) this.j.widthPixels) - this.d;
        float f3 = this.d;
        float f4 = ((float) this.j.heightPixels) - f3;
        Iterator<Integer> it = this.f.iterator();
        do {
            z = false;
            if (it.hasNext()) {
                int findPointerIndex = getCurrentEvent().findPointerIndex(it.next().intValue());
                float rawX = q.getRawX(getCurrentEvent(), findPointerIndex);
                float rawY = q.getRawY(getCurrentEvent(), findPointerIndex);
                if (rawX < f3 || rawY < f3 || rawX > f2 || rawY > f4) {
                    z = true;
                    continue;
                }
            } else {
                for (e currFingersDiffXY : this.g.values()) {
                    if (currFingersDiffXY.getCurrFingersDiffXY() < this.e) {
                        return true;
                    }
                }
                return false;
            }
        } while (!z);
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean a(int i2) {
        return super.a(i2) && !g();
    }

    public float getCurrentSpan(int i2, int i3) {
        if (a(i2, i3)) {
            return this.g.get(new i(this.f.get(i2), this.f.get(i3))).getCurrFingersDiffXY();
        }
        throw new NoSuchElementException("There is no such pair of pointers!");
    }

    public float getPreviousSpan(int i2, int i3) {
        if (a(i2, i3)) {
            return this.g.get(new i(this.f.get(i2), this.f.get(i3))).getPrevFingersDiffXY();
        }
        throw new NoSuchElementException("There is no such pair of pointers!");
    }

    public float getCurrentSpanX(int i2, int i3) {
        if (a(i2, i3)) {
            return Math.abs(this.g.get(new i(this.f.get(i2), this.f.get(i3))).getCurrFingersDiffX());
        }
        throw new NoSuchElementException("There is no such pair of pointers!");
    }

    public float getCurrentSpanY(int i2, int i3) {
        if (a(i2, i3)) {
            return Math.abs(this.g.get(new i(this.f.get(i2), this.f.get(i3))).getCurrFingersDiffY());
        }
        throw new NoSuchElementException("There is no such pair of pointers!");
    }

    public float getPreviousSpanX(int i2, int i3) {
        if (a(i2, i3)) {
            return Math.abs(this.g.get(new i(this.f.get(i2), this.f.get(i3))).getPrevFingersDiffX());
        }
        throw new NoSuchElementException("There is no such pair of pointers!");
    }

    public float getPreviousSpanY(int i2, int i3) {
        if (a(i2, i3)) {
            return Math.abs(this.g.get(new i(this.f.get(i2), this.f.get(i3))).getPrevFingersDiffY());
        }
        throw new NoSuchElementException("There is no such pair of pointers!");
    }

    private boolean a(int i2, int i3) {
        return i2 != i3 && i2 >= 0 && i3 >= 0 && i2 < getPointersCount() && i3 < getPointersCount();
    }

    public int getPointersCount() {
        return this.f.size();
    }

    public PointF getFocalPoint() {
        return this.i;
    }

    public float getSpanThreshold() {
        return this.e;
    }

    public void setSpanThreshold(float f2) {
        this.e = f2;
    }

    public void setSpanThresholdResource(int i2) {
        setSpanThreshold(this.f4899a.getResources().getDimension(i2));
    }
}
