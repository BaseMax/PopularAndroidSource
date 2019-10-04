package com.mapbox.mapboxsdk.maps;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.maps.widgets.CompassView;
import com.mapbox.mapboxsdk.utils.BitmapUtils;
import com.mapbox.mapboxsdk.utils.ColorUtils;

public final class UiSettings {
    private AttributionDialogManager attributionDialogManager;
    private final int[] attributionsMargins = new int[4];
    private final ImageView attributionsView;
    private final int[] compassMargins = new int[4];
    private final CompassView compassView;
    private boolean deselectMarkersOnTap = true;
    private boolean disableRotateWhenScaling = true;
    private boolean doubleTapGesturesEnabled = true;
    private boolean flingVelocityAnimationEnabled = true;
    private final FocalPointChangeListener focalPointChangeListener;
    private boolean increaseRotateThresholdWhenScaling = true;
    private boolean increaseScaleThresholdWhenRotating = true;
    private final int[] logoMargins = new int[4];
    private final View logoView;
    private final float pixelRatio;
    private final Projection projection;
    private boolean quickZoomGesturesEnabled = true;
    private boolean rotateGesturesEnabled = true;
    private boolean rotateVelocityAnimationEnabled = true;
    private boolean scaleVelocityAnimationEnabled = true;
    private boolean scrollGesturesEnabled = true;
    private boolean tiltGesturesEnabled = true;
    private PointF userProvidedFocalPoint;
    private boolean zoomGesturesEnabled = true;
    private float zoomRate = 1.0f;

    UiSettings(Projection projection2, FocalPointChangeListener focalPointChangeListener2, CompassView compassView2, ImageView imageView, View view, float f) {
        this.projection = projection2;
        this.focalPointChangeListener = focalPointChangeListener2;
        this.compassView = compassView2;
        this.attributionsView = imageView;
        this.logoView = view;
        this.pixelRatio = f;
    }

    /* access modifiers changed from: package-private */
    public final void initialise(Context context, MapboxMapOptions mapboxMapOptions) {
        Resources resources = context.getResources();
        initialiseGestures(mapboxMapOptions);
        initialiseCompass(mapboxMapOptions, resources);
        initialiseLogo(mapboxMapOptions, resources);
        initialiseAttribution(context, mapboxMapOptions);
    }

    /* access modifiers changed from: package-private */
    public final void onSaveInstanceState(Bundle bundle) {
        saveGestures(bundle);
        saveCompass(bundle);
        saveLogo(bundle);
        saveAttribution(bundle);
        saveDeselectMarkersOnTap(bundle);
        saveFocalPoint(bundle);
    }

    /* access modifiers changed from: package-private */
    public final void onRestoreInstanceState(Bundle bundle) {
        restoreGestures(bundle);
        restoreCompass(bundle);
        restoreLogo(bundle);
        restoreAttribution(bundle);
        restoreDeselectMarkersOnTap(bundle);
        restoreFocalPoint(bundle);
    }

    private void initialiseGestures(MapboxMapOptions mapboxMapOptions) {
        setZoomGesturesEnabled(mapboxMapOptions.getZoomGesturesEnabled());
        setScrollGesturesEnabled(mapboxMapOptions.getScrollGesturesEnabled());
        setRotateGesturesEnabled(mapboxMapOptions.getRotateGesturesEnabled());
        setTiltGesturesEnabled(mapboxMapOptions.getTiltGesturesEnabled());
        setDoubleTapGesturesEnabled(mapboxMapOptions.getDoubleTapGesturesEnabled());
        setQuickZoomGesturesEnabled(mapboxMapOptions.getQuickZoomGesturesEnabled());
    }

