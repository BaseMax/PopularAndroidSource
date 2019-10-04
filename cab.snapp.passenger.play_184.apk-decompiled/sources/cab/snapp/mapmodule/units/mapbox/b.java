package cab.snapp.mapmodule.units.mapbox;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import cab.snapp.arch.protocol.BasePresenter;
import com.mapbox.mapboxsdk.maps.MapboxMap;

final class b extends BasePresenter<MapBoxView, a> {

    /* renamed from: a  reason: collision with root package name */
    private int f298a;

    /* renamed from: b  reason: collision with root package name */
    private ScaleGestureDetector f299b;

    b() {
    }

    public final void onMapReady(MapboxMap mapboxMap) {
        if (getInteractor() != null) {
            ((a) getInteractor()).setMap(mapboxMap);
        }
    }

    public final void setLocationLayerEnabled(boolean z) {
        if (getView() != null && ((MapBoxView) getView()).getLocationComponent() != null) {
            ((MapBoxView) getView()).getLocationComponent().setLocationComponentEnabled(z);
        }
    }

    public final void initScaleGestureDetector(Context context) {
        this.f299b = new ScaleGestureDetector(context, new ScaleGestureDetector.OnScaleGestureListener() {

            /* renamed from: b  reason: collision with root package name */
            private float f301b = -1.0f;

            public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                if (this.f301b == -1.0f) {
                    this.f301b = scaleGestureDetector.getCurrentSpan();
                } else if (b.this.getInteractor() != null) {
                    ((a) b.this.getInteractor()).zoom(b.a(this.f301b, scaleGestureDetector.getCurrentSpan()));
                    this.f301b = scaleGestureDetector.getCurrentSpan();
                }
                return false;
            }

            public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                this.f301b = -1.0f;
                return true;
            }

            public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                this.f301b = -1.0f;
            }
        });
    }

    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (getInteractor() == null || this.f299b == null) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f298a = 1;
        } else if (action == 1) {
            this.f298a = 0;
        } else if (action == 5) {
            this.f298a++;
        } else if (action == 6) {
            this.f298a--;
        }
        if (this.f298a > 1) {
            ((a) getInteractor()).disableScrolling();
            this.f299b.onTouchEvent(motionEvent);
            return false;
        }
        ((a) getInteractor()).enableScrolling();
        return true;
    }

    static /* synthetic */ float a(float f, float f2) {
        return (float) (Math.log((double) (f2 / f)) / Math.log(1.55d));
    }
}
