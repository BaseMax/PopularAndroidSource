package com.mapbox.mapboxsdk.maps;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.animation.DecelerateInterpolator;
import com.mapbox.android.b.a;
import com.mapbox.android.b.d;
import com.mapbox.android.b.g;
import com.mapbox.android.b.k;
import com.mapbox.android.b.l;
import com.mapbox.android.b.m;
import com.mapbox.android.b.o;
import com.mapbox.android.b.p;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.utils.MathUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

final class MapGestureDetector {
    private Handler animationsTimeoutHandler = new Handler();
    /* access modifiers changed from: private */
    public final AnnotationManager annotationManager;
    /* access modifiers changed from: private */
    public final CameraChangeDispatcher cameraChangeDispatcher;
    private final Runnable cancelAnimatorsRunnable = new Runnable() {
        public void run() {
            MapGestureDetector.this.cancelAnimators();
        }
    };
    /* access modifiers changed from: private */
    public PointF constantFocalPoint;
    /* access modifiers changed from: private */
    public PointF doubleTapFocalPoint = new PointF();
    private boolean doubleTapRegistered;
    /* access modifiers changed from: private */
    public a gesturesManager;
    private final CopyOnWriteArrayList<MapboxMap.OnFlingListener> onFlingListenerList = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<MapboxMap.OnMapClickListener> onMapClickListenerList = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<MapboxMap.OnMapLongClickListener> onMapLongClickListenerList = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<MapboxMap.OnMoveListener> onMoveListenerList = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<MapboxMap.OnRotateListener> onRotateListenerList = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<MapboxMap.OnScaleListener> onScaleListenerList = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<MapboxMap.OnShoveListener> onShoveListenerList = new CopyOnWriteArrayList<>();
    private final Projection projection;
    /* access modifiers changed from: private */
    public Animator rotateAnimator;
    /* access modifiers changed from: private */
    public Animator scaleAnimator;
    private final List<Animator> scheduledAnimators = new ArrayList();
    /* access modifiers changed from: private */
    public final Transform transform;
    /* access modifiers changed from: private */
    public final UiSettings uiSettings;

    final class MoveGestureListener extends d.b {
        private MoveGestureListener() {
        }

        public final boolean onMoveBegin(d dVar) {
            if (!MapGestureDetector.this.uiSettings.isScrollGesturesEnabled()) {
                return false;
            }
            MapGestureDetector.this.cancelTransitionsIfRequired();
            MapGestureDetector.this.notifyOnMoveBeginListeners(dVar);
            return true;
        }

        public final boolean onMove(d dVar, float f, float f2) {
            if (!(f == 0.0f && f2 == 0.0f)) {
                MapGestureDetector.this.cameraChangeDispatcher.onCameraMoveStarted(1);
                MapGestureDetector.this.transform.moveBy((double) (-f), (double) (-f2), 0);
                MapGestureDetector.this.notifyOnMoveListeners(dVar);
            }
            return true;
        }

        public final void onMoveEnd(d dVar, float f, float f2) {
            MapGestureDetector.this.dispatchCameraIdle();
            MapGestureDetector.this.notifyOnMoveEndListeners(dVar);
        }
    }

    final class RotateGestureListener extends l.b {
        private final float angularVelocityMultiplier;
        private final float defaultSpanSinceStartThreshold;
        private final float minimumAngularVelocity;
        private final float minimumScaleSpanWhenRotating;
        private final double rotateVelocityRatioThreshold;

        RotateGestureListener(float f, double d, float f2, float f3, float f4) {
            this.minimumScaleSpanWhenRotating = f;
            this.angularVelocityMultiplier = f2;
            this.minimumAngularVelocity = f3;
            this.rotateVelocityRatioThreshold = d * 2.2000000000000003E-4d;
            this.defaultSpanSinceStartThreshold = f4;
        }

