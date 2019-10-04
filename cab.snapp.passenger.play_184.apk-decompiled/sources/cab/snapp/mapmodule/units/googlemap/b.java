package cab.snapp.mapmodule.units.googlemap;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import cab.snapp.arch.protocol.BasePresenter;
import com.google.android.gms.maps.c;

final class b extends BasePresenter<GoogleMapView, a> {

    /* renamed from: a  reason: collision with root package name */
    private int f276a;

    /* renamed from: b  reason: collision with root package name */
    private ScaleGestureDetector f277b;

    b() {
    }

    public final void onMapReady(c cVar) {
        if (getInteractor() != null) {
            ((a) getInteractor()).setMap(cVar);
        }
    }

    public final void initScaleGestureDetector(Context context) {
        this.f277b = new ScaleGestureDetector(context, new ScaleGestureDetector.OnScaleGestureListener() {

            /* renamed from: b  reason: collision with root package name */
            private float f279b = -1.0f;

            public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                if (this.f279b == -1.0f) {
                    this.f279b = scaleGestureDetector.getCurrentSpan();
                } else if (b.this.getInteractor() != null) {
                    ((a) b.this.getInteractor()).zoom(b.a(this.f279b, scaleGestureDetector.getCurrentSpan()));
                    this.f279b = scaleGestureDetector.getCurrentSpan();
                }
                return false;
            }

            public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                this.f279b = -1.0f;
                return true;
            }

            public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                this.f279b = -1.0f;
            }
        });
    }

    public final void dispatchTouchEvent(MotionEvent motionEvent) {
        if (!(getInteractor() == null || this.f277b == null)) {
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                this.f276a = 1;
            } else if (action == 1) {
                this.f276a = 0;
            } else if (action == 5) {
                this.f276a++;
            } else if (action == 6) {
                this.f276a--;
            }
            if (this.f276a > 1) {
                ((a) getInteractor()).disableScrolling();
                this.f277b.onTouchEvent(motionEvent);
                return;
            }
            ((a) getInteractor()).enableScrolling();
        }
    }

    static /* synthetic */ float a(float f, float f2) {
        return (float) (Math.log((double) (f2 / f)) / Math.log(1.55d));
    }
}
