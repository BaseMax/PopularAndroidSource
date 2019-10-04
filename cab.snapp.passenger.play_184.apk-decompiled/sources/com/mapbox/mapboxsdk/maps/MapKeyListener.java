package com.mapbox.mapboxsdk.maps;

import android.graphics.PointF;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

final class MapKeyListener {
    /* access modifiers changed from: private */
    public TrackballLongPressTimeOut currentTrackballLongPressTimeOut;
    /* access modifiers changed from: private */
    public final MapGestureDetector mapGestureDetector;
    private final Transform transform;
    /* access modifiers changed from: private */
    public final UiSettings uiSettings;

    class TrackballLongPressTimeOut implements Runnable {
        private boolean cancelled = false;

        TrackballLongPressTimeOut() {
        }

        public void cancel() {
            this.cancelled = true;
        }

        public void run() {
            if (!this.cancelled) {
                MapKeyListener.this.mapGestureDetector.zoomOutAnimated(new PointF(MapKeyListener.this.uiSettings.getWidth() / 2.0f, MapKeyListener.this.uiSettings.getHeight() / 2.0f), true);
                TrackballLongPressTimeOut unused = MapKeyListener.this.currentTrackballLongPressTimeOut = null;
            }
        }
    }

    MapKeyListener(Transform transform2, UiSettings uiSettings2, MapGestureDetector mapGestureDetector2) {
        this.transform = transform2;
        this.uiSettings = uiSettings2;
        this.mapGestureDetector = mapGestureDetector2;
    }

    /* access modifiers changed from: package-private */
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        int i2 = i;
        double d = keyEvent.getRepeatCount() >= 5 ? 50.0d : 10.0d;
        if (i2 != 66) {
            switch (i2) {
                case 19:
                    if (!this.uiSettings.isScrollGesturesEnabled()) {
                        return false;
                    }
                    this.transform.cancelTransitions();
                    this.transform.moveBy(0.0d, d, 0);
                    return true;
                case 20:
                    if (!this.uiSettings.isScrollGesturesEnabled()) {
                        return false;
                    }
                    this.transform.cancelTransitions();
                    this.transform.moveBy(0.0d, -d, 0);
                    return true;
                case 21:
                    if (!this.uiSettings.isScrollGesturesEnabled()) {
                        return false;
                    }
                    this.transform.cancelTransitions();
                    this.transform.moveBy(d, 0.0d, 0);
                    return true;
                case 22:
                    if (!this.uiSettings.isScrollGesturesEnabled()) {
                        return false;
                    }
                    this.transform.cancelTransitions();
                    this.transform.moveBy(-d, 0.0d, 0);
                    return true;
                case 23:
                    break;
                default:
                    return false;
            }
        }
        keyEvent.startTracking();
        return true;
    }

    /* access modifiers changed from: package-private */
    public final boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        if ((i != 23 && i != 66) || !this.uiSettings.isZoomGesturesEnabled()) {
            return false;
        }
        this.mapGestureDetector.zoomOutAnimated(new PointF(this.uiSettings.getWidth() / 2.0f, this.uiSettings.getHeight() / 2.0f), true);
        return true;
    }

    /* access modifiers changed from: package-private */
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (keyEvent.isCanceled()) {
            return false;
        }
        if ((i != 23 && i != 66) || !this.uiSettings.isZoomGesturesEnabled()) {
            return false;
        }
        this.mapGestureDetector.zoomInAnimated(new PointF(this.uiSettings.getWidth() / 2.0f, this.uiSettings.getHeight() / 2.0f), true);
        return true;
    }

    /* access modifiers changed from: package-private */
    public final boolean onTrackballEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            TrackballLongPressTimeOut trackballLongPressTimeOut = this.currentTrackballLongPressTimeOut;
            if (trackballLongPressTimeOut != null) {
                trackballLongPressTimeOut.cancel();
                this.currentTrackballLongPressTimeOut = null;
            }
            this.currentTrackballLongPressTimeOut = new TrackballLongPressTimeOut();
            new Handler(Looper.getMainLooper()).postDelayed(this.currentTrackballLongPressTimeOut, (long) ViewConfiguration.getLongPressTimeout());
            return true;
        } else if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    return false;
                }
                TrackballLongPressTimeOut trackballLongPressTimeOut2 = this.currentTrackballLongPressTimeOut;
                if (trackballLongPressTimeOut2 != null) {
                    trackballLongPressTimeOut2.cancel();
                    this.currentTrackballLongPressTimeOut = null;
                }
                return true;
            } else if (!this.uiSettings.isScrollGesturesEnabled()) {
                return false;
            } else {
                this.transform.cancelTransitions();
                Transform transform2 = this.transform;
                double x = (double) motionEvent.getX();
                Double.isNaN(x);
                double y = (double) motionEvent.getY();
                Double.isNaN(y);
                transform2.moveBy(x * -10.0d, y * -10.0d, 0);
                return true;
            }
        } else if (!this.uiSettings.isZoomGesturesEnabled()) {
            return false;
        } else {
            if (this.currentTrackballLongPressTimeOut != null) {
                this.mapGestureDetector.zoomInAnimated(new PointF(this.uiSettings.getWidth() / 2.0f, this.uiSettings.getHeight() / 2.0f), true);
            }
            return true;
        }
    }
}