        public final boolean onRotateBegin(l lVar) {
            if (!MapGestureDetector.this.uiSettings.isRotateGesturesEnabled()) {
                return false;
            }
            float abs = Math.abs(lVar.getDeltaSinceLast());
            double eventTime = (double) lVar.getCurrentEvent().getEventTime();
            double eventTime2 = (double) lVar.getPreviousEvent().getEventTime();
            if (eventTime == eventTime2) {
                return false;
            }
            double d = (double) abs;
            Double.isNaN(eventTime);
            Double.isNaN(eventTime2);
            Double.isNaN(d);
            double d2 = d / (eventTime - eventTime2);
            float abs2 = Math.abs(lVar.getDeltaSinceStart());
            if (d2 < 0.04d || ((d2 > 0.07d && abs2 < 5.0f) || ((d2 > 0.15d && abs2 < 7.0f) || (d2 > 0.5d && abs2 < 15.0f)))) {
                return false;
            }
            if (MapGestureDetector.this.uiSettings.isIncreaseScaleThresholdWhenRotating()) {
                MapGestureDetector.this.gesturesManager.getStandardScaleGestureDetector().setSpanSinceStartThreshold(this.minimumScaleSpanWhenRotating);
                MapGestureDetector.this.gesturesManager.getStandardScaleGestureDetector().interrupt();
            }
            MapGestureDetector.this.cancelTransitionsIfRequired();
            MapGestureDetector.this.notifyOnRotateBeginListeners(lVar);
            return true;
        }

        public final boolean onRotate(l lVar, float f, float f2) {
            MapGestureDetector.this.cameraChangeDispatcher.onCameraMoveStarted(1);
            double rawBearing = MapGestureDetector.this.transform.getRawBearing();
            double d = (double) f;
            Double.isNaN(d);
            double d2 = rawBearing + d;
            PointF rotateFocalPoint = getRotateFocalPoint(lVar);
            MapGestureDetector.this.transform.setBearing(d2, rotateFocalPoint.x, rotateFocalPoint.y);
            MapGestureDetector.this.notifyOnRotateListeners(lVar);
            return true;
        }

        public final void onRotateEnd(l lVar, float f, float f2, float f3) {
            if (MapGestureDetector.this.uiSettings.isIncreaseScaleThresholdWhenRotating()) {
                MapGestureDetector.this.gesturesManager.getStandardScaleGestureDetector().setSpanSinceStartThreshold(this.defaultSpanSinceStartThreshold);
            }
            MapGestureDetector.this.notifyOnRotateEndListeners(lVar);
            float clamp = MathUtils.clamp(f3 * this.angularVelocityMultiplier, -30.0f, 30.0f);
            double abs = (double) (Math.abs(lVar.getDeltaSinceLast()) / (Math.abs(f) + Math.abs(f2)));
            if (!MapGestureDetector.this.uiSettings.isRotateVelocityAnimationEnabled() || Math.abs(clamp) < this.minimumAngularVelocity || (MapGestureDetector.this.gesturesManager.getStandardScaleGestureDetector().isInProgress() && abs < this.rotateVelocityRatioThreshold)) {
                MapGestureDetector.this.dispatchCameraIdle();
                return;
            }
            double abs2 = (double) Math.abs(clamp);
            Double.isNaN(abs2);
            Animator unused = MapGestureDetector.this.rotateAnimator = createRotateAnimator(clamp, (long) ((Math.log(abs2 + (1.0d / Math.pow(2.718281828459045d, 2.0d))) + 2.0d) * 150.0d), getRotateFocalPoint(lVar));
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            mapGestureDetector.scheduleAnimator(mapGestureDetector.rotateAnimator);
        }

        private PointF getRotateFocalPoint(l lVar) {
            if (MapGestureDetector.this.constantFocalPoint != null) {
                return MapGestureDetector.this.constantFocalPoint;
            }
            return lVar.getFocalPoint();
        }

