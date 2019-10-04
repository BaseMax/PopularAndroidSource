package com.mapbox.android.b;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.core.view.GestureDetectorCompat;

public final class o extends b<b> {
    final b d = new b() {
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            return o.this.a(5) && ((b) o.this.c).onSingleTapUp(motionEvent);
        }

        public final void onLongPress(MotionEvent motionEvent) {
            if (o.this.a(6)) {
                ((b) o.this.c).onLongPress(motionEvent);
            }
        }

        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return o.this.a(0) && ((b) o.this.c).onScroll(motionEvent, motionEvent2, f, f2);
        }

        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return o.this.a(7) && ((b) o.this.c).onFling(motionEvent, motionEvent2, f, f2);
        }

        public final void onShowPress(MotionEvent motionEvent) {
            if (o.this.a(8)) {
                ((b) o.this.c).onShowPress(motionEvent);
            }
        }

        public final boolean onDown(MotionEvent motionEvent) {
            return o.this.a(9) && ((b) o.this.c).onDown(motionEvent);
        }

        public final boolean onDoubleTap(MotionEvent motionEvent) {
            return o.this.a(10) && ((b) o.this.c).onDoubleTap(motionEvent);
        }

        public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return o.this.a(11) && ((b) o.this.c).onDoubleTapEvent(motionEvent);
        }

        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return o.this.a(12) && ((b) o.this.c).onSingleTapConfirmed(motionEvent);
        }
    };
    private final GestureDetectorCompat e;

    public static class a implements b {
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return false;
        }

        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        public boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        public void onLongPress(MotionEvent motionEvent) {
        }

        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        public void onShowPress(MotionEvent motionEvent) {
        }

        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return false;
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    public interface b extends GestureDetector.OnDoubleTapListener, GestureDetector.OnGestureListener {
    }

    public o(Context context, a aVar) {
        super(context, aVar);
        this.e = new GestureDetectorCompat(context, this.d);
    }

    /* access modifiers changed from: protected */
    public final boolean b(MotionEvent motionEvent) {
        return this.e.onTouchEvent(motionEvent);
    }

    public final boolean isLongpressEnabled() {
        return this.e.isLongpressEnabled();
    }

    public final void setIsLongpressEnabled(boolean z) {
        this.e.setIsLongpressEnabled(z);
    }
}