    private void saveGestures(Bundle bundle) {
        bundle.putBoolean(MapboxConstants.STATE_ZOOM_ENABLED, isZoomGesturesEnabled());
        bundle.putBoolean(MapboxConstants.STATE_SCROLL_ENABLED, isScrollGesturesEnabled());
        bundle.putBoolean(MapboxConstants.STATE_ROTATE_ENABLED, isRotateGesturesEnabled());
        bundle.putBoolean(MapboxConstants.STATE_TILT_ENABLED, isTiltGesturesEnabled());
        bundle.putBoolean(MapboxConstants.STATE_DOUBLE_TAP_ENABLED, isDoubleTapGesturesEnabled());
        bundle.putBoolean(MapboxConstants.STATE_SCALE_ANIMATION_ENABLED, isScaleVelocityAnimationEnabled());
        bundle.putBoolean(MapboxConstants.STATE_ROTATE_ANIMATION_ENABLED, isRotateVelocityAnimationEnabled());
        bundle.putBoolean(MapboxConstants.STATE_FLING_ANIMATION_ENABLED, isFlingVelocityAnimationEnabled());
        bundle.putBoolean(MapboxConstants.STATE_INCREASE_ROTATE_THRESHOLD, isIncreaseRotateThresholdWhenScaling());
        bundle.putBoolean(MapboxConstants.STATE_DISABLE_ROTATE_WHEN_SCALING, isDisableRotateWhenScaling());
        bundle.putBoolean(MapboxConstants.STATE_INCREASE_SCALE_THRESHOLD, isIncreaseScaleThresholdWhenRotating());
        bundle.putBoolean(MapboxConstants.STATE_QUICK_ZOOM_ENABLED, isQuickZoomGesturesEnabled());
        bundle.putFloat(MapboxConstants.STATE_ZOOM_RATE, getZoomRate());
    }

    private void restoreGestures(Bundle bundle) {
        setZoomGesturesEnabled(bundle.getBoolean(MapboxConstants.STATE_ZOOM_ENABLED));
        setScrollGesturesEnabled(bundle.getBoolean(MapboxConstants.STATE_SCROLL_ENABLED));
        setRotateGesturesEnabled(bundle.getBoolean(MapboxConstants.STATE_ROTATE_ENABLED));
        setTiltGesturesEnabled(bundle.getBoolean(MapboxConstants.STATE_TILT_ENABLED));
        setDoubleTapGesturesEnabled(bundle.getBoolean(MapboxConstants.STATE_DOUBLE_TAP_ENABLED));
        setScaleVelocityAnimationEnabled(bundle.getBoolean(MapboxConstants.STATE_SCALE_ANIMATION_ENABLED));
        setRotateVelocityAnimationEnabled(bundle.getBoolean(MapboxConstants.STATE_ROTATE_ANIMATION_ENABLED));
        setFlingVelocityAnimationEnabled(bundle.getBoolean(MapboxConstants.STATE_FLING_ANIMATION_ENABLED));
        setIncreaseRotateThresholdWhenScaling(bundle.getBoolean(MapboxConstants.STATE_INCREASE_ROTATE_THRESHOLD));
        setDisableRotateWhenScaling(bundle.getBoolean(MapboxConstants.STATE_DISABLE_ROTATE_WHEN_SCALING));
        setIncreaseScaleThresholdWhenRotating(bundle.getBoolean(MapboxConstants.STATE_INCREASE_SCALE_THRESHOLD));
        setQuickZoomGesturesEnabled(bundle.getBoolean(MapboxConstants.STATE_QUICK_ZOOM_ENABLED));
        setZoomRate(bundle.getFloat(MapboxConstants.STATE_ZOOM_RATE, 1.0f));
    }

    private void initialiseCompass(MapboxMapOptions mapboxMapOptions, Resources resources) {
        setCompassEnabled(mapboxMapOptions.getCompassEnabled());
        setCompassGravity(mapboxMapOptions.getCompassGravity());
        int[] compassMargins2 = mapboxMapOptions.getCompassMargins();
        if (compassMargins2 != null) {
            setCompassMargins(compassMargins2[0], compassMargins2[1], compassMargins2[2], compassMargins2[3]);
        } else {
            int dimension = (int) resources.getDimension(R.dimen.mapbox_four_dp);
            setCompassMargins(dimension, dimension, dimension, dimension);
        }
        setCompassFadeFacingNorth(mapboxMapOptions.getCompassFadeFacingNorth());
        if (mapboxMapOptions.getCompassImage() == null) {
            mapboxMapOptions.compassImage(ResourcesCompat.getDrawable(resources, R.drawable.mapbox_compass_icon, null));
        }
        setCompassImage(mapboxMapOptions.getCompassImage());
    }

