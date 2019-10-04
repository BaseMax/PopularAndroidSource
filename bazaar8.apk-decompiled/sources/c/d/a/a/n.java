package c.d.a.a;

import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* compiled from: PhotoViewAttacher */
class n implements GestureDetector.OnDoubleTapListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ p f7202a;

    public n(p pVar) {
        this.f7202a = pVar;
    }

    public boolean onDoubleTap(MotionEvent motionEvent) {
        try {
            float l2 = this.f7202a.l();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (l2 < this.f7202a.j()) {
                this.f7202a.a(this.f7202a.j(), x, y, true);
            } else if (l2 < this.f7202a.j() || l2 >= this.f7202a.i()) {
                this.f7202a.a(this.f7202a.k(), x, y, true);
            } else {
                this.f7202a.a(this.f7202a.i(), x, y, true);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        return true;
    }

    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        if (this.f7202a.y != null) {
            this.f7202a.y.onClick(this.f7202a.m);
        }
        RectF f2 = this.f7202a.f();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.f7202a.x != null) {
            this.f7202a.x.a(this.f7202a.m, x, y);
        }
        if (f2 != null) {
            if (f2.contains(x, y)) {
                float width = (x - f2.left) / f2.width();
                float height = (y - f2.top) / f2.height();
                if (this.f7202a.v != null) {
                    this.f7202a.v.a(this.f7202a.m, width, height);
                }
                return true;
            } else if (this.f7202a.w != null) {
                this.f7202a.w.a(this.f7202a.m);
            }
        }
        return false;
    }
}
