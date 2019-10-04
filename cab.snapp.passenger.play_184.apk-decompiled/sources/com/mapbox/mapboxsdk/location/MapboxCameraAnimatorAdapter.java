package com.mapbox.mapboxsdk.location;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActivityChooserView;
import com.mapbox.mapboxsdk.location.MapboxAnimator;
import com.mapbox.mapboxsdk.maps.MapboxMap;

class MapboxCameraAnimatorAdapter extends MapboxFloatAnimator {
    /* access modifiers changed from: private */
    public final MapboxMap.CancelableCallback cancelableCallback;

    final class MapboxAnimatorListener extends AnimatorListenerAdapter {
        private MapboxAnimatorListener() {
        }

        public final void onAnimationCancel(Animator animator) {
            if (MapboxCameraAnimatorAdapter.this.cancelableCallback != null) {
                MapboxCameraAnimatorAdapter.this.cancelableCallback.onCancel();
            }
        }

        public final void onAnimationEnd(Animator animator) {
            if (MapboxCameraAnimatorAdapter.this.cancelableCallback != null) {
                MapboxCameraAnimatorAdapter.this.cancelableCallback.onFinish();
            }
        }
    }

    MapboxCameraAnimatorAdapter(Float f, Float f2, MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener, MapboxMap.CancelableCallback cancelableCallback2) {
        super(f, f2, animationsValueChangeListener, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        this.cancelableCallback = cancelableCallback2;
        addListener(new MapboxAnimatorListener());
    }
}
