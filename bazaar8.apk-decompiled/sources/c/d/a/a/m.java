package c.d.a.a;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* compiled from: PhotoViewAttacher */
class m extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ p f7201a;

    public m(p pVar) {
        this.f7201a = pVar;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        if (this.f7201a.B == null || this.f7201a.l() > p.f7206c || motionEvent.getPointerCount() > p.f7208e || motionEvent2.getPointerCount() > p.f7208e) {
            return false;
        }
        return this.f7201a.B.onFling(motionEvent, motionEvent2, f2, f3);
    }

    public void onLongPress(MotionEvent motionEvent) {
        if (this.f7201a.z != null) {
            this.f7201a.z.onLongClick(this.f7201a.m);
        }
    }
}
