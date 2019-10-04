package c.c.a.n.c.c;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* compiled from: XScrollDetector.kt */
public final class w extends GestureDetector.SimpleOnGestureListener {
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        return ((double) (Math.abs(f3) / Math.abs(f2))) > 1.02d;
    }
}
