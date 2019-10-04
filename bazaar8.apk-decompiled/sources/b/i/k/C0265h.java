package b.i.k;

import android.view.MotionEvent;

/* renamed from: b.i.k.h  reason: case insensitive filesystem */
/* compiled from: MotionEventCompat */
public final class C0265h {
    @Deprecated
    public static int a(MotionEvent motionEvent) {
        return motionEvent.getActionIndex();
    }

    @Deprecated
    public static int b(MotionEvent motionEvent, int i2) {
        return motionEvent.getPointerId(i2);
    }

    @Deprecated
    public static float c(MotionEvent motionEvent, int i2) {
        return motionEvent.getX(i2);
    }

    public static boolean d(MotionEvent motionEvent, int i2) {
        return (motionEvent.getSource() & i2) == i2;
    }

    @Deprecated
    public static int a(MotionEvent motionEvent, int i2) {
        return motionEvent.findPointerIndex(i2);
    }
}
