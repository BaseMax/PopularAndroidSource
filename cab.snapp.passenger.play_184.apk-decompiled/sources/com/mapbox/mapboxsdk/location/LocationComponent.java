package com.mapbox.mapboxsdk.location;

import android.content.Context;
import android.hardware.SensorManager;
import android.location.Location;
import android.os.Looper;
import android.os.SystemClock;
import android.view.WindowManager;
import com.mapbox.android.a.b.c;
import com.mapbox.android.a.b.d;
import com.mapbox.android.a.b.f;
import com.mapbox.android.a.b.h;
import com.mapbox.android.a.b.i;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.maps.Transform;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class LocationComponent {
    private static final String TAG = "Mbgl-LocationComponent";
    OnCameraTrackingChangedListener cameraTrackingChangedListener;
    private CompassEngine compassEngine;
    private CompassListener compassListener;
    private d<i> currentLocationEngineListener;
    private final MapboxMap.OnDeveloperAnimationListener developerAnimationListener;
    private long fastestInterval;
    private InternalLocationEngineProvider internalLocationEngineProvider;
    /* access modifiers changed from: private */
    public boolean isComponentInitialized;
    private boolean isComponentStarted;
    /* access modifiers changed from: private */
    public boolean isEnabled;
    private boolean isLayerReady;
    private boolean isListeningToCompass;
    private CameraPosition lastCameraPosition;
    private Location lastLocation;
    private d<i> lastLocationEngineListener;
    private long lastUpdateTime;
    /* access modifiers changed from: private */
    public LocationAnimatorCoordinator locationAnimatorCoordinator;
    private LocationCameraController locationCameraController;
    private c locationEngine;
    private h locationEngineRequest;
    /* access modifiers changed from: private */
    public LocationLayerController locationLayerController;
    /* access modifiers changed from: private */
    public final MapboxMap mapboxMap;
    private MapboxMap.OnCameraIdleListener onCameraIdleListener;
    private OnCameraMoveInvalidateListener onCameraMoveInvalidateListener;
    /* access modifiers changed from: private */
    public MapboxMap.OnCameraMoveListener onCameraMoveListener;
    /* access modifiers changed from: private */
    public final CopyOnWriteArrayList<OnCameraTrackingChangedListener> onCameraTrackingChangedListeners;
    /* access modifiers changed from: private */
    public final CopyOnWriteArrayList<OnLocationClickListener> onLocationClickListeners;
    /* access modifiers changed from: private */
    public final CopyOnWriteArrayList<OnLocationLongClickListener> onLocationLongClickListeners;
    private OnLocationStaleListener onLocationStaleListener;
    /* access modifiers changed from: private */
    public final CopyOnWriteArrayList<OnLocationStaleListener> onLocationStaleListeners;
    private MapboxMap.OnMapClickListener onMapClickListener;
    private MapboxMap.OnMapLongClickListener onMapLongClickListener;
    /* access modifiers changed from: private */
    public final CopyOnWriteArrayList<OnRenderModeChangedListener> onRenderModeChangedListeners;
    private LocationComponentOptions options;
    OnRenderModeChangedListener renderModeChangedListener;
    private StaleStateManager staleStateManager;
    private Style style;
    private final Transform transform;

    class CameraTransitionListener implements OnLocationCameraTransitionListener {
        private final OnLocationCameraTransitionListener externalListener;

        private CameraTransitionListener(OnLocationCameraTransitionListener onLocationCameraTransitionListener) {
            this.externalListener = onLocationCameraTransitionListener;
        }

        public void onLocationCameraTransitionFinished(int i) {
            OnLocationCameraTransitionListener onLocationCameraTransitionListener = this.externalListener;
            if (onLocationCameraTransitionListener != null) {
                onLocationCameraTransitionListener.onLocationCameraTransitionFinished(i);
            }
            reset(i);
        }

        public void onLocationCameraTransitionCanceled(int i) {
            OnLocationCameraTransitionListener onLocationCameraTransitionListener = this.externalListener;
            if (onLocationCameraTransitionListener != null) {
                onLocationCameraTransitionListener.onLocationCameraTransitionCanceled(i);
            }
            reset(i);
        }

        private void reset(int i) {
            LocationComponent.this.locationAnimatorCoordinator.resetAllCameraAnimations(LocationComponent.this.mapboxMap.getCameraPosition(), i == 36);
        }
    }

    static final class CurrentLocationEngineCallback implements d<i> {
        private final WeakReference<LocationComponent> componentWeakReference;

        CurrentLocationEngineCallback(LocationComponent locationComponent) {
            this.componentWeakReference = new WeakReference<>(locationComponent);
        }

        public final void onSuccess(i iVar) {
            LocationComponent locationComponent = (LocationComponent) this.componentWeakReference.get();
            if (locationComponent != null) {
                locationComponent.updateLocation(iVar.getLastLocation(), false);
            }
        }

        public final void onFailure(Exception exc) {
            Logger.e(LocationComponent.TAG, "Failed to obtain location update", exc);
        }
    }

    static class InternalLocationEngineProvider {
        InternalLocationEngineProvider() {
        }

        /* access modifiers changed from: package-private */
        public c getBestLocationEngine(Context context, boolean z) {
            return f.getBestLocationEngine(context, z);
        }
    }

    static final class LastLocationEngineCallback implements d<i> {
        private final WeakReference<LocationComponent> componentWeakReference;

        LastLocationEngineCallback(LocationComponent locationComponent) {
            this.componentWeakReference = new WeakReference<>(locationComponent);
        }

        public final void onSuccess(i iVar) {
            LocationComponent locationComponent = (LocationComponent) this.componentWeakReference.get();
            if (locationComponent != null) {
                locationComponent.updateLocation(iVar.getLastLocation(), true);
            }
        }

        public final void onFailure(Exception exc) {
            Logger.e(LocationComponent.TAG, "Failed to obtain last location update", exc);
        }
    }

    public final void onDestroy() {
    }

    public LocationComponent(MapboxMap mapboxMap2, Transform transform2, List<MapboxMap.OnDeveloperAnimationListener> list) {
        this.internalLocationEngineProvider = new InternalLocationEngineProvider();
        this.locationEngineRequest = new h.a(1000).setFastestInterval(1000).setPriority(0).build();
        this.currentLocationEngineListener = new CurrentLocationEngineCallback(this);
        this.lastLocationEngineListener = new LastLocationEngineCallback(this);
        this.onLocationStaleListeners = new CopyOnWriteArrayList<>();
        this.onLocationClickListeners = new CopyOnWriteArrayList<>();
        this.onLocationLongClickListeners = new CopyOnWriteArrayList<>();
        this.onCameraTrackingChangedListeners = new CopyOnWriteArrayList<>();
        this.onRenderModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onCameraMoveListener = new MapboxMap.OnCameraMoveListener() {
            public void onCameraMove() {
                LocationComponent.this.updateLayerOffsets(false);
            }
        };
        this.onCameraIdleListener = new MapboxMap.OnCameraIdleListener() {
            public void onCameraIdle() {
                LocationComponent.this.updateLayerOffsets(false);
            }
        };
        this.onMapClickListener = new MapboxMap.OnMapClickListener() {
            public boolean onMapClick(LatLng latLng) {
                if (LocationComponent.this.onLocationClickListeners.isEmpty() || !LocationComponent.this.locationLayerController.onMapClick(latLng)) {
                    return false;
                }
                Iterator it = LocationComponent.this.onLocationClickListeners.iterator();
                while (it.hasNext()) {
                    ((OnLocationClickListener) it.next()).onLocationComponentClick();
                }
                return true;
            }
        };
        this.onMapLongClickListener = new MapboxMap.OnMapLongClickListener() {
            public boolean onMapLongClick(LatLng latLng) {
                if (LocationComponent.this.onLocationLongClickListeners.isEmpty() || !LocationComponent.this.locationLayerController.onMapClick(latLng)) {
                    return false;
                }
                Iterator it = LocationComponent.this.onLocationLongClickListeners.iterator();
                while (it.hasNext()) {
                    ((OnLocationLongClickListener) it.next()).onLocationComponentLongClick();
                }
                return true;
            }
        };
        this.onLocationStaleListener = new OnLocationStaleListener() {
            public void onStaleStateChange(boolean z) {
                LocationComponent.this.locationLayerController.setLocationsStale(z);
                Iterator it = LocationComponent.this.onLocationStaleListeners.iterator();
                while (it.hasNext()) {
                    ((OnLocationStaleListener) it.next()).onStaleStateChange(z);
                }
            }
        };
        this.onCameraMoveInvalidateListener = new OnCameraMoveInvalidateListener() {
            public void onInvalidateCameraMove() {
                LocationComponent.this.onCameraMoveListener.onCameraMove();
            }
        };
        this.compassListener = new CompassListener() {
            public void onCompassAccuracyChange(int i) {
            }

            public void onCompassChanged(float f) {
                LocationComponent.this.updateCompassHeading(f);
            }
        };
        this.cameraTrackingChangedListener = new OnCameraTrackingChangedListener() {
            public void onCameraTrackingDismissed() {
                Iterator it = LocationComponent.this.onCameraTrackingChangedListeners.iterator();
                while (it.hasNext()) {
                    ((OnCameraTrackingChangedListener) it.next()).onCameraTrackingDismissed();
                }
            }

            public void onCameraTrackingChanged(int i) {
                LocationComponent.this.locationAnimatorCoordinator.cancelZoomAnimation();
                LocationComponent.this.locationAnimatorCoordinator.cancelTiltAnimation();
                LocationComponent.this.updateAnimatorListenerHolders();
                Iterator it = LocationComponent.this.onCameraTrackingChangedListeners.iterator();
                while (it.hasNext()) {
                    ((OnCameraTrackingChangedListener) it.next()).onCameraTrackingChanged(i);
                }
            }
        };
        this.renderModeChangedListener = new OnRenderModeChangedListener() {
            public void onRenderModeChanged(int i) {
                LocationComponent.this.updateAnimatorListenerHolders();
                Iterator it = LocationComponent.this.onRenderModeChangedListeners.iterator();
                while (it.hasNext()) {
                    ((OnRenderModeChangedListener) it.next()).onRenderModeChanged(i);
                }
            }
        };
        this.developerAnimationListener = new MapboxMap.OnDeveloperAnimationListener() {
            public void onDeveloperAnimationStarted() {
                if (LocationComponent.this.isComponentInitialized && LocationComponent.this.isEnabled) {
                    LocationComponent.this.setCameraMode(8);
                }
            }
        };
        this.mapboxMap = mapboxMap2;
        this.transform = transform2;
        list.add(this.developerAnimationListener);
    }

    LocationComponent() {
        this.internalLocationEngineProvider = new InternalLocationEngineProvider();
        this.locationEngineRequest = new h.a(1000).setFastestInterval(1000).setPriority(0).build();
        this.currentLocationEngineListener = new CurrentLocationEngineCallback(this);
        this.lastLocationEngineListener = new LastLocationEngineCallback(this);
        this.onLocationStaleListeners = new CopyOnWriteArrayList<>();
        this.onLocationClickListeners = new CopyOnWriteArrayList<>();
        this.onLocationLongClickListeners = new CopyOnWriteArrayList<>();
        this.onCameraTrackingChangedListeners = new CopyOnWriteArrayList<>();
        this.onRenderModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onCameraMoveListener = new MapboxMap.OnCameraMoveListener() {
            public void onCameraMove() {
                LocationComponent.this.updateLayerOffsets(false);
            }
        };
        this.onCameraIdleListener = new MapboxMap.OnCameraIdleListener() {
            public void onCameraIdle() {
                LocationComponent.this.updateLayerOffsets(false);
            }
        };
        this.onMapClickListener = new MapboxMap.OnMapClickListener() {
            public boolean onMapClick(LatLng latLng) {
                if (LocationComponent.this.onLocationClickListeners.isEmpty() || !LocationComponent.this.locationLayerController.onMapClick(latLng)) {
                    return false;
                }
                Iterator it = LocationComponent.this.onLocationClickListeners.iterator();
                while (it.hasNext()) {
                    ((OnLocationClickListener) it.next()).onLocationComponentClick();
                }
                return true;
            }
        };
        this.onMapLongClickListener = new MapboxMap.OnMapLongClickListener() {
            public boolean onMapLongClick(LatLng latLng) {
                if (LocationComponent.this.onLocationLongClickListeners.isEmpty() || !LocationComponent.this.locationLayerController.onMapClick(latLng)) {
                    return false;
                }
                Iterator it = LocationComponent.this.onLocationLongClickListeners.iterator();
                while (it.hasNext()) {
                    ((OnLocationLongClickListener) it.next()).onLocationComponentLongClick();
                }
                return true;
            }
        };
        this.onLocationStaleListener = new OnLocationStaleListener() {
            public void onStaleStateChange(boolean z) {
                LocationComponent.this.locationLayerController.setLocationsStale(z);
                Iterator it = LocationComponent.this.onLocationStaleListeners.iterator();
                while (it.hasNext()) {
                    ((OnLocationStaleListener) it.next()).onStaleStateChange(z);
                }
            }
        };
        this.onCameraMoveInvalidateListener = new OnCameraMoveInvalidateListener() {
            public void onInvalidateCameraMove() {
                LocationComponent.this.onCameraMoveListener.onCameraMove();
            }
        };
        this.compassListener = new CompassListener() {
            public void onCompassAccuracyChange(int i) {
            }

            public void onCompassChanged(float f) {
                LocationComponent.this.updateCompassHeading(f);
            }
        };
        this.cameraTrackingChangedListener = new OnCameraTrackingChangedListener() {
            public void onCameraTrackingDismissed() {
                Iterator it = LocationComponent.this.onCameraTrackingChangedListeners.iterator();
                while (it.hasNext()) {
                    ((OnCameraTrackingChangedListener) it.next()).onCameraTrackingDismissed();
                }
            }

            public void onCameraTrackingChanged(int i) {
                LocationComponent.this.locationAnimatorCoordinator.cancelZoomAnimation();
                LocationComponent.this.locationAnimatorCoordinator.cancelTiltAnimation();
                LocationComponent.this.updateAnimatorListenerHolders();
                Iterator it = LocationComponent.this.onCameraTrackingChangedListeners.iterator();
                while (it.hasNext()) {
                    ((OnCameraTrackingChangedListener) it.next()).onCameraTrackingChanged(i);
                }
            }
        };
        this.renderModeChangedListener = new OnRenderModeChangedListener() {
            public void onRenderModeChanged(int i) {
                LocationComponent.this.updateAnimatorListenerHolders();
                Iterator it = LocationComponent.this.onRenderModeChangedListeners.iterator();
                while (it.hasNext()) {
                    ((OnRenderModeChangedListener) it.next()).onRenderModeChanged(i);
                }
            }
        };
        this.developerAnimationListener = new MapboxMap.OnDeveloperAnimationListener() {
            public void onDeveloperAnimationStarted() {
                if (LocationComponent.this.isComponentInitialized && LocationComponent.this.isEnabled) {
                    LocationComponent.this.setCameraMode(8);
                }
            }
        };
        this.mapboxMap = null;
        this.transform = null;
    }

    LocationComponent(MapboxMap mapboxMap2, Transform transform2, List<MapboxMap.OnDeveloperAnimationListener> list, d<i> dVar, d<i> dVar2, LocationLayerController locationLayerController2, LocationCameraController locationCameraController2, LocationAnimatorCoordinator locationAnimatorCoordinator2, StaleStateManager staleStateManager2, CompassEngine compassEngine2, InternalLocationEngineProvider internalLocationEngineProvider2) {
        this.internalLocationEngineProvider = new InternalLocationEngineProvider();
        this.locationEngineRequest = new h.a(1000).setFastestInterval(1000).setPriority(0).build();
        this.currentLocationEngineListener = new CurrentLocationEngineCallback(this);
        this.lastLocationEngineListener = new LastLocationEngineCallback(this);
        this.onLocationStaleListeners = new CopyOnWriteArrayList<>();
        this.onLocationClickListeners = new CopyOnWriteArrayList<>();
        this.onLocationLongClickListeners = new CopyOnWriteArrayList<>();
        this.onCameraTrackingChangedListeners = new CopyOnWriteArrayList<>();
        this.onRenderModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onCameraMoveListener = new MapboxMap.OnCameraMoveListener() {
            public void onCameraMove() {
                LocationComponent.this.updateLayerOffsets(false);
            }
        };
        this.onCameraIdleListener = new MapboxMap.OnCameraIdleListener() {
            public void onCameraIdle() {
                LocationComponent.this.updateLayerOffsets(false);
            }
        };
        this.onMapClickListener = new MapboxMap.OnMapClickListener() {
            public boolean onMapClick(LatLng latLng) {
                if (LocationComponent.this.onLocationClickListeners.isEmpty() || !LocationComponent.this.locationLayerController.onMapClick(latLng)) {
                    return false;
                }
                Iterator it = LocationComponent.this.onLocationClickListeners.iterator();
                while (it.hasNext()) {
                    ((OnLocationClickListener) it.next()).onLocationComponentClick();
                }
                return true;
            }
        };
        this.onMapLongClickListener = new MapboxMap.OnMapLongClickListener() {
            public boolean onMapLongClick(LatLng latLng) {
                if (LocationComponent.this.onLocationLongClickListeners.isEmpty() || !LocationComponent.this.locationLayerController.onMapClick(latLng)) {
                    return false;
                }
                Iterator it = LocationComponent.this.onLocationLongClickListeners.iterator();
                while (it.hasNext()) {
                    ((OnLocationLongClickListener) it.next()).onLocationComponentLongClick();
                }
                return true;
            }
        };
        this.onLocationStaleListener = new OnLocationStaleListener() {
            public void onStaleStateChange(boolean z) {
                LocationComponent.this.locationLayerController.setLocationsStale(z);
                Iterator it = LocationComponent.this.onLocationStaleListeners.iterator();
                while (it.hasNext()) {
                    ((OnLocationStaleListener) it.next()).onStaleStateChange(z);
                }
            }
        };
        this.onCameraMoveInvalidateListener = new OnCameraMoveInvalidateListener() {
            public void onInvalidateCameraMove() {
                LocationComponent.this.onCameraMoveListener.onCameraMove();
            }
        };
        this.compassListener = new CompassListener() {
            public void onCompassAccuracyChange(int i) {
            }

            public void onCompassChanged(float f) {
                LocationComponent.this.updateCompassHeading(f);
            }
        };
        this.cameraTrackingChangedListener = new OnCameraTrackingChangedListener() {
            public void onCameraTrackingDismissed() {
                Iterator it = LocationComponent.this.onCameraTrackingChangedListeners.iterator();
                while (it.hasNext()) {
                    ((OnCameraTrackingChangedListener) it.next()).onCameraTrackingDismissed();
                }
            }

            public void onCameraTrackingChanged(int i) {
                LocationComponent.this.locationAnimatorCoordinator.cancelZoomAnimation();
                LocationComponent.this.locationAnimatorCoordinator.cancelTiltAnimation();
                LocationComponent.this.updateAnimatorListenerHolders();
                Iterator it = LocationComponent.this.onCameraTrackingChangedListeners.iterator();
                while (it.hasNext()) {
                    ((OnCameraTrackingChangedListener) it.next()).onCameraTrackingChanged(i);
                }
            }
        };
        this.renderModeChangedListener = new OnRenderModeChangedListener() {
            public void onRenderModeChanged(int i) {
                LocationComponent.this.updateAnimatorListenerHolders();
                Iterator it = LocationComponent.this.onRenderModeChangedListeners.iterator();
                while (it.hasNext()) {
                    ((OnRenderModeChangedListener) it.next()).onRenderModeChanged(i);
                }
            }
        };
        this.developerAnimationListener = new MapboxMap.OnDeveloperAnimationListener() {
            public void onDeveloperAnimationStarted() {
                if (LocationComponent.this.isComponentInitialized && LocationComponent.this.isEnabled) {
                    LocationComponent.this.setCameraMode(8);
                }
            }
        };
        this.mapboxMap = mapboxMap2;
        this.transform = transform2;
        list.add(this.developerAnimationListener);
        this.currentLocationEngineListener = dVar;
        this.lastLocationEngineListener = dVar2;
        this.locationLayerController = locationLayerController2;
        this.locationCameraController = locationCameraController2;
        this.locationAnimatorCoordinator = locationAnimatorCoordinator2;
        this.staleStateManager = staleStateManager2;
        this.compassEngine = compassEngine2;
        this.internalLocationEngineProvider = internalLocationEngineProvider2;
        this.isComponentInitialized = true;
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2) {
        activateLocationComponent(context, style2, LocationComponentOptions.createFromAttributes(context, R.style.mapbox_LocationComponent));
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2, boolean z) {
        if (z) {
            activateLocationComponent(context, style2, R.style.mapbox_LocationComponent);
        } else {
            activateLocationComponent(context, style2, (c) null, R.style.mapbox_LocationComponent);
        }
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2, boolean z, h hVar) {
        setLocationEngineRequest(hVar);
        if (z) {
            activateLocationComponent(context, style2, R.style.mapbox_LocationComponent);
        } else {
            activateLocationComponent(context, style2, (c) null, R.style.mapbox_LocationComponent);
        }
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2, boolean z, h hVar, LocationComponentOptions locationComponentOptions) {
        setLocationEngineRequest(hVar);
        if (z) {
            activateLocationComponent(context, style2, locationComponentOptions);
        } else {
            activateLocationComponent(context, style2, (c) null, locationComponentOptions);
        }
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2, int i) {
        activateLocationComponent(context, style2, LocationComponentOptions.createFromAttributes(context, i));
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2, LocationComponentOptions locationComponentOptions) {
        initialize(context, style2, locationComponentOptions);
        initializeLocationEngine(context);
        applyStyle(locationComponentOptions);
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2, c cVar, int i) {
        activateLocationComponent(context, style2, cVar, LocationComponentOptions.createFromAttributes(context, i));
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2, c cVar, h hVar, int i) {
        activateLocationComponent(context, style2, cVar, hVar, LocationComponentOptions.createFromAttributes(context, i));
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2, c cVar) {
        activateLocationComponent(context, style2, cVar, R.style.mapbox_LocationComponent);
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2, c cVar, h hVar) {
        activateLocationComponent(context, style2, cVar, hVar, R.style.mapbox_LocationComponent);
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2, c cVar, LocationComponentOptions locationComponentOptions) {
        initialize(context, style2, locationComponentOptions);
        setLocationEngine(cVar);
        applyStyle(locationComponentOptions);
    }

    @Deprecated
    public final void activateLocationComponent(Context context, Style style2, c cVar, h hVar, LocationComponentOptions locationComponentOptions) {
        initialize(context, style2, locationComponentOptions);
        setLocationEngineRequest(hVar);
        setLocationEngine(cVar);
        applyStyle(locationComponentOptions);
    }

    public final void activateLocationComponent(LocationComponentActivationOptions locationComponentActivationOptions) {
        LocationComponentOptions locationComponentOptions = locationComponentActivationOptions.locationComponentOptions();
        if (locationComponentOptions == null) {
            int styleRes = locationComponentActivationOptions.styleRes();
            if (styleRes == 0) {
                styleRes = R.style.mapbox_LocationComponent;
            }
            locationComponentOptions = LocationComponentOptions.createFromAttributes(locationComponentActivationOptions.context(), styleRes);
        }
        initialize(locationComponentActivationOptions.context(), locationComponentActivationOptions.style(), locationComponentOptions);
        applyStyle(locationComponentOptions);
        h locationEngineRequest2 = locationComponentActivationOptions.locationEngineRequest();
        if (locationEngineRequest2 != null) {
            setLocationEngineRequest(locationEngineRequest2);
        }
        c locationEngine2 = locationComponentActivationOptions.locationEngine();
        if (locationEngine2 != null) {
            setLocationEngine(locationEngine2);
        } else if (locationComponentActivationOptions.useDefaultLocationEngine()) {
            initializeLocationEngine(locationComponentActivationOptions.context());
        } else {
            setLocationEngine(null);
        }
    }

    public final void setLocationComponentEnabled(boolean z) {
        checkActivationState();
        if (z) {
            enableLocationComponent();
        } else {
            disableLocationComponent();
        }
    }

    public final boolean isLocationComponentEnabled() {
        checkActivationState();
        return this.isEnabled;
    }

    public final void setCameraMode(int i) {
        setCameraMode(i, null);
    }

    public final void setCameraMode(int i, OnLocationCameraTransitionListener onLocationCameraTransitionListener) {
        setCameraMode(i, 750, null, null, null, onLocationCameraTransitionListener);
    }

    public final void setCameraMode(int i, long j, Double d, Double d2, Double d3, OnLocationCameraTransitionListener onLocationCameraTransitionListener) {
        checkActivationState();
        this.locationCameraController.setCameraMode(i, this.lastLocation, j, d, d2, d3, new CameraTransitionListener(onLocationCameraTransitionListener));
        updateCompassListenerState(true);
    }

    public final int getCameraMode() {
        checkActivationState();
        return this.locationCameraController.getCameraMode();
    }

    public final void setRenderMode(int i) {
        checkActivationState();
        this.locationLayerController.setRenderMode(i);
        updateLayerOffsets(true);
        updateCompassListenerState(true);
    }

    public final int getRenderMode() {
        checkActivationState();
        return this.locationLayerController.getRenderMode();
    }

    public final LocationComponentOptions getLocationComponentOptions() {
        checkActivationState();
        return this.options;
    }

    public final void applyStyle(Context context, int i) {
        checkActivationState();
        applyStyle(LocationComponentOptions.createFromAttributes(context, i));
    }

    public final void applyStyle(LocationComponentOptions locationComponentOptions) {
        checkActivationState();
        this.options = locationComponentOptions;
        if (this.mapboxMap.getStyle() != null) {
            this.locationLayerController.applyStyle(locationComponentOptions);
            this.locationCameraController.initializeOptions(locationComponentOptions);
            this.staleStateManager.setEnabled(locationComponentOptions.enableStaleState());
            this.staleStateManager.setDelayTime(locationComponentOptions.staleStateTimeout());
            this.locationAnimatorCoordinator.setTrackingAnimationDurationMultiplier(locationComponentOptions.trackingAnimationDurationMultiplier());
            this.locationAnimatorCoordinator.setCompassAnimationEnabled(locationComponentOptions.compassAnimationEnabled());
            this.locationAnimatorCoordinator.setAccuracyAnimationEnabled(locationComponentOptions.accuracyAnimationEnabled());
            updateMapWithOptions(locationComponentOptions);
        }
    }

    public final void zoomWhileTracking(double d, long j, MapboxMap.CancelableCallback cancelableCallback) {
        checkActivationState();
        if (this.isLayerReady) {
            if (getCameraMode() == 8) {
                Logger.e(TAG, String.format("%s%s", new Object[]{"LocationComponent#zoomWhileTracking method can only be used", " when a camera mode other than CameraMode#NONE is engaged."}));
                return;
            }
            this.locationAnimatorCoordinator.feedNewZoomLevel(d, this.mapboxMap.getCameraPosition(), j, cancelableCallback);
        }
    }

    public final void zoomWhileTracking(double d, long j) {
        checkActivationState();
        zoomWhileTracking(d, j, null);
    }

    public final void zoomWhileTracking(double d) {
        checkActivationState();
        zoomWhileTracking(d, 750, null);
    }

    public final void cancelZoomWhileTrackingAnimation() {
        checkActivationState();
        this.locationAnimatorCoordinator.cancelZoomAnimation();
    }

    public final void tiltWhileTracking(double d, long j, MapboxMap.CancelableCallback cancelableCallback) {
        checkActivationState();
        if (this.isLayerReady) {
            if (getCameraMode() == 8) {
                Logger.e(TAG, String.format("%s%s", new Object[]{"LocationComponent#tiltWhileTracking method can only be used", " when a camera mode other than CameraMode#NONE is engaged."}));
                return;
            }
            this.locationAnimatorCoordinator.feedNewTilt(d, this.mapboxMap.getCameraPosition(), j, cancelableCallback);
        }
    }

    public final void tiltWhileTracking(double d, long j) {
        checkActivationState();
        tiltWhileTracking(d, j, null);
    }

    public final void tiltWhileTracking(double d) {
        checkActivationState();
        tiltWhileTracking(d, 1250, null);
    }

    public final void cancelTiltWhileTrackingAnimation() {
        checkActivationState();
        this.locationAnimatorCoordinator.cancelTiltAnimation();
    }

    public final void forceLocationUpdate(Location location) {
        checkActivationState();
        updateLocation(location, false);
    }

    public final void setMaxAnimationFps(int i) {
        checkActivationState();
        this.locationAnimatorCoordinator.setMaxAnimationFps(i);
    }

    public final void setLocationEngine(c cVar) {
        checkActivationState();
        c cVar2 = this.locationEngine;
        if (cVar2 != null) {
            cVar2.removeLocationUpdates(this.currentLocationEngineListener);
            this.locationEngine = null;
        }
        if (cVar != null) {
            this.fastestInterval = this.locationEngineRequest.getFastestInterval();
            this.locationEngine = cVar;
            if (this.isLayerReady && this.isEnabled) {
                setLastLocation();
                cVar.requestLocationUpdates(this.locationEngineRequest, this.currentLocationEngineListener, Looper.getMainLooper());
            }
        } else {
            this.fastestInterval = 0;
        }
    }

    public final void setLocationEngineRequest(h hVar) {
        checkActivationState();
        this.locationEngineRequest = hVar;
        setLocationEngine(this.locationEngine);
    }

    public final h getLocationEngineRequest() {
        checkActivationState();
        return this.locationEngineRequest;
    }

    public final c getLocationEngine() {
        checkActivationState();
        return this.locationEngine;
    }

    public final void setCompassEngine(CompassEngine compassEngine2) {
        checkActivationState();
        if (this.compassEngine != null) {
            updateCompassListenerState(false);
        }
        this.compassEngine = compassEngine2;
        updateCompassListenerState(true);
    }

    public final CompassEngine getCompassEngine() {
        checkActivationState();
        return this.compassEngine;
    }

    public final Location getLastKnownLocation() {
        checkActivationState();
        return this.lastLocation;
    }

    public final void addOnLocationClickListener(OnLocationClickListener onLocationClickListener) {
        this.onLocationClickListeners.add(onLocationClickListener);
    }

    public final void removeOnLocationClickListener(OnLocationClickListener onLocationClickListener) {
        this.onLocationClickListeners.remove(onLocationClickListener);
    }

    public final void addOnLocationLongClickListener(OnLocationLongClickListener onLocationLongClickListener) {
        this.onLocationLongClickListeners.add(onLocationLongClickListener);
    }

    public final void removeOnLocationLongClickListener(OnLocationLongClickListener onLocationLongClickListener) {
        this.onLocationLongClickListeners.remove(onLocationLongClickListener);
    }

    public final void addOnCameraTrackingChangedListener(OnCameraTrackingChangedListener onCameraTrackingChangedListener) {
        this.onCameraTrackingChangedListeners.add(onCameraTrackingChangedListener);
    }

    public final void removeOnCameraTrackingChangedListener(OnCameraTrackingChangedListener onCameraTrackingChangedListener) {
        this.onCameraTrackingChangedListeners.remove(onCameraTrackingChangedListener);
    }

    public final void addOnRenderModeChangedListener(OnRenderModeChangedListener onRenderModeChangedListener) {
        this.onRenderModeChangedListeners.add(onRenderModeChangedListener);
    }

    public final void removeRenderModeChangedListener(OnRenderModeChangedListener onRenderModeChangedListener) {
        this.onRenderModeChangedListeners.remove(onRenderModeChangedListener);
    }

    public final void addOnLocationStaleListener(OnLocationStaleListener onLocationStaleListener2) {
        this.onLocationStaleListeners.add(onLocationStaleListener2);
    }

    public final void removeOnLocationStaleListener(OnLocationStaleListener onLocationStaleListener2) {
        this.onLocationStaleListeners.remove(onLocationStaleListener2);
    }

    public final void onStart() {
        this.isComponentStarted = true;
        onLocationLayerStart();
    }

    public final void onStop() {
        onLocationLayerStop();
        this.isComponentStarted = false;
    }

    public final void onStartLoadingMap() {
        onLocationLayerStop();
    }

    public final void onFinishLoadingStyle() {
        if (this.isComponentInitialized) {
            this.style = this.mapboxMap.getStyle();
            this.locationLayerController.initializeComponents(this.style, this.options);
            this.locationCameraController.initializeOptions(this.options);
            onLocationLayerStart();
        }
    }

    private void onLocationLayerStart() {
        if (this.isComponentInitialized && this.isComponentStarted && this.mapboxMap.getStyle() != null) {
            if (!this.isLayerReady) {
                this.isLayerReady = true;
                this.mapboxMap.addOnCameraMoveListener(this.onCameraMoveListener);
                this.mapboxMap.addOnCameraIdleListener(this.onCameraIdleListener);
                if (this.options.enableStaleState()) {
                    this.staleStateManager.onStart();
                }
            }
            if (this.isEnabled) {
                c cVar = this.locationEngine;
                if (cVar != null) {
                    try {
                        cVar.requestLocationUpdates(this.locationEngineRequest, this.currentLocationEngineListener, Looper.getMainLooper());
                    } catch (SecurityException e) {
                        Logger.e(TAG, "Unable to request location updates", e);
                    }
                }
                setCameraMode(this.locationCameraController.getCameraMode());
                setLastLocation();
                updateCompassListenerState(true);
                setLastCompassHeading();
            }
        }
    }

    private void onLocationLayerStop() {
        if (this.isComponentInitialized && this.isLayerReady && this.isComponentStarted) {
            this.isLayerReady = false;
            this.locationLayerController.hide();
            this.staleStateManager.onStop();
            if (this.compassEngine != null) {
                updateCompassListenerState(false);
            }
            this.locationAnimatorCoordinator.cancelAllAnimations();
            c cVar = this.locationEngine;
            if (cVar != null) {
                cVar.removeLocationUpdates(this.currentLocationEngineListener);
            }
            this.mapboxMap.removeOnCameraMoveListener(this.onCameraMoveListener);
            this.mapboxMap.removeOnCameraIdleListener(this.onCameraIdleListener);
        }
    }

    private void initialize(Context context, Style style2, LocationComponentOptions locationComponentOptions) {
        Context context2 = context;
        LocationComponentOptions locationComponentOptions2 = locationComponentOptions;
        if (!this.isComponentInitialized) {
            this.isComponentInitialized = true;
            if (style2.isFullyLoaded()) {
                this.style = style2;
                this.options = locationComponentOptions2;
                this.mapboxMap.addOnMapClickListener(this.onMapClickListener);
                this.mapboxMap.addOnMapLongClickListener(this.onMapLongClickListener);
                LocationLayerController locationLayerController2 = new LocationLayerController(this.mapboxMap, style2, new LayerSourceProvider(), new LayerFeatureProvider(), new LayerBitmapProvider(context2), locationComponentOptions, this.renderModeChangedListener);
                this.locationLayerController = locationLayerController2;
                LocationComponentOptions locationComponentOptions3 = locationComponentOptions2;
                LocationCameraController locationCameraController2 = new LocationCameraController(context, this.mapboxMap, this.transform, this.cameraTrackingChangedListener, locationComponentOptions, this.onCameraMoveInvalidateListener);
                this.locationCameraController = locationCameraController2;
                this.locationAnimatorCoordinator = new LocationAnimatorCoordinator(this.mapboxMap.getProjection(), MapboxAnimatorSetProvider.getInstance(), MapboxAnimatorProvider.getInstance());
                this.locationAnimatorCoordinator.setTrackingAnimationDurationMultiplier(locationComponentOptions.trackingAnimationDurationMultiplier());
                WindowManager windowManager = (WindowManager) context2.getSystemService("window");
                SensorManager sensorManager = (SensorManager) context2.getSystemService("sensor");
                if (!(windowManager == null || sensorManager == null)) {
                    this.compassEngine = new LocationComponentCompassEngine(windowManager, sensorManager);
                }
                this.staleStateManager = new StaleStateManager(this.onLocationStaleListener, locationComponentOptions3);
                updateMapWithOptions(locationComponentOptions3);
                setRenderMode(18);
                setCameraMode(8);
                onLocationLayerStart();
                return;
            }
            throw new IllegalStateException("Style is invalid, provide the most recently loaded one.");
        }
    }

    private void initializeLocationEngine(Context context) {
        c cVar = this.locationEngine;
        if (cVar != null) {
            cVar.removeLocationUpdates(this.currentLocationEngineListener);
        }
        setLocationEngine(this.internalLocationEngineProvider.getBestLocationEngine(context, false));
    }

    private void updateCompassListenerState(boolean z) {
        CompassEngine compassEngine2 = this.compassEngine;
        if (compassEngine2 != null) {
            if (!z) {
                removeCompassListener(compassEngine2);
            } else if (this.isComponentInitialized && this.isComponentStarted && this.isEnabled) {
                if (!this.locationCameraController.isConsumingCompass() && !this.locationLayerController.isConsumingCompass()) {
                    removeCompassListener(this.compassEngine);
                } else if (!this.isListeningToCompass) {
                    this.isListeningToCompass = true;
                    this.compassEngine.addCompassListener(this.compassListener);
                }
            }
        }
    }

    private void removeCompassListener(CompassEngine compassEngine2) {
        if (this.isListeningToCompass) {
            this.isListeningToCompass = false;
            compassEngine2.removeCompassListener(this.compassListener);
        }
    }

    private void enableLocationComponent() {
        this.isEnabled = true;
        onLocationLayerStart();
    }

    private void disableLocationComponent() {
        this.isEnabled = false;
        onLocationLayerStop();
    }

    private void updateMapWithOptions(LocationComponentOptions locationComponentOptions) {
        int[] padding = locationComponentOptions.padding();
        if (padding != null) {
            this.mapboxMap.setPadding(padding[0], padding[1], padding[2], padding[3]);
        }
    }

    /* access modifiers changed from: private */
    public void updateLocation(Location location, boolean z) {
        if (location != null) {
            if (!this.isLayerReady) {
                this.lastLocation = location;
                return;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime - this.lastUpdateTime >= this.fastestInterval) {
                this.lastUpdateTime = elapsedRealtime;
                showLocationLayerIfHidden();
                if (!z) {
                    this.staleStateManager.updateLatestLocationTime();
                }
                this.locationAnimatorCoordinator.feedNewLocation(location, this.mapboxMap.getCameraPosition(), getCameraMode() == 36);
                updateAccuracyRadius(location, false);
                this.lastLocation = location;
            }
        }
    }

    private void showLocationLayerIfHidden() {
        boolean isHidden = this.locationLayerController.isHidden();
        if (this.isEnabled && this.isComponentStarted && isHidden) {
            this.locationLayerController.show();
        }
    }

    /* access modifiers changed from: private */
    public void updateCompassHeading(float f) {
        this.locationAnimatorCoordinator.feedNewCompassBearing(f, this.mapboxMap.getCameraPosition());
    }

    private void setLastLocation() {
        c cVar = this.locationEngine;
        if (cVar != null) {
            cVar.getLastLocation(this.lastLocationEngineListener);
        } else {
            updateLocation(getLastKnownLocation(), true);
        }
    }

    private void setLastCompassHeading() {
        CompassEngine compassEngine2 = this.compassEngine;
        updateCompassHeading(compassEngine2 != null ? compassEngine2.getLastHeading() : 0.0f);
    }

    /* access modifiers changed from: private */
    public void updateLayerOffsets(boolean z) {
        CameraPosition cameraPosition = this.mapboxMap.getCameraPosition();
        if (this.lastCameraPosition == null || z) {
            this.lastCameraPosition = cameraPosition;
            this.locationLayerController.updateForegroundBearing((float) cameraPosition.bearing);
            this.locationLayerController.updateForegroundOffset(cameraPosition.tilt);
            updateAccuracyRadius(getLastKnownLocation(), true);
            return;
        }
        if (cameraPosition.bearing != this.lastCameraPosition.bearing) {
            this.locationLayerController.updateForegroundBearing((float) cameraPosition.bearing);
        }
        if (cameraPosition.tilt != this.lastCameraPosition.tilt) {
            this.locationLayerController.updateForegroundOffset(cameraPosition.tilt);
        }
        if (cameraPosition.zoom != this.lastCameraPosition.zoom) {
            updateAccuracyRadius(getLastKnownLocation(), true);
        }
        this.lastCameraPosition = cameraPosition;
    }

    private void updateAccuracyRadius(Location location, boolean z) {
        this.locationAnimatorCoordinator.feedNewAccuracyRadius(Utils.calculateZoomLevelRadius(this.mapboxMap, location), z);
    }

    /* access modifiers changed from: private */
    public void updateAnimatorListenerHolders() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.locationLayerController.getAnimationListeners());
        hashSet.addAll(this.locationCameraController.getAnimationListeners());
        this.locationAnimatorCoordinator.updateAnimatorListenerHolders(hashSet);
        this.locationAnimatorCoordinator.resetAllCameraAnimations(this.mapboxMap.getCameraPosition(), this.locationCameraController.getCameraMode() == 36);
        this.locationAnimatorCoordinator.resetAllLayerAnimations();
    }

    private void checkActivationState() {
        if (!this.isComponentInitialized) {
            throw new LocationComponentNotInitializedException();
        }
    }

    public final boolean isLocationComponentActivated() {
        return this.isComponentInitialized;
    }
}