    private void saveCompass(Bundle bundle) {
        bundle.putBoolean(MapboxConstants.STATE_COMPASS_ENABLED, isCompassEnabled());
        bundle.putInt(MapboxConstants.STATE_COMPASS_GRAVITY, getCompassGravity());
        bundle.putInt(MapboxConstants.STATE_COMPASS_MARGIN_LEFT, getCompassMarginLeft());
        bundle.putInt(MapboxConstants.STATE_COMPASS_MARGIN_TOP, getCompassMarginTop());
        bundle.putInt(MapboxConstants.STATE_COMPASS_MARGIN_BOTTOM, getCompassMarginBottom());
        bundle.putInt(MapboxConstants.STATE_COMPASS_MARGIN_RIGHT, getCompassMarginRight());
        bundle.putBoolean(MapboxConstants.STATE_COMPASS_FADE_WHEN_FACING_NORTH, isCompassFadeWhenFacingNorth());
        bundle.putByteArray(MapboxConstants.STATE_COMPASS_IMAGE_BITMAP, BitmapUtils.getByteArrayFromDrawable(getCompassImage()));
    }

    private void restoreCompass(Bundle bundle) {
        setCompassEnabled(bundle.getBoolean(MapboxConstants.STATE_COMPASS_ENABLED));
        setCompassGravity(bundle.getInt(MapboxConstants.STATE_COMPASS_GRAVITY));
        setCompassMargins(bundle.getInt(MapboxConstants.STATE_COMPASS_MARGIN_LEFT), bundle.getInt(MapboxConstants.STATE_COMPASS_MARGIN_TOP), bundle.getInt(MapboxConstants.STATE_COMPASS_MARGIN_RIGHT), bundle.getInt(MapboxConstants.STATE_COMPASS_MARGIN_BOTTOM));
        setCompassFadeFacingNorth(bundle.getBoolean(MapboxConstants.STATE_COMPASS_FADE_WHEN_FACING_NORTH));
        setCompassImage(BitmapUtils.getDrawableFromByteArray(this.compassView.getContext(), bundle.getByteArray(MapboxConstants.STATE_COMPASS_IMAGE_BITMAP)));
    }

    private void initialiseLogo(MapboxMapOptions mapboxMapOptions, Resources resources) {
        setLogoEnabled(mapboxMapOptions.getLogoEnabled());
        setLogoGravity(mapboxMapOptions.getLogoGravity());
        setLogoMargins(resources, mapboxMapOptions.getLogoMargins());
    }

