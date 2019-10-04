package com.mapbox.android.b;

import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import com.mapbox.android.b.d;
import com.mapbox.android.b.g;
import com.mapbox.android.b.k;
import com.mapbox.android.b.l;
import com.mapbox.android.b.m;
import com.mapbox.android.b.n;
import com.mapbox.android.b.o;
import com.mapbox.android.b.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

public class a {
    public static final int GESTURE_TYPE_DOUBLE_TAP = 10;
    public static final int GESTURE_TYPE_DOUBLE_TAP_EVENT = 11;
    public static final int GESTURE_TYPE_DOWN = 9;
    public static final int GESTURE_TYPE_FLING = 7;
    public static final int GESTURE_TYPE_LONG_PRESS = 6;
    public static final int GESTURE_TYPE_MOVE = 13;
    public static final int GESTURE_TYPE_MULTI_FINGER_TAP = 4;
    public static final int GESTURE_TYPE_QUICK_SCALE = 15;
    public static final int GESTURE_TYPE_ROTATE = 2;
    public static final int GESTURE_TYPE_SCALE = 1;
    public static final int GESTURE_TYPE_SCROLL = 0;
    public static final int GESTURE_TYPE_SHOVE = 3;
    public static final int GESTURE_TYPE_SHOW_PRESS = 8;
    public static final int GESTURE_TYPE_SIDEWAYS_SHOVE = 14;
    public static final int GESTURE_TYPE_SINGLE_TAP_CONFIRMED = 12;
    public static final int GESTURE_TYPE_SINGLE_TAP_UP = 5;
    private final List<b> detectors;
    private final d moveGestureDetector;
    private final g multiFingerTapGestureDetector;
    private final List<Set<Integer>> mutuallyExclusiveGestures;
    private final l rotateGestureDetector;
    private final m shoveGestureDetector;
    private final n sidewaysShoveGestureDetector;
    private final o standardGestureDetector;
    private final p standardScaleGestureDetector;

    public a(Context context) {
        this(context, true);
    }

    public a(Context context, boolean z) {
        this(context, new ArrayList(), z);
    }

    @SafeVarargs
    public a(Context context, Set<Integer>... setArr) {
        this(context, Arrays.asList(setArr), true);
    }

    public a(Context context, List<Set<Integer>> list, boolean z) {
        this.mutuallyExclusiveGestures = new ArrayList();
        this.detectors = new ArrayList();
        this.mutuallyExclusiveGestures.addAll(list);
        this.rotateGestureDetector = new l(context, this);
        this.standardScaleGestureDetector = new p(context, this);
        this.shoveGestureDetector = new m(context, this);
        this.sidewaysShoveGestureDetector = new n(context, this);
        this.multiFingerTapGestureDetector = new g(context, this);
        this.moveGestureDetector = new d(context, this);
        this.standardGestureDetector = new o(context, this);
        this.detectors.add(this.rotateGestureDetector);
        this.detectors.add(this.standardScaleGestureDetector);
        this.detectors.add(this.shoveGestureDetector);
        this.detectors.add(this.sidewaysShoveGestureDetector);
        this.detectors.add(this.multiFingerTapGestureDetector);
        this.detectors.add(this.moveGestureDetector);
        this.detectors.add(this.standardGestureDetector);
        if (z) {
            initDefaultThresholds();
        }
    }

    private void initDefaultThresholds() {
        for (b next : this.detectors) {
            if (next instanceof f) {
                if (Build.VERSION.SDK_INT < 24) {
                    ((f) next).setSpanThresholdResource(k.a.mapbox_internalMinSpan23);
                } else {
                    ((f) next).setSpanThresholdResource(k.a.mapbox_internalMinSpan24);
                }
            }
            if (next instanceof p) {
                ((p) next).setSpanSinceStartThresholdResource(k.a.mapbox_defaultScaleSpanSinceStartThreshold);
            }
            if (next instanceof m) {
                m mVar = (m) next;
                mVar.setPixelDeltaThresholdResource(k.a.mapbox_defaultShovePixelThreshold);
                mVar.setMaxShoveAngle(20.0f);
            }
            if (next instanceof n) {
                n nVar = (n) next;
                nVar.setPixelDeltaThresholdResource(k.a.mapbox_defaultShovePixelThreshold);
                nVar.setMaxShoveAngle(20.0f);
            }
            if (next instanceof g) {
                g gVar = (g) next;
                gVar.setMultiFingerTapMovementThresholdResource(k.a.mapbox_defaultMultiTapMovementThreshold);
                gVar.setMultiFingerTapTimeThreshold(150);
            }
            if (next instanceof l) {
                ((l) next).setAngleThreshold(15.3f);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        for (b a2 : this.detectors) {
            if (a2.a(motionEvent)) {
                z = true;
            }
        }
        return z;
    }

    public void setStandardGestureListener(o.b bVar) {
        this.standardGestureDetector.a(bVar);
    }

    public void removeStandardGestureListener() {
        this.standardGestureDetector.a();
    }

    public void setStandardScaleGestureListener(p.b bVar) {
        this.standardScaleGestureDetector.a(bVar);
    }

    public void removeStandardScaleGestureListener() {
        this.standardScaleGestureDetector.a();
    }

    public void setRotateGestureListener(l.a aVar) {
        this.rotateGestureDetector.a(aVar);
    }

    public void removeRotateGestureListener() {
        this.rotateGestureDetector.a();
    }

    public void setShoveGestureListener(m.a aVar) {
        this.shoveGestureDetector.a(aVar);
    }

    public void removeShoveGestureListener() {
        this.shoveGestureDetector.a();
    }

    public void setMultiFingerTapGestureListener(g.a aVar) {
        this.multiFingerTapGestureDetector.a(aVar);
    }

    public void removeMultiFingerTapGestureListener() {
        this.multiFingerTapGestureDetector.a();
    }

    public void setMoveGestureListener(d.a aVar) {
        this.moveGestureDetector.a(aVar);
    }

    public void removeMoveGestureListener() {
        this.moveGestureDetector.a();
    }

    public void setSidewaysShoveGestureListener(n.a aVar) {
        this.sidewaysShoveGestureDetector.a(aVar);
    }

    public void removeSidewaysShoveGestureListener() {
        this.sidewaysShoveGestureDetector.a();
    }

    public List<b> getDetectors() {
        return this.detectors;
    }

    public o getStandardGestureDetector() {
        return this.standardGestureDetector;
    }

    public p getStandardScaleGestureDetector() {
        return this.standardScaleGestureDetector;
    }

    public l getRotateGestureDetector() {
        return this.rotateGestureDetector;
    }

    public m getShoveGestureDetector() {
        return this.shoveGestureDetector;
    }

    public g getMultiFingerTapGestureDetector() {
        return this.multiFingerTapGestureDetector;
    }

    public d getMoveGestureDetector() {
        return this.moveGestureDetector;
    }

    public n getSidewaysShoveGestureDetector() {
        return this.sidewaysShoveGestureDetector;
    }

    @SafeVarargs
    public final void setMutuallyExclusiveGestures(Set<Integer>... setArr) {
        setMutuallyExclusiveGestures((List<Set<Integer>>) Arrays.asList(setArr));
    }

    public void setMutuallyExclusiveGestures(List<Set<Integer>> list) {
        this.mutuallyExclusiveGestures.clear();
        this.mutuallyExclusiveGestures.addAll(list);
    }

    public List<Set<Integer>> getMutuallyExclusiveGestures() {
        return this.mutuallyExclusiveGestures;
    }
}
