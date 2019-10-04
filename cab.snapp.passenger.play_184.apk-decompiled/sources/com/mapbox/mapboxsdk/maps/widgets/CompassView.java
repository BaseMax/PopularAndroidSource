package com.mapbox.mapboxsdk.maps.widgets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import com.mapbox.mapboxsdk.maps.MapboxMap;

public final class CompassView extends ImageView implements Runnable {
    private static final long TIME_FADE_ANIMATION = 500;
    public static final long TIME_MAP_NORTH_ANIMATION = 150;
    public static final long TIME_WAIT_IDLE = 500;
    private MapboxMap.OnCompassAnimationListener compassAnimationListener;
    private ViewPropertyAnimatorCompat fadeAnimator;
    private boolean fadeCompassViewFacingNorth = true;
    private boolean isAnimating = false;
    private float rotation = 0.0f;

    public CompassView(Context context) {
        super(context);
        initialize(context);
    }

    public CompassView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(context);
    }

    public CompassView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(context);
    }

    private void initialize(Context context) {
        setEnabled(false);
        int i = (int) (context.getResources().getDisplayMetrics().density * 48.0f);
        setLayoutParams(new ViewGroup.LayoutParams(i, i));
    }

    public final void injectCompassAnimationListener(MapboxMap.OnCompassAnimationListener onCompassAnimationListener) {
        this.compassAnimationListener = onCompassAnimationListener;
    }

    public final void isAnimating(boolean z) {
        this.isAnimating = z;
    }

    public final void resetAnimation() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.fadeAnimator;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        this.fadeAnimator = null;
    }

    public final boolean isHidden() {
        return this.fadeCompassViewFacingNorth && isFacingNorth();
    }

    public final boolean isFacingNorth() {
        return ((double) Math.abs(this.rotation)) >= 359.0d || ((double) Math.abs(this.rotation)) <= 1.0d;
    }

    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z || isHidden()) {
            resetAnimation();
            setAlpha(0.0f);
            setVisibility(4);
            return;
        }
        resetAnimation();
        setAlpha(1.0f);
        setVisibility(0);
    }

    public final void update(double d) {
        this.rotation = (float) d;
        if (isEnabled()) {
            if (isHidden()) {
                if (getVisibility() != 4 && this.fadeAnimator == null) {
                    postDelayed(this, 500);
                }
                return;
            }
            resetAnimation();
            setAlpha(1.0f);
            setVisibility(0);
            notifyCompassAnimationListenerWhenAnimating();
            setRotation(this.rotation);
        }
    }

    public final void fadeCompassViewFacingNorth(boolean z) {
        this.fadeCompassViewFacingNorth = z;
    }

    public final boolean isFadeCompassViewFacingNorth() {
        return this.fadeCompassViewFacingNorth;
    }

    public final void setCompassImage(Drawable drawable) {
        setImageDrawable(drawable);
    }

    public final Drawable getCompassImage() {
        return getDrawable();
    }

    public final void run() {
        if (isHidden()) {
            this.compassAnimationListener.onCompassAnimationFinished();
            resetAnimation();
            setLayerType(2, null);
            this.fadeAnimator = ViewCompat.animate(this).alpha(0.0f).setDuration(500);
            this.fadeAnimator.setListener(new ViewPropertyAnimatorListenerAdapter() {
                public void onAnimationEnd(View view) {
                    CompassView.this.setLayerType(0, null);
                    CompassView.this.setVisibility(4);
                    CompassView.this.resetAnimation();
                }
            });
        }
    }

    private void notifyCompassAnimationListenerWhenAnimating() {
        if (this.isAnimating) {
            this.compassAnimationListener.onCompassAnimation();
        }
    }
}