    private void setLogoMargins(Resources resources, int[] iArr) {
        if (iArr != null) {
            setLogoMargins(iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        int dimension = (int) resources.getDimension(R.dimen.mapbox_four_dp);
        setLogoMargins(dimension, dimension, dimension, dimension);
    }

    private void saveLogo(Bundle bundle) {
        bundle.putInt(MapboxConstants.STATE_LOGO_GRAVITY, getLogoGravity());
        bundle.putInt(MapboxConstants.STATE_LOGO_MARGIN_LEFT, getLogoMarginLeft());
        bundle.putInt(MapboxConstants.STATE_LOGO_MARGIN_TOP, getLogoMarginTop());
        bundle.putInt(MapboxConstants.STATE_LOGO_MARGIN_RIGHT, getLogoMarginRight());
        bundle.putInt(MapboxConstants.STATE_LOGO_MARGIN_BOTTOM, getLogoMarginBottom());
        bundle.putBoolean(MapboxConstants.STATE_LOGO_ENABLED, isLogoEnabled());
    }

    private void restoreLogo(Bundle bundle) {
        setLogoEnabled(bundle.getBoolean(MapboxConstants.STATE_LOGO_ENABLED));
        setLogoGravity(bundle.getInt(MapboxConstants.STATE_LOGO_GRAVITY));
        setLogoMargins(bundle.getInt(MapboxConstants.STATE_LOGO_MARGIN_LEFT), bundle.getInt(MapboxConstants.STATE_LOGO_MARGIN_TOP), bundle.getInt(MapboxConstants.STATE_LOGO_MARGIN_RIGHT), bundle.getInt(MapboxConstants.STATE_LOGO_MARGIN_BOTTOM));
    }

    private void initialiseAttribution(Context context, MapboxMapOptions mapboxMapOptions) {
        setAttributionEnabled(mapboxMapOptions.getAttributionEnabled());
        setAttributionGravity(mapboxMapOptions.getAttributionGravity());
        setAttributionMargins(context, mapboxMapOptions.getAttributionMargins());
        int attributionTintColor = mapboxMapOptions.getAttributionTintColor();
        if (attributionTintColor == -1) {
            attributionTintColor = ColorUtils.getPrimaryColor(context);
        }
        setAttributionTintColor(attributionTintColor);
    }

    private void setAttributionMargins(Context context, int[] iArr) {
        if (iArr != null) {
            setAttributionMargins(iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        Resources resources = context.getResources();
        int dimension = (int) resources.getDimension(R.dimen.mapbox_four_dp);
        setAttributionMargins((int) resources.getDimension(R.dimen.mapbox_ninety_two_dp), dimension, dimension, dimension);
    }

    private void saveAttribution(Bundle bundle) {
        bundle.putInt(MapboxConstants.STATE_ATTRIBUTION_GRAVITY, getAttributionGravity());
        bundle.putInt(MapboxConstants.STATE_ATTRIBUTION_MARGIN_LEFT, getAttributionMarginLeft());
        bundle.putInt(MapboxConstants.STATE_ATTRIBUTION_MARGIN_TOP, getAttributionMarginTop());
        bundle.putInt(MapboxConstants.STATE_ATTRIBUTION_MARGIN_RIGHT, getAttributionMarginRight());
        bundle.putInt(MapboxConstants.STATE_ATTRIBUTION_MARGIN_BOTTOM, getAttributionMarginBottom());
        bundle.putBoolean(MapboxConstants.STATE_ATTRIBUTION_ENABLED, isAttributionEnabled());
    }

    private void restoreAttribution(Bundle bundle) {
        setAttributionEnabled(bundle.getBoolean(MapboxConstants.STATE_ATTRIBUTION_ENABLED));
        setAttributionGravity(bundle.getInt(MapboxConstants.STATE_ATTRIBUTION_GRAVITY));
        setAttributionMargins(bundle.getInt(MapboxConstants.STATE_ATTRIBUTION_MARGIN_LEFT), bundle.getInt(MapboxConstants.STATE_ATTRIBUTION_MARGIN_TOP), bundle.getInt(MapboxConstants.STATE_ATTRIBUTION_MARGIN_RIGHT), bundle.getInt(MapboxConstants.STATE_ATTRIBUTION_MARGIN_BOTTOM));
    }

    public final void setCompassEnabled(boolean z) {
        this.compassView.setEnabled(z);
    }

    public final boolean isCompassEnabled() {
        return this.compassView.isEnabled();
    }

    public final void setCompassGravity(int i) {
        setWidgetGravity(this.compassView, i);
    }

    public final void setCompassFadeFacingNorth(boolean z) {
        this.compassView.fadeCompassViewFacingNorth(z);
    }

    public final void setCompassImage(Drawable drawable) {
        this.compassView.setCompassImage(drawable);
    }

    public final boolean isCompassFadeWhenFacingNorth() {
        return this.compassView.isFadeCompassViewFacingNorth();
    }

    public final int getCompassGravity() {
        return ((FrameLayout.LayoutParams) this.compassView.getLayoutParams()).gravity;
    }

    public final void setCompassMargins(int i, int i2, int i3, int i4) {
        setWidgetMargins(this.compassView, this.compassMargins, i, i2, i3, i4);
    }

    public final int getCompassMarginLeft() {
        return this.compassMargins[0];
    }

    public final int getCompassMarginTop() {
        return this.compassMargins[1];
    }

    public final int getCompassMarginRight() {
        return this.compassMargins[2];
    }

    public final int getCompassMarginBottom() {
        return this.compassMargins[3];
    }

    public final Drawable getCompassImage() {
        return this.compassView.getCompassImage();
    }

    /* access modifiers changed from: package-private */
    public final void update(CameraPosition cameraPosition) {
        if (isCompassEnabled()) {
            this.compassView.update(-cameraPosition.bearing);
        }
    }

    public final void setLogoEnabled(boolean z) {
        this.logoView.setVisibility(z ? 0 : 8);
    }

    public final boolean isLogoEnabled() {
        return this.logoView.getVisibility() == 0;
    }

    public final void setLogoGravity(int i) {
        setWidgetGravity(this.logoView, i);
    }

    public final int getLogoGravity() {
        return ((FrameLayout.LayoutParams) this.logoView.getLayoutParams()).gravity;
    }

    public final void setLogoMargins(int i, int i2, int i3, int i4) {
        setWidgetMargins(this.logoView, this.logoMargins, i, i2, i3, i4);
    }

    public final int getLogoMarginLeft() {
        return this.logoMargins[0];
    }

    public final int getLogoMarginTop() {
        return this.logoMargins[1];
    }

    public final int getLogoMarginRight() {
        return this.logoMargins[2];
    }

    public final int getLogoMarginBottom() {
        return this.logoMargins[3];
    }

    public final void setAttributionEnabled(boolean z) {
        this.attributionsView.setVisibility(z ? 0 : 8);
    }

    public final boolean isAttributionEnabled() {
        return this.attributionsView.getVisibility() == 0;
    }

    public final void setAttributionDialogManager(AttributionDialogManager attributionDialogManager2) {
        this.attributionDialogManager = attributionDialogManager2;
    }

    public final AttributionDialogManager getAttributionDialogManager() {
        return this.attributionDialogManager;
    }

    public final void setAttributionGravity(int i) {
        setWidgetGravity(this.attributionsView, i);
    }

    public final int getAttributionGravity() {
        return ((FrameLayout.LayoutParams) this.attributionsView.getLayoutParams()).gravity;
    }

    public final void setAttributionMargins(int i, int i2, int i3, int i4) {
        setWidgetMargins(this.attributionsView, this.attributionsMargins, i, i2, i3, i4);
    }

    public final void setAttributionTintColor(int i) {
        if (Color.alpha(i) == 0) {
            ImageView imageView = this.attributionsView;
            ColorUtils.setTintList(imageView, ContextCompat.getColor(imageView.getContext(), R.color.mapbox_blue));
            return;
        }
        ColorUtils.setTintList(this.attributionsView, i);
    }

    public final int getAttributionMarginLeft() {
        return this.attributionsMargins[0];
    }

    public final int getAttributionMarginTop() {
        return this.attributionsMargins[1];
    }

    public final int getAttributionMarginRight() {
        return this.attributionsMargins[2];
    }

    public final int getAttributionMarginBottom() {
        return this.attributionsMargins[3];
    }

    public final void setRotateGesturesEnabled(boolean z) {
        this.rotateGesturesEnabled = z;
    }

    public final boolean isRotateGesturesEnabled() {
        return this.rotateGesturesEnabled;
    }

    public final void setTiltGesturesEnabled(boolean z) {
        this.tiltGesturesEnabled = z;
    }

    public final boolean isTiltGesturesEnabled() {
        return this.tiltGesturesEnabled;
    }

    public final void setZoomGesturesEnabled(boolean z) {
        this.zoomGesturesEnabled = z;
    }

    public final boolean isZoomGesturesEnabled() {
        return this.zoomGesturesEnabled;
    }

    public final void setDoubleTapGesturesEnabled(boolean z) {
        this.doubleTapGesturesEnabled = z;
    }

    public final boolean isDoubleTapGesturesEnabled() {
        return this.doubleTapGesturesEnabled;
    }

    public final boolean isQuickZoomGesturesEnabled() {
        return this.quickZoomGesturesEnabled;
    }

    public final void setQuickZoomGesturesEnabled(boolean z) {
        this.quickZoomGesturesEnabled = z;
    }

    public final float getZoomRate() {
        return this.zoomRate;
    }

    public final void setZoomRate(float f) {
        this.zoomRate = f;
    }

    private void restoreDeselectMarkersOnTap(Bundle bundle) {
        setDeselectMarkersOnTap(bundle.getBoolean(MapboxConstants.STATE_DESELECT_MARKER_ON_TAP));
    }

    private void saveDeselectMarkersOnTap(Bundle bundle) {
        bundle.putBoolean(MapboxConstants.STATE_DESELECT_MARKER_ON_TAP, isDeselectMarkersOnTap());
    }

    public final boolean isDeselectMarkersOnTap() {
        return this.deselectMarkersOnTap;
    }

    public final void setDeselectMarkersOnTap(boolean z) {
        this.deselectMarkersOnTap = z;
    }

    public final void setScrollGesturesEnabled(boolean z) {
        this.scrollGesturesEnabled = z;
    }

    public final boolean isScrollGesturesEnabled() {
        return this.scrollGesturesEnabled;
    }

    public final boolean isScaleVelocityAnimationEnabled() {
        return this.scaleVelocityAnimationEnabled;
    }

    public final void setScaleVelocityAnimationEnabled(boolean z) {
        this.scaleVelocityAnimationEnabled = z;
    }

    public final boolean isRotateVelocityAnimationEnabled() {
        return this.rotateVelocityAnimationEnabled;
    }

    public final void setRotateVelocityAnimationEnabled(boolean z) {
        this.rotateVelocityAnimationEnabled = z;
    }

    public final boolean isFlingVelocityAnimationEnabled() {
        return this.flingVelocityAnimationEnabled;
    }

    public final void setFlingVelocityAnimationEnabled(boolean z) {
        this.flingVelocityAnimationEnabled = z;
    }

    public final void setAllVelocityAnimationsEnabled(boolean z) {
        setScaleVelocityAnimationEnabled(z);
        setRotateVelocityAnimationEnabled(z);
        setFlingVelocityAnimationEnabled(z);
    }

    @Deprecated
    public final boolean isIncreaseRotateThresholdWhenScaling() {
        return this.increaseRotateThresholdWhenScaling;
    }

    @Deprecated
    public final void setIncreaseRotateThresholdWhenScaling(boolean z) {
        this.increaseRotateThresholdWhenScaling = z;
    }

    public final boolean isDisableRotateWhenScaling() {
        return this.disableRotateWhenScaling;
    }

    public final void setDisableRotateWhenScaling(boolean z) {
        this.disableRotateWhenScaling = z;
    }

    public final boolean isIncreaseScaleThresholdWhenRotating() {
        return this.increaseScaleThresholdWhenRotating;
    }

    public final void setIncreaseScaleThresholdWhenRotating(boolean z) {
        this.increaseScaleThresholdWhenRotating = z;
    }

    public final void setAllGesturesEnabled(boolean z) {
        setScrollGesturesEnabled(z);
        setRotateGesturesEnabled(z);
        setTiltGesturesEnabled(z);
        setZoomGesturesEnabled(z);
        setDoubleTapGesturesEnabled(z);
        setQuickZoomGesturesEnabled(z);
    }

    public final boolean areAllGesturesEnabled() {
        return this.rotateGesturesEnabled && this.tiltGesturesEnabled && this.zoomGesturesEnabled && this.scrollGesturesEnabled && this.doubleTapGesturesEnabled && this.quickZoomGesturesEnabled;
    }

    private void saveFocalPoint(Bundle bundle) {
        bundle.putParcelable(MapboxConstants.STATE_USER_FOCAL_POINT, getFocalPoint());
    }

    private void restoreFocalPoint(Bundle bundle) {
        PointF pointF = (PointF) bundle.getParcelable(MapboxConstants.STATE_USER_FOCAL_POINT);
        if (pointF != null) {
            setFocalPoint(pointF);
        }
    }

    public final void setFocalPoint(PointF pointF) {
        this.userProvidedFocalPoint = pointF;
        this.focalPointChangeListener.onFocalPointChanged(pointF);
    }

    public final PointF getFocalPoint() {
        return this.userProvidedFocalPoint;
    }

    public final float getHeight() {
        return this.projection.getHeight();
    }

    public final float getWidth() {
        return this.projection.getWidth();
    }

    /* access modifiers changed from: package-private */
    public final float getPixelRatio() {
        return this.pixelRatio;
    }

    public final void invalidate() {
        setLogoMargins(getLogoMarginLeft(), getLogoMarginTop(), getLogoMarginRight(), getLogoMarginBottom());
        setCompassMargins(getCompassMarginLeft(), getCompassMarginTop(), getCompassMarginRight(), getCompassMarginBottom());
        setAttributionMargins(getAttributionMarginLeft(), getAttributionMarginTop(), getAttributionMarginRight(), getAttributionMarginBottom());
    }

    private void setWidgetGravity(View view, int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.gravity = i;
        view.setLayoutParams(layoutParams);
    }

    private void setWidgetMargins(View view, int[] iArr, int i, int i2, int i3, int i4) {
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = i3;
        iArr[3] = i4;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.setMargins(i, i2, i3, i4);
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(i);
            layoutParams.setMarginEnd(i3);
        }
        view.setLayoutParams(layoutParams);
    }
}