        private Animator createRotateAnimator(float f, long j, final PointF pointF) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{f, 0.0f});
            ofFloat.setDuration(j);
            ofFloat.setInterpolator(new DecelerateInterpolator());
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    Transform access$300 = MapGestureDetector.this.transform;
                    double rawBearing = MapGestureDetector.this.transform.getRawBearing();
                    double floatValue = (double) ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    Double.isNaN(floatValue);
                    access$300.setBearing(rawBearing + floatValue, pointF.x, pointF.y, 0);
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() {
                public void onAnimationStart(Animator animator) {
                    MapGestureDetector.this.transform.cancelTransitions();
                    MapGestureDetector.this.cameraChangeDispatcher.onCameraMoveStarted(1);
                }

                public void onAnimationCancel(Animator animator) {
                    MapGestureDetector.this.transform.cancelTransitions();
                }

                public void onAnimationEnd(Animator animator) {
                    MapGestureDetector.this.dispatchCameraIdle();
                }
            });
            return ofFloat;
        }
    }

    final class ScaleGestureListener extends p.a {
        private final float minimumAngledGestureSpeed;
        private final float minimumGestureSpeed;
        private final float minimumVelocity;
        private boolean quickZoom;
        private final double scaleVelocityRatioThreshold;
        private double screenHeight;
        private float spanSinceLast;
        private double startZoom;

        ScaleGestureListener(double d, float f, float f2, float f3) {
            this.minimumGestureSpeed = f;
            this.minimumAngledGestureSpeed = f2;
            this.minimumVelocity = f3;
            this.scaleVelocityRatioThreshold = d * 0.004d;
        }

        public final boolean onScaleBegin(p pVar) {
            this.quickZoom = pVar.getPointersCount() == 1;
            if (!MapGestureDetector.this.uiSettings.isZoomGesturesEnabled()) {
                return false;
            }
            if (this.quickZoom) {
                if (!MapGestureDetector.this.uiSettings.isQuickZoomGesturesEnabled()) {
                    return false;
                }
                MapGestureDetector.this.gesturesManager.getMoveGestureDetector().setEnabled(false);
            } else if (pVar.getPreviousSpan() <= 0.0f) {
                return false;
            } else {
                float currentSpan = pVar.getCurrentSpan();
                float previousSpan = pVar.getPreviousSpan();
                double eventTime = (double) pVar.getCurrentEvent().getEventTime();
                double eventTime2 = (double) pVar.getPreviousEvent().getEventTime();
                if (eventTime == eventTime2) {
                    return false;
                }
                double abs = (double) Math.abs(currentSpan - previousSpan);
                Double.isNaN(eventTime);
                Double.isNaN(eventTime2);
                Double.isNaN(abs);
                double d = abs / (eventTime - eventTime2);
                if (d < ((double) this.minimumGestureSpeed)) {
                    return false;
                }
                if (!MapGestureDetector.this.gesturesManager.getRotateGestureDetector().isInProgress()) {
                    if (((double) Math.abs(MapGestureDetector.this.gesturesManager.getRotateGestureDetector().getDeltaSinceLast())) > 0.4d && d < ((double) this.minimumAngledGestureSpeed)) {
                        return false;
                    }
                    if (MapGestureDetector.this.uiSettings.isDisableRotateWhenScaling()) {
                        MapGestureDetector.this.gesturesManager.getRotateGestureDetector().setEnabled(false);
                    }
                }
            }
            this.screenHeight = (double) Resources.getSystem().getDisplayMetrics().heightPixels;
            this.startZoom = MapGestureDetector.this.transform.getRawZoom();
            MapGestureDetector.this.cancelTransitionsIfRequired();
            MapGestureDetector.this.notifyOnScaleBeginListeners(pVar);
            this.spanSinceLast = Math.abs(pVar.getCurrentSpan() - pVar.getPreviousSpan());
            return true;
        }

        public final boolean onScale(p pVar) {
            MapGestureDetector.this.cameraChangeDispatcher.onCameraMoveStarted(1);
            PointF scaleFocalPoint = getScaleFocalPoint(pVar);
            if (this.quickZoom) {
                double abs = (double) Math.abs(pVar.getCurrentEvent().getY() - MapGestureDetector.this.doubleTapFocalPoint.y);
                boolean z = pVar.getCurrentEvent().getY() < MapGestureDetector.this.doubleTapFocalPoint.y;
                double normalize = MathUtils.normalize(abs, 0.0d, this.screenHeight, 0.0d, 4.0d);
                double d = this.startZoom;
                double d2 = z ? d - normalize : d + normalize;
                double zoomRate = (double) MapGestureDetector.this.uiSettings.getZoomRate();
                Double.isNaN(zoomRate);
                MapGestureDetector.this.transform.setZoom(d2 * zoomRate, scaleFocalPoint);
            } else {
                double zoomRate2 = (double) MapGestureDetector.this.uiSettings.getZoomRate();
                Double.isNaN(zoomRate2);
                MapGestureDetector.this.transform.zoomBy((Math.log((double) pVar.getScaleFactor()) / Math.log(1.5707963267948966d)) * 0.6499999761581421d * zoomRate2, scaleFocalPoint);
            }
            MapGestureDetector.this.notifyOnScaleListeners(pVar);
            this.spanSinceLast = Math.abs(pVar.getCurrentSpan() - pVar.getPreviousSpan());
            return true;
        }

        public final void onScaleEnd(p pVar, float f, float f2) {
            if (this.quickZoom) {
                MapGestureDetector.this.gesturesManager.getMoveGestureDetector().setEnabled(true);
            } else {
                MapGestureDetector.this.gesturesManager.getRotateGestureDetector().setEnabled(true);
            }
            MapGestureDetector.this.notifyOnScaleEndListeners(pVar);
            float abs = Math.abs(f) + Math.abs(f2);
            if (!MapGestureDetector.this.uiSettings.isScaleVelocityAnimationEnabled() || abs < this.minimumVelocity || ((double) (this.spanSinceLast / abs)) < this.scaleVelocityRatioThreshold) {
                MapGestureDetector.this.dispatchCameraIdle();
                return;
            }
            double calculateScale = calculateScale((double) abs, pVar.isScalingOut());
            double rawZoom = MapGestureDetector.this.transform.getRawZoom();
            PointF scaleFocalPoint = getScaleFocalPoint(pVar);
            long log = (long) ((Math.log(Math.abs(calculateScale) + (1.0d / Math.pow(2.718281828459045d, 2.0d))) + 2.0d) * 150.0d);
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            Animator unused = mapGestureDetector.scaleAnimator = mapGestureDetector.createScaleAnimator(rawZoom, calculateScale, scaleFocalPoint, log);
            MapGestureDetector mapGestureDetector2 = MapGestureDetector.this;
            mapGestureDetector2.scheduleAnimator(mapGestureDetector2.scaleAnimator);
        }

        private PointF getScaleFocalPoint(p pVar) {
            if (MapGestureDetector.this.constantFocalPoint != null) {
                return MapGestureDetector.this.constantFocalPoint;
            }
            if (this.quickZoom) {
                return new PointF(MapGestureDetector.this.uiSettings.getWidth() / 2.0f, MapGestureDetector.this.uiSettings.getHeight() / 2.0f);
            }
            return pVar.getFocalPoint();
        }

        private double calculateScale(double d, boolean z) {
            double clamp = MathUtils.clamp(d * 2.5d * 1.0E-4d, 0.0d, 2.5d);
            return z ? -clamp : clamp;
        }
    }

    final class ShoveGestureListener extends m.b {
        private ShoveGestureListener() {
        }

        public final boolean onShoveBegin(m mVar) {
            if (!MapGestureDetector.this.uiSettings.isTiltGesturesEnabled()) {
                return false;
            }
            MapGestureDetector.this.cancelTransitionsIfRequired();
            MapGestureDetector.this.gesturesManager.getMoveGestureDetector().setEnabled(false);
            MapGestureDetector.this.notifyOnShoveBeginListeners(mVar);
            return true;
        }

        public final boolean onShove(m mVar, float f, float f2) {
            MapGestureDetector.this.cameraChangeDispatcher.onCameraMoveStarted(1);
            double tilt = MapGestureDetector.this.transform.getTilt();
            double d = (double) (f * 0.1f);
            Double.isNaN(d);
            MapGestureDetector.this.transform.setTilt(Double.valueOf(MathUtils.clamp(tilt - d, 0.0d, 60.0d)));
            MapGestureDetector.this.notifyOnShoveListeners(mVar);
            return true;
        }

        public final void onShoveEnd(m mVar, float f, float f2) {
            MapGestureDetector.this.dispatchCameraIdle();
            MapGestureDetector.this.gesturesManager.getMoveGestureDetector().setEnabled(true);
            MapGestureDetector.this.notifyOnShoveEndListeners(mVar);
        }
    }

    final class StandardGestureListener extends o.a {
        private final float doubleTapMovementThreshold;

        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        StandardGestureListener(float f) {
            this.doubleTapMovementThreshold = f;
        }

        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            MapGestureDetector.this.transform.cancelTransitions();
            return true;
        }

        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
            if (!MapGestureDetector.this.annotationManager.onTap(pointF)) {
                if (MapGestureDetector.this.uiSettings.isDeselectMarkersOnTap()) {
                    MapGestureDetector.this.annotationManager.deselectMarkers();
                }
                MapGestureDetector.this.notifyOnMapClickListeners(pointF);
            }
            return true;
        }

        public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() == 0) {
                PointF unused = MapGestureDetector.this.doubleTapFocalPoint = new PointF(motionEvent.getX(), motionEvent.getY());
                MapGestureDetector.this.doubleTapStarted();
            }
            if (motionEvent.getActionMasked() != 1) {
                return super.onDoubleTapEvent(motionEvent);
            }
            float abs = Math.abs(motionEvent.getX() - MapGestureDetector.this.doubleTapFocalPoint.x);
            float abs2 = Math.abs(motionEvent.getY() - MapGestureDetector.this.doubleTapFocalPoint.y);
            float f = this.doubleTapMovementThreshold;
            if (abs > f || abs2 > f || !MapGestureDetector.this.uiSettings.isZoomGesturesEnabled() || !MapGestureDetector.this.uiSettings.isDoubleTapGesturesEnabled()) {
                return false;
            }
            if (MapGestureDetector.this.constantFocalPoint != null) {
                MapGestureDetector mapGestureDetector = MapGestureDetector.this;
                PointF unused2 = mapGestureDetector.doubleTapFocalPoint = mapGestureDetector.constantFocalPoint;
            }
            MapGestureDetector mapGestureDetector2 = MapGestureDetector.this;
            mapGestureDetector2.zoomInAnimated(mapGestureDetector2.doubleTapFocalPoint, false);
            return true;
        }

        public final void onLongPress(MotionEvent motionEvent) {
            MapGestureDetector.this.notifyOnMapLongClickListeners(new PointF(motionEvent.getX(), motionEvent.getY()));
        }

        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            float f3 = f;
            float f4 = f2;
            if (!MapGestureDetector.this.uiSettings.isScrollGesturesEnabled()) {
                return false;
            }
            MapGestureDetector.this.notifyOnFlingListeners();
            if (!MapGestureDetector.this.uiSettings.isFlingVelocityAnimationEnabled()) {
                return false;
            }
            float pixelRatio = MapGestureDetector.this.uiSettings.getPixelRatio();
            double hypot = Math.hypot((double) (f3 / pixelRatio), (double) (f4 / pixelRatio));
            if (hypot < 1000.0d) {
                return false;
            }
            MapGestureDetector.this.transform.cancelTransitions();
            MapGestureDetector.this.cameraChangeDispatcher.onCameraMoveStarted(1);
            double tilt = MapGestureDetector.this.transform.getTilt();
            double d = 0.0d;
            if (tilt != 0.0d) {
                d = tilt / 10.0d;
            }
            double d2 = d + 1.5d;
            double d3 = (double) f3;
            Double.isNaN(d3);
            double d4 = (double) pixelRatio;
            Double.isNaN(d4);
            double d5 = (double) f4;
            Double.isNaN(d5);
            Double.isNaN(d4);
            MapGestureDetector.this.transform.moveBy((d3 / d2) / d4, (d5 / d2) / d4, (long) (((hypot / 7.0d) / d2) + 150.0d));
            return true;
        }
    }

    final class TapGestureListener implements g.a {
        private TapGestureListener() {
        }

        public final boolean onMultiFingerTap(g gVar, int i) {
            PointF pointF;
            if (!MapGestureDetector.this.uiSettings.isZoomGesturesEnabled() || i != 2) {
                return false;
            }
            MapGestureDetector.this.transform.cancelTransitions();
            MapGestureDetector.this.cameraChangeDispatcher.onCameraMoveStarted(1);
            if (MapGestureDetector.this.constantFocalPoint != null) {
                pointF = MapGestureDetector.this.constantFocalPoint;
            } else {
                pointF = gVar.getFocalPoint();
            }
            MapGestureDetector.this.zoomOutAnimated(pointF, false);
            return true;
        }
    }

    MapGestureDetector(Context context, Transform transform2, Projection projection2, UiSettings uiSettings2, AnnotationManager annotationManager2, CameraChangeDispatcher cameraChangeDispatcher2) {
        this.annotationManager = annotationManager2;
        this.transform = transform2;
        this.projection = projection2;
        this.uiSettings = uiSettings2;
        this.cameraChangeDispatcher = cameraChangeDispatcher2;
        if (context != null) {
            initializeGesturesManager(new a(context), true);
            initializeGestureListeners(context, true);
        }
    }

    private void initializeGestureListeners(Context context, boolean z) {
        if (z) {
            StandardGestureListener standardGestureListener = new StandardGestureListener(context.getResources().getDimension(k.a.mapbox_defaultScaleSpanSinceStartThreshold));
            MoveGestureListener moveGestureListener = new MoveGestureListener();
            ScaleGestureListener scaleGestureListener = new ScaleGestureListener((double) context.getResources().getDimension(R.dimen.mapbox_density_constant), context.getResources().getDimension(R.dimen.mapbox_minimum_scale_speed), context.getResources().getDimension(R.dimen.mapbox_minimum_angled_scale_speed), context.getResources().getDimension(R.dimen.mapbox_minimum_scale_velocity));
            RotateGestureListener rotateGestureListener = new RotateGestureListener(context.getResources().getDimension(R.dimen.mapbox_minimum_scale_span_when_rotating), (double) context.getResources().getDimension(R.dimen.mapbox_density_constant), context.getResources().getDimension(R.dimen.mapbox_angular_velocity_multiplier), context.getResources().getDimension(R.dimen.mapbox_minimum_angular_velocity), context.getResources().getDimension(k.a.mapbox_defaultScaleSpanSinceStartThreshold));
            ShoveGestureListener shoveGestureListener = new ShoveGestureListener();
            TapGestureListener tapGestureListener = new TapGestureListener();
            this.gesturesManager.setStandardGestureListener(standardGestureListener);
            this.gesturesManager.setMoveGestureListener(moveGestureListener);
            this.gesturesManager.setStandardScaleGestureListener(scaleGestureListener);
            this.gesturesManager.setRotateGestureListener(rotateGestureListener);
            this.gesturesManager.setShoveGestureListener(shoveGestureListener);
            this.gesturesManager.setMultiFingerTapGestureListener(tapGestureListener);
        }
    }

    private void initializeGesturesManager(a aVar, boolean z) {
        if (z) {
            HashSet hashSet = new HashSet();
            hashSet.add(3);
            hashSet.add(1);
            HashSet hashSet2 = new HashSet();
            hashSet2.add(3);
            hashSet2.add(2);
            HashSet hashSet3 = new HashSet();
            hashSet3.add(1);
            hashSet3.add(6);
            aVar.setMutuallyExclusiveGestures((Set<Integer>[]) new Set[]{hashSet, hashSet2, hashSet3});
        }
        this.gesturesManager = aVar;
        this.gesturesManager.getRotateGestureDetector().setAngleThreshold(3.0f);
    }

    /* access modifiers changed from: package-private */
    public final void setFocalPoint(PointF pointF) {
        if (pointF == null && this.uiSettings.getFocalPoint() != null) {
            pointF = this.uiSettings.getFocalPoint();
        }
        this.constantFocalPoint = pointF;
    }

    /* access modifiers changed from: package-private */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        if (motionEvent.getButtonState() != 0 && motionEvent.getButtonState() != 1) {
            return false;
        }
        if (motionEvent.getActionMasked() == 0) {
            cancelAnimators();
            this.transform.setGestureInProgress(true);
        }
        boolean onTouchEvent = this.gesturesManager.onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            doubleTapFinished();
            this.transform.setGestureInProgress(false);
            if (!this.scheduledAnimators.isEmpty()) {
                this.animationsTimeoutHandler.removeCallbacksAndMessages(null);
                for (Animator start : this.scheduledAnimators) {
                    start.start();
                }
                this.scheduledAnimators.clear();
            }
        } else if (actionMasked == 3) {
            this.scheduledAnimators.clear();
            this.transform.setGestureInProgress(false);
            doubleTapFinished();
        } else if (actionMasked == 5) {
            doubleTapFinished();
        }
        return onTouchEvent;
    }

    /* access modifiers changed from: package-private */
    public final void cancelAnimators() {
        this.animationsTimeoutHandler.removeCallbacksAndMessages(null);
        this.scheduledAnimators.clear();
        cancelAnimator(this.scaleAnimator);
        cancelAnimator(this.rotateAnimator);
        dispatchCameraIdle();
    }

    private void cancelAnimator(Animator animator) {
        if (animator != null && animator.isStarted()) {
            animator.cancel();
        }
    }

    /* access modifiers changed from: private */
    public void scheduleAnimator(Animator animator) {
        this.scheduledAnimators.add(animator);
        this.animationsTimeoutHandler.removeCallbacksAndMessages(null);
        this.animationsTimeoutHandler.postDelayed(this.cancelAnimatorsRunnable, 150);
    }

    /* access modifiers changed from: package-private */
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 2 || motionEvent.getActionMasked() != 8 || !this.uiSettings.isZoomGesturesEnabled()) {
            return false;
        }
        this.transform.cancelTransitions();
        this.transform.zoomBy((double) motionEvent.getAxisValue(9), new PointF(motionEvent.getX(), motionEvent.getY()));
        return true;
    }

    /* access modifiers changed from: private */
    public void doubleTapStarted() {
        this.gesturesManager.getMoveGestureDetector().setEnabled(false);
        this.doubleTapRegistered = true;
    }

    private void doubleTapFinished() {
        if (this.doubleTapRegistered) {
            this.gesturesManager.getMoveGestureDetector().setEnabled(true);
            this.doubleTapRegistered = false;
        }
    }

    /* access modifiers changed from: private */
    public Animator createScaleAnimator(double d, double d2, final PointF pointF, long j) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{(float) d, (float) (d + d2)});
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                MapGestureDetector.this.transform.setZoom((double) ((Float) valueAnimator.getAnimatedValue()).floatValue(), pointF);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() {
            public void onAnimationStart(Animator animator) {
                MapGestureDetector.this.transform.cancelTransitions();
                MapGestureDetector.this.cameraChangeDispatcher.onCameraMoveStarted(1);
            }

            public void onAnimationCancel(Animator animator) {
                MapGestureDetector.this.transform.cancelTransitions();
            }

            public void onAnimationEnd(Animator animator) {
                MapGestureDetector.this.dispatchCameraIdle();
            }
        });
        return ofFloat;
    }

    /* access modifiers changed from: package-private */
    public final void zoomInAnimated(PointF pointF, boolean z) {
        zoomAnimated(true, pointF, z);
    }

    /* access modifiers changed from: package-private */
    public final void zoomOutAnimated(PointF pointF, boolean z) {
        zoomAnimated(false, pointF, z);
    }

    private void zoomAnimated(boolean z, PointF pointF, boolean z2) {
        cancelAnimator(this.scaleAnimator);
        this.scaleAnimator = createScaleAnimator(this.transform.getRawZoom(), z ? 1.0d : -1.0d, pointF, 300);
        if (z2) {
            this.scaleAnimator.start();
        } else {
            scheduleAnimator(this.scaleAnimator);
        }
    }

    /* access modifiers changed from: private */
    public void dispatchCameraIdle() {
        if (noGesturesInProgress()) {
            this.transform.invalidateCameraPosition();
            this.cameraChangeDispatcher.onCameraIdle();
        }
    }

    /* access modifiers changed from: private */
    public void cancelTransitionsIfRequired() {
        if (noGesturesInProgress()) {
            this.transform.cancelTransitions();
        }
    }

    private boolean noGesturesInProgress() {
        return (!this.uiSettings.isScrollGesturesEnabled() || !this.gesturesManager.getMoveGestureDetector().isInProgress()) && (!this.uiSettings.isZoomGesturesEnabled() || !this.gesturesManager.getStandardScaleGestureDetector().isInProgress()) && ((!this.uiSettings.isRotateGesturesEnabled() || !this.gesturesManager.getRotateGestureDetector().isInProgress()) && (!this.uiSettings.isTiltGesturesEnabled() || !this.gesturesManager.getShoveGestureDetector().isInProgress()));
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnMapClickListeners(PointF pointF) {
        Iterator<MapboxMap.OnMapClickListener> it = this.onMapClickListenerList.iterator();
        while (it.hasNext()) {
            if (it.next().onMapClick(this.projection.fromScreenLocation(pointF))) {
                return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnMapLongClickListeners(PointF pointF) {
        Iterator<MapboxMap.OnMapLongClickListener> it = this.onMapLongClickListenerList.iterator();
        while (it.hasNext()) {
            if (it.next().onMapLongClick(this.projection.fromScreenLocation(pointF))) {
                return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnFlingListeners() {
        Iterator<MapboxMap.OnFlingListener> it = this.onFlingListenerList.iterator();
        while (it.hasNext()) {
            it.next().onFling();
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnMoveBeginListeners(d dVar) {
        Iterator<MapboxMap.OnMoveListener> it = this.onMoveListenerList.iterator();
        while (it.hasNext()) {
            it.next().onMoveBegin(dVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnMoveListeners(d dVar) {
        Iterator<MapboxMap.OnMoveListener> it = this.onMoveListenerList.iterator();
        while (it.hasNext()) {
            it.next().onMove(dVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnMoveEndListeners(d dVar) {
        Iterator<MapboxMap.OnMoveListener> it = this.onMoveListenerList.iterator();
        while (it.hasNext()) {
            it.next().onMoveEnd(dVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnRotateBeginListeners(l lVar) {
        Iterator<MapboxMap.OnRotateListener> it = this.onRotateListenerList.iterator();
        while (it.hasNext()) {
            it.next().onRotateBegin(lVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnRotateListeners(l lVar) {
        Iterator<MapboxMap.OnRotateListener> it = this.onRotateListenerList.iterator();
        while (it.hasNext()) {
            it.next().onRotate(lVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnRotateEndListeners(l lVar) {
        Iterator<MapboxMap.OnRotateListener> it = this.onRotateListenerList.iterator();
        while (it.hasNext()) {
            it.next().onRotateEnd(lVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnScaleBeginListeners(p pVar) {
        Iterator<MapboxMap.OnScaleListener> it = this.onScaleListenerList.iterator();
        while (it.hasNext()) {
            it.next().onScaleBegin(pVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnScaleListeners(p pVar) {
        Iterator<MapboxMap.OnScaleListener> it = this.onScaleListenerList.iterator();
        while (it.hasNext()) {
            it.next().onScale(pVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnScaleEndListeners(p pVar) {
        Iterator<MapboxMap.OnScaleListener> it = this.onScaleListenerList.iterator();
        while (it.hasNext()) {
            it.next().onScaleEnd(pVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnShoveBeginListeners(m mVar) {
        Iterator<MapboxMap.OnShoveListener> it = this.onShoveListenerList.iterator();
        while (it.hasNext()) {
            it.next().onShoveBegin(mVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnShoveListeners(m mVar) {
        Iterator<MapboxMap.OnShoveListener> it = this.onShoveListenerList.iterator();
        while (it.hasNext()) {
            it.next().onShove(mVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyOnShoveEndListeners(m mVar) {
        Iterator<MapboxMap.OnShoveListener> it = this.onShoveListenerList.iterator();
        while (it.hasNext()) {
            it.next().onShoveEnd(mVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void addOnMapClickListener(MapboxMap.OnMapClickListener onMapClickListener) {
        this.onMapClickListenerList.add(onMapClickListener);
    }

    /* access modifiers changed from: package-private */
    public final void removeOnMapClickListener(MapboxMap.OnMapClickListener onMapClickListener) {
        this.onMapClickListenerList.remove(onMapClickListener);
    }

    /* access modifiers changed from: package-private */
    public final void addOnMapLongClickListener(MapboxMap.OnMapLongClickListener onMapLongClickListener) {
        this.onMapLongClickListenerList.add(onMapLongClickListener);
    }

    /* access modifiers changed from: package-private */
    public final void removeOnMapLongClickListener(MapboxMap.OnMapLongClickListener onMapLongClickListener) {
        this.onMapLongClickListenerList.remove(onMapLongClickListener);
    }

    /* access modifiers changed from: package-private */
    public final void addOnFlingListener(MapboxMap.OnFlingListener onFlingListener) {
        this.onFlingListenerList.add(onFlingListener);
    }

    /* access modifiers changed from: package-private */
    public final void removeOnFlingListener(MapboxMap.OnFlingListener onFlingListener) {
        this.onFlingListenerList.remove(onFlingListener);
    }

    /* access modifiers changed from: package-private */
    public final void addOnMoveListener(MapboxMap.OnMoveListener onMoveListener) {
        this.onMoveListenerList.add(onMoveListener);
    }

    /* access modifiers changed from: package-private */
    public final void removeOnMoveListener(MapboxMap.OnMoveListener onMoveListener) {
        this.onMoveListenerList.remove(onMoveListener);
    }

    /* access modifiers changed from: package-private */
    public final void addOnRotateListener(MapboxMap.OnRotateListener onRotateListener) {
        this.onRotateListenerList.add(onRotateListener);
    }

    /* access modifiers changed from: package-private */
    public final void removeOnRotateListener(MapboxMap.OnRotateListener onRotateListener) {
        this.onRotateListenerList.remove(onRotateListener);
    }

    /* access modifiers changed from: package-private */
    public final void addOnScaleListener(MapboxMap.OnScaleListener onScaleListener) {
        this.onScaleListenerList.add(onScaleListener);
    }

    /* access modifiers changed from: package-private */
    public final void removeOnScaleListener(MapboxMap.OnScaleListener onScaleListener) {
        this.onScaleListenerList.remove(onScaleListener);
    }

    /* access modifiers changed from: package-private */
    public final void addShoveListener(MapboxMap.OnShoveListener onShoveListener) {
        this.onShoveListenerList.add(onShoveListener);
    }

    /* access modifiers changed from: package-private */
    public final void removeShoveListener(MapboxMap.OnShoveListener onShoveListener) {
        this.onShoveListenerList.remove(onShoveListener);
    }

    /* access modifiers changed from: package-private */
    public final a getGesturesManager() {
        return this.gesturesManager;
    }

    /* access modifiers changed from: package-private */
    public final void setGesturesManager(Context context, a aVar, boolean z, boolean z2) {
        initializeGesturesManager(aVar, z2);
        initializeGestureListeners(context, z);
    }
}
