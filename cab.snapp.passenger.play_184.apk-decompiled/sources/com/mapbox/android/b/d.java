package com.mapbox.android.b;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class d extends j<a> {
    private static final Set<Integer> l;
    float d;
    float e;
    private PointF m;
    private boolean n;
    private float o;
    private final Map<Integer, c> p = new HashMap();

    public interface a {
        boolean onMove(d dVar, float f, float f2);

        boolean onMoveBegin(d dVar);

        void onMoveEnd(d dVar, float f, float f2);
    }

    public static class b implements a {
        public boolean onMove(d dVar, float f, float f2) {
            return false;
        }

        public boolean onMoveBegin(d dVar) {
            return true;
        }

        public void onMoveEnd(d dVar, float f, float f2) {
        }
    }

    /* access modifiers changed from: protected */
    public final int f() {
        return 1;
    }

    static {
        HashSet hashSet = new HashSet();
        l = hashSet;
        hashSet.add(13);
    }

    public d(Context context, a aVar) {
        super(context, aVar);
    }

    /* access modifiers changed from: protected */
    public final Set<Integer> b() {
        return l;
    }

    /* access modifiers changed from: protected */
    public final boolean b(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.p.clear();
            } else if (actionMasked == 3) {
                this.p.clear();
            } else if (actionMasked != 5) {
                if (actionMasked == 6) {
                    this.n = true;
                    this.p.remove(Integer.valueOf(motionEvent.getPointerId(motionEvent.getActionIndex())));
                }
            }
            return super.b(motionEvent);
        }
        this.n = true;
        this.p.put(Integer.valueOf(motionEvent.getPointerId(motionEvent.getActionIndex())), new c(motionEvent.getX(motionEvent.getActionIndex()), motionEvent.getY(motionEvent.getActionIndex())));
        return super.b(motionEvent);
    }

    /* access modifiers changed from: protected */
    public final boolean c() {
        super.c();
        for (Integer intValue : this.f) {
            int intValue2 = intValue.intValue();
            this.p.get(Integer.valueOf(intValue2)).addNewPosition(getCurrentEvent().getX(getCurrentEvent().findPointerIndex(intValue2)), getCurrentEvent().getY(getCurrentEvent().findPointerIndex(intValue2)));
        }
        if (isInProgress()) {
            PointF focalPoint = getFocalPoint();
            this.d = this.m.x - focalPoint.x;
            this.e = this.m.y - focalPoint.y;
            this.m = focalPoint;
            if (!this.n) {
                return ((a) this.c).onMove(this, this.d, this.e);
            }
            this.n = false;
            return ((a) this.c).onMove(this, 0.0f, 0.0f);
        } else if (!a(13) || !((a) this.c).onMoveBegin(this)) {
            return false;
        } else {
            h();
            this.m = getFocalPoint();
            this.n = false;
            return true;
        }
    }

    private boolean i() {
        for (c next : this.p.values()) {
            if (Math.abs(next.getDistanceXSinceStart()) < this.o) {
                if (Math.abs(next.getDistanceYSinceStart()) >= this.o) {
                }
            }
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public final boolean a(int i) {
        return super.a(i) && i();
    }

    /* access modifiers changed from: protected */
    public final void d() {
        super.d();
    }

    /* access modifiers changed from: protected */
    public final void e() {
        super.e();
        ((a) this.c).onMoveEnd(this, this.j, this.k);
    }

    public final float getMoveThreshold() {
        return this.o;
    }

    public final void setMoveThreshold(float f) {
        this.o = f;
    }

    public final void setMoveThresholdResource(int i) {
        setMoveThreshold(this.f4899a.getResources().getDimension(i));
    }

    public final float getLastDistanceX() {
        return this.d;
    }

    public final float getLastDistanceY() {
        return this.e;
    }

    public final c getMoveObject(int i) {
        if (!isInProgress() || i < 0 || i >= getPointersCount()) {
            return null;
        }
        return this.p.get(this.f.get(i));
    }
}
