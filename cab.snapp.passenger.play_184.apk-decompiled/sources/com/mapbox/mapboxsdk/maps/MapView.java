package com.mapbox.mapboxsdk.maps;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.collection.LongSparseArray;
import com.mapbox.android.b.a;
import com.mapbox.mapboxsdk.MapStrictMode;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.exceptions.MapboxConfigurationException;
import com.mapbox.mapboxsdk.location.LocationComponent;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.NativeMapView;
import com.mapbox.mapboxsdk.maps.renderer.MapRenderer;
import com.mapbox.mapboxsdk.maps.renderer.glsurfaceview.GLSurfaceViewMapRenderer;
import com.mapbox.mapboxsdk.maps.renderer.glsurfaceview.MapboxGLSurfaceView;
import com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewMapRenderer;
import com.mapbox.mapboxsdk.maps.widgets.CompassView;
import com.mapbox.mapboxsdk.net.ConnectivityReceiver;
import com.mapbox.mapboxsdk.storage.FileSource;
import com.mapbox.mapboxsdk.utils.BitmapUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class MapView extends FrameLayout implements NativeMapView.ViewCallback {
    private ImageView attrView;
    private AttributionClickListener attributionClickListener;
    /* access modifiers changed from: private */
    public CompassView compassView;
    /* access modifiers changed from: private */
    public boolean destroyed;
    /* access modifiers changed from: private */
    public PointF focalPoint;
    private final InitialRenderCallback initialRenderCallback = new InitialRenderCallback();
    private boolean isStarted;
    private ImageView logoView;
    private final MapCallback mapCallback = new MapCallback();
    private final MapChangeReceiver mapChangeReceiver = new MapChangeReceiver();
    /* access modifiers changed from: private */
    public MapGestureDetector mapGestureDetector;
    private MapKeyListener mapKeyListener;
    private MapRenderer mapRenderer;
    /* access modifiers changed from: private */
    public MapboxMap mapboxMap;
    private MapboxMapOptions mapboxMapOptions;
    private NativeMap nativeMapView;
    private Bundle savedInstanceState;

    static class AttributionClickListener implements View.OnClickListener {
        private final AttributionDialogManager defaultDialogManager;
        private UiSettings uiSettings;

        private AttributionClickListener(Context context, MapboxMap mapboxMap) {
            this.defaultDialogManager = new AttributionDialogManager(context, mapboxMap);
            this.uiSettings = mapboxMap.getUiSettings();
        }

        public void onClick(View view) {
            getDialogManager().onClick(view);
        }

        public void onStop() {
            getDialogManager().onStop();
        }

        private AttributionDialogManager getDialogManager() {
            if (this.uiSettings.getAttributionDialogManager() != null) {
                return this.uiSettings.getAttributionDialogManager();
            }
            return this.defaultDialogManager;
        }
    }

    class FocalPointInvalidator implements FocalPointChangeListener {
        private final List<FocalPointChangeListener> focalPointChangeListeners;

        private FocalPointInvalidator() {
            this.focalPointChangeListeners = new ArrayList();
        }

        /* access modifiers changed from: package-private */
        public void addListener(FocalPointChangeListener focalPointChangeListener) {
            this.focalPointChangeListeners.add(focalPointChangeListener);
        }

        public void onFocalPointChanged(PointF pointF) {
            MapView.this.mapGestureDetector.setFocalPoint(pointF);
            for (FocalPointChangeListener onFocalPointChanged : this.focalPointChangeListeners) {
                onFocalPointChanged.onFocalPointChanged(pointF);
            }
        }
    }

    class GesturesManagerInteractionListener implements MapboxMap.OnGesturesManagerInteractionListener {
        private GesturesManagerInteractionListener() {
        }

        public void onAddMapClickListener(MapboxMap.OnMapClickListener onMapClickListener) {
            MapView.this.mapGestureDetector.addOnMapClickListener(onMapClickListener);
        }

        public void onRemoveMapClickListener(MapboxMap.OnMapClickListener onMapClickListener) {
            MapView.this.mapGestureDetector.removeOnMapClickListener(onMapClickListener);
        }

        public void onAddMapLongClickListener(MapboxMap.OnMapLongClickListener onMapLongClickListener) {
            MapView.this.mapGestureDetector.addOnMapLongClickListener(onMapLongClickListener);
        }

        public void onRemoveMapLongClickListener(MapboxMap.OnMapLongClickListener onMapLongClickListener) {
            MapView.this.mapGestureDetector.removeOnMapLongClickListener(onMapLongClickListener);
        }

        public void onAddFlingListener(MapboxMap.OnFlingListener onFlingListener) {
            MapView.this.mapGestureDetector.addOnFlingListener(onFlingListener);
        }

        public void onRemoveFlingListener(MapboxMap.OnFlingListener onFlingListener) {
            MapView.this.mapGestureDetector.removeOnFlingListener(onFlingListener);
        }

        public void onAddMoveListener(MapboxMap.OnMoveListener onMoveListener) {
            MapView.this.mapGestureDetector.addOnMoveListener(onMoveListener);
        }

        public void onRemoveMoveListener(MapboxMap.OnMoveListener onMoveListener) {
            MapView.this.mapGestureDetector.removeOnMoveListener(onMoveListener);
        }

        public void onAddRotateListener(MapboxMap.OnRotateListener onRotateListener) {
            MapView.this.mapGestureDetector.addOnRotateListener(onRotateListener);
        }

        public void onRemoveRotateListener(MapboxMap.OnRotateListener onRotateListener) {
            MapView.this.mapGestureDetector.removeOnRotateListener(onRotateListener);
        }

        public void onAddScaleListener(MapboxMap.OnScaleListener onScaleListener) {
            MapView.this.mapGestureDetector.addOnScaleListener(onScaleListener);
        }

        public void onRemoveScaleListener(MapboxMap.OnScaleListener onScaleListener) {
            MapView.this.mapGestureDetector.removeOnScaleListener(onScaleListener);
        }

        public void onAddShoveListener(MapboxMap.OnShoveListener onShoveListener) {
            MapView.this.mapGestureDetector.addShoveListener(onShoveListener);
        }

        public void onRemoveShoveListener(MapboxMap.OnShoveListener onShoveListener) {
            MapView.this.mapGestureDetector.removeShoveListener(onShoveListener);
        }

        public a getGesturesManager() {
            return MapView.this.mapGestureDetector.getGesturesManager();
        }

        public void setGesturesManager(a aVar, boolean z, boolean z2) {
            MapView.this.mapGestureDetector.setGesturesManager(MapView.this.getContext(), aVar, z, z2);
        }

        public void cancelAllVelocityAnimations() {
            MapView.this.mapGestureDetector.cancelAnimators();
        }
    }

    class InitialRenderCallback implements OnDidFinishRenderingFrameListener {
        private int renderCount;

        InitialRenderCallback() {
            MapView.this.addOnDidFinishRenderingFrameListener(this);
        }

        public void onDidFinishRenderingFrame(boolean z) {
            if (MapView.this.mapboxMap != null && MapView.this.mapboxMap.getStyle() != null && MapView.this.mapboxMap.getStyle().isFullyLoaded()) {
                this.renderCount++;
                if (this.renderCount == 3) {
                    MapView.this.setForeground(null);
                    MapView.this.removeOnDidFinishRenderingFrameListener(this);
                }
            }
        }

        /* access modifiers changed from: private */
        public void onDestroy() {
            MapView.this.removeOnDidFinishRenderingFrameListener(this);
        }
    }

    class MapCallback implements OnCameraDidChangeListener, OnCameraIsChangingListener, OnDidFailLoadingMapListener, OnDidFinishLoadingMapListener, OnDidFinishLoadingStyleListener, OnDidFinishRenderingFrameListener {
        private final List<OnMapReadyCallback> onMapReadyCallbackList = new ArrayList();

        MapCallback() {
            MapView.this.addOnDidFinishLoadingStyleListener(this);
            MapView.this.addOnDidFinishRenderingFrameListener(this);
            MapView.this.addOnDidFinishLoadingMapListener(this);
            MapView.this.addOnCameraIsChangingListener(this);
            MapView.this.addOnCameraDidChangeListener(this);
            MapView.this.addOnDidFailLoadingMapListener(this);
        }

        /* access modifiers changed from: package-private */
        public void initialised() {
            MapView.this.mapboxMap.onPreMapReady();
            onMapReady();
            MapView.this.mapboxMap.onPostMapReady();
        }

        private void onMapReady() {
            if (this.onMapReadyCallbackList.size() > 0) {
                Iterator<OnMapReadyCallback> it = this.onMapReadyCallbackList.iterator();
                while (it.hasNext()) {
                    OnMapReadyCallback next = it.next();
                    if (next != null) {
                        next.onMapReady(MapView.this.mapboxMap);
                    }
                    it.remove();
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void addOnMapReadyCallback(OnMapReadyCallback onMapReadyCallback) {
            this.onMapReadyCallbackList.add(onMapReadyCallback);
        }

        /* access modifiers changed from: package-private */
        public void onDestroy() {
            this.onMapReadyCallbackList.clear();
            MapView.this.removeOnDidFinishLoadingStyleListener(this);
            MapView.this.removeOnDidFinishRenderingFrameListener(this);
            MapView.this.removeOnDidFinishLoadingMapListener(this);
            MapView.this.removeOnCameraIsChangingListener(this);
            MapView.this.removeOnCameraDidChangeListener(this);
            MapView.this.removeOnDidFailLoadingMapListener(this);
        }

        public void onDidFinishLoadingStyle() {
            if (MapView.this.mapboxMap != null) {
                MapView.this.mapboxMap.onFinishLoadingStyle();
            }
        }

        public void onDidFailLoadingMap(String str) {
            if (MapView.this.mapboxMap != null) {
                MapView.this.mapboxMap.onFailLoadingStyle();
            }
        }

        public void onDidFinishRenderingFrame(boolean z) {
            if (MapView.this.mapboxMap != null) {
                MapView.this.mapboxMap.onUpdateFullyRendered();
            }
        }

        public void onDidFinishLoadingMap() {
            if (MapView.this.mapboxMap != null) {
                MapView.this.mapboxMap.onUpdateRegionChange();
            }
        }

        public void onCameraIsChanging() {
            if (MapView.this.mapboxMap != null) {
                MapView.this.mapboxMap.onUpdateRegionChange();
            }
        }

        public void onCameraDidChange(boolean z) {
            if (MapView.this.mapboxMap != null) {
                MapView.this.mapboxMap.onUpdateRegionChange();
            }
        }
    }

    public interface OnCameraDidChangeListener {
        void onCameraDidChange(boolean z);
    }

    public interface OnCameraIsChangingListener {
        void onCameraIsChanging();
    }

    public interface OnCameraWillChangeListener {
        void onCameraWillChange(boolean z);
    }

    public interface OnCanRemoveUnusedStyleImageListener {
        boolean onCanRemoveUnusedStyleImage(String str);
    }

    public interface OnDidBecomeIdleListener {
        void onDidBecomeIdle();
    }

    public interface OnDidFailLoadingMapListener {
        void onDidFailLoadingMap(String str);
    }

    public interface OnDidFinishLoadingMapListener {
        void onDidFinishLoadingMap();
    }

    public interface OnDidFinishLoadingStyleListener {
        void onDidFinishLoadingStyle();
    }

    public interface OnDidFinishRenderingFrameListener {
        void onDidFinishRenderingFrame(boolean z);
    }

    public interface OnDidFinishRenderingMapListener {
        void onDidFinishRenderingMap(boolean z);
    }

    public interface OnSourceChangedListener {
        void onSourceChangedListener(String str);
    }

    public interface OnStyleImageMissingListener {
        void onStyleImageMissing(String str);
    }

    public interface OnWillStartLoadingMapListener {
        void onWillStartLoadingMap();
    }

    public interface OnWillStartRenderingFrameListener {
        void onWillStartRenderingFrame();
    }

    public interface OnWillStartRenderingMapListener {
        void onWillStartRenderingMap();
    }

    public MapView(Context context) {
        super(context);
        initialize(context, MapboxMapOptions.createFromAttributes(context));
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(context, MapboxMapOptions.createFromAttributes(context, attributeSet));
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(context, MapboxMapOptions.createFromAttributes(context, attributeSet));
    }

    public MapView(Context context, MapboxMapOptions mapboxMapOptions2) {
        super(context);
        initialize(context, mapboxMapOptions2 == null ? MapboxMapOptions.createFromAttributes(context) : mapboxMapOptions2);
    }

    /* access modifiers changed from: protected */
    public void initialize(Context context, MapboxMapOptions mapboxMapOptions2) {
        if (!isInEditMode()) {
            if (Mapbox.hasInstance()) {
                setForeground(new ColorDrawable(mapboxMapOptions2.getForegroundLoadColor()));
                this.mapboxMapOptions = mapboxMapOptions2;
                View inflate = LayoutInflater.from(context).inflate(R.layout.mapbox_mapview_internal, this);
                this.compassView = (CompassView) inflate.findViewById(R.id.compassView);
                this.attrView = (ImageView) inflate.findViewById(R.id.attributionView);
                this.attrView.setImageDrawable(BitmapUtils.getDrawableFromRes(getContext(), R.drawable.mapbox_info_bg_selector));
                this.logoView = (ImageView) inflate.findViewById(R.id.logoView);
                this.logoView.setImageDrawable(BitmapUtils.getDrawableFromRes(getContext(), R.drawable.mapbox_logo_icon));
                setContentDescription(context.getString(R.string.mapbox_mapActionDescription));
                setWillNotDraw(false);
                initialiseDrawingSurface(mapboxMapOptions2);
                return;
            }
            throw new MapboxConfigurationException();
        }
    }

    /* access modifiers changed from: private */
    public void initialiseMap() {
        Context context = getContext();
        FocalPointInvalidator focalPointInvalidator = new FocalPointInvalidator();
        focalPointInvalidator.addListener(createFocalPointChangeListener());
        GesturesManagerInteractionListener gesturesManagerInteractionListener = new GesturesManagerInteractionListener();
        CameraChangeDispatcher cameraChangeDispatcher = new CameraChangeDispatcher();
        Projection projection = new Projection(this.nativeMapView, this);
        UiSettings uiSettings = new UiSettings(projection, focalPointInvalidator, this.compassView, this.attrView, this.logoView, getPixelRatio());
        LongSparseArray longSparseArray = new LongSparseArray();
        IconManager iconManager = new IconManager(this.nativeMapView);
        AnnotationManager annotationManager = r0;
        AnnotationManager annotationManager2 = new AnnotationManager(this, longSparseArray, iconManager, new AnnotationContainer(this.nativeMapView, longSparseArray), new MarkerContainer(this.nativeMapView, longSparseArray, iconManager), new PolygonContainer(this.nativeMapView, longSparseArray), new PolylineContainer(this.nativeMapView, longSparseArray), new ShapeAnnotationContainer(this.nativeMapView, longSparseArray));
        Transform transform = new Transform(this, this.nativeMapView, cameraChangeDispatcher);
        ArrayList arrayList = new ArrayList();
        UiSettings uiSettings2 = uiSettings;
        Projection projection2 = projection;
        CameraChangeDispatcher cameraChangeDispatcher2 = cameraChangeDispatcher;
        MapboxMap mapboxMap2 = new MapboxMap(this.nativeMapView, transform, uiSettings2, projection2, gesturesManagerInteractionListener, cameraChangeDispatcher2, arrayList);
        this.mapboxMap = mapboxMap2;
        this.mapboxMap.injectAnnotationManager(annotationManager);
        CameraChangeDispatcher cameraChangeDispatcher3 = cameraChangeDispatcher2;
        AnnotationManager annotationManager3 = annotationManager;
        MapGestureDetector mapGestureDetector2 = new MapGestureDetector(context, transform, projection2, uiSettings2, annotationManager3, cameraChangeDispatcher3);
        this.mapGestureDetector = mapGestureDetector2;
        this.mapKeyListener = new MapKeyListener(transform, uiSettings2, this.mapGestureDetector);
        this.compassView.injectCompassAnimationListener(createCompassAnimationListener(cameraChangeDispatcher3));
        this.compassView.setOnClickListener(createCompassClickListener(cameraChangeDispatcher3));
        MapboxMap mapboxMap3 = this.mapboxMap;
        mapboxMap3.injectLocationComponent(new LocationComponent(mapboxMap3, transform, arrayList));
        ImageView imageView = this.attrView;
        AttributionClickListener attributionClickListener2 = new AttributionClickListener(context, this.mapboxMap);
        this.attributionClickListener = attributionClickListener2;
        imageView.setOnClickListener(attributionClickListener2);
        setClickable(true);
        setLongClickable(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestDisallowInterceptTouchEvent(true);
        this.nativeMapView.setReachability(Mapbox.isConnected().booleanValue());
        Bundle bundle = this.savedInstanceState;
        if (bundle == null) {
            this.mapboxMap.initialise(context, this.mapboxMapOptions);
        } else {
            this.mapboxMap.onRestoreInstanceState(bundle);
        }
        this.mapCallback.initialised();
    }

    private FocalPointChangeListener createFocalPointChangeListener() {
        return new FocalPointChangeListener() {
            public void onFocalPointChanged(PointF pointF) {
                PointF unused = MapView.this.focalPoint = pointF;
            }
        };
    }

    private MapboxMap.OnCompassAnimationListener createCompassAnimationListener(final CameraChangeDispatcher cameraChangeDispatcher) {
        return new MapboxMap.OnCompassAnimationListener() {
            public void onCompassAnimation() {
                cameraChangeDispatcher.onCameraMove();
            }

            public void onCompassAnimationFinished() {
                MapView.this.compassView.isAnimating(false);
                cameraChangeDispatcher.onCameraIdle();
            }
        };
    }

    private View.OnClickListener createCompassClickListener(final CameraChangeDispatcher cameraChangeDispatcher) {
        return new View.OnClickListener() {
            public void onClick(View view) {
                if (MapView.this.mapboxMap != null && MapView.this.compassView != null) {
                    if (MapView.this.focalPoint != null) {
                        MapView.this.mapboxMap.setFocalBearing(0.0d, MapView.this.focalPoint.x, MapView.this.focalPoint.y, 150);
                    } else {
                        MapView.this.mapboxMap.setFocalBearing(0.0d, MapView.this.mapboxMap.getWidth() / 2.0f, MapView.this.mapboxMap.getHeight() / 2.0f, 150);
                    }
                    cameraChangeDispatcher.onCameraMoveStarted(3);
                    MapView.this.compassView.isAnimating(true);
                    MapView.this.compassView.postDelayed(MapView.this.compassView, 650);
                }
            }
        };
    }

    public void onCreate(Bundle bundle) {
        if (bundle == null) {
            TelemetryDefinition telemetry = Mapbox.getTelemetry();
            if (telemetry != null) {
                telemetry.onAppUserTurnstileEvent();
            }
            return;
        }
        if (bundle.getBoolean(MapboxConstants.STATE_HAS_SAVED_STATE)) {
            this.savedInstanceState = bundle;
        }
    }

    private void initialiseDrawingSurface(MapboxMapOptions mapboxMapOptions2) {
        String localIdeographFontFamily = mapboxMapOptions2.getLocalIdeographFontFamily();
        if (mapboxMapOptions2.getTextureMode()) {
            TextureView textureView = new TextureView(getContext());
            AnonymousClass4 r0 = new TextureViewMapRenderer(getContext(), textureView, localIdeographFontFamily, mapboxMapOptions2.getTranslucentTextureSurface()) {
                public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
                    MapView.this.onSurfaceCreated();
                    super.onSurfaceCreated(gl10, eGLConfig);
                }
            };
            this.mapRenderer = r0;
            addView(textureView, 0);
        } else {
            MapboxGLSurfaceView mapboxGLSurfaceView = new MapboxGLSurfaceView(getContext());
            mapboxGLSurfaceView.setZOrderMediaOverlay(this.mapboxMapOptions.getRenderSurfaceOnTop());
            this.mapRenderer = new GLSurfaceViewMapRenderer(getContext(), mapboxGLSurfaceView, localIdeographFontFamily) {
                public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
                    MapView.this.onSurfaceCreated();
                    super.onSurfaceCreated(gl10, eGLConfig);
                }
            };
            addView(mapboxGLSurfaceView, 0);
        }
        NativeMapView nativeMapView2 = new NativeMapView(getContext(), getPixelRatio(), this.mapboxMapOptions.getCrossSourceCollisions(), this, this.mapChangeReceiver, this.mapRenderer);
        this.nativeMapView = nativeMapView2;
    }

    /* access modifiers changed from: private */
    public void onSurfaceCreated() {
        post(new Runnable() {
            public void run() {
                if (!MapView.this.destroyed && MapView.this.mapboxMap == null) {
                    MapView.this.initialiseMap();
                    MapView.this.mapboxMap.onStart();
                }
            }
        });
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (this.mapboxMap != null) {
            bundle.putBoolean(MapboxConstants.STATE_HAS_SAVED_STATE, true);
            this.mapboxMap.onSaveInstanceState(bundle);
        }
    }

    public void onStart() {
        if (!this.isStarted) {
            ConnectivityReceiver.instance(getContext()).activate();
            FileSource.getInstance(getContext()).activate();
            this.isStarted = true;
        }
        MapboxMap mapboxMap2 = this.mapboxMap;
        if (mapboxMap2 != null) {
            mapboxMap2.onStart();
        }
        MapRenderer mapRenderer2 = this.mapRenderer;
        if (mapRenderer2 != null) {
            mapRenderer2.onStart();
        }
    }

    public void onResume() {
        MapRenderer mapRenderer2 = this.mapRenderer;
        if (mapRenderer2 != null) {
            mapRenderer2.onResume();
        }
    }

    public void onPause() {
        MapRenderer mapRenderer2 = this.mapRenderer;
        if (mapRenderer2 != null) {
            mapRenderer2.onPause();
        }
    }

    public void onStop() {
        AttributionClickListener attributionClickListener2 = this.attributionClickListener;
        if (attributionClickListener2 != null) {
            attributionClickListener2.onStop();
        }
        if (this.mapboxMap != null) {
            this.mapGestureDetector.cancelAnimators();
            this.mapboxMap.onStop();
        }
        MapRenderer mapRenderer2 = this.mapRenderer;
        if (mapRenderer2 != null) {
            mapRenderer2.onStop();
        }
        if (this.isStarted) {
            ConnectivityReceiver.instance(getContext()).deactivate();
            FileSource.getInstance(getContext()).deactivate();
            this.isStarted = false;
        }
    }

    public void onDestroy() {
        this.destroyed = true;
        this.mapChangeReceiver.clear();
        this.mapCallback.onDestroy();
        this.initialRenderCallback.onDestroy();
        CompassView compassView2 = this.compassView;
        if (compassView2 != null) {
            compassView2.resetAnimation();
        }
        MapboxMap mapboxMap2 = this.mapboxMap;
        if (mapboxMap2 != null) {
            mapboxMap2.onDestroy();
        }
        NativeMap nativeMap = this.nativeMapView;
        if (nativeMap != null) {
            nativeMap.destroy();
            this.nativeMapView = null;
        }
        MapRenderer mapRenderer2 = this.mapRenderer;
        if (mapRenderer2 != null) {
            mapRenderer2.onDestroy();
        }
    }

    public void setMaximumFps(int i) {
        MapRenderer mapRenderer2 = this.mapRenderer;
        if (mapRenderer2 != null) {
            mapRenderer2.setMaximumFps(i);
            return;
        }
        throw new IllegalStateException("Calling MapView#setMaximumFps before mapRenderer is created.");
    }

    public boolean isDestroyed() {
        return this.destroyed;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isGestureDetectorInitialized()) {
            return super.onTouchEvent(motionEvent);
        }
        return this.mapGestureDetector.onTouchEvent(motionEvent) || super.onTouchEvent(motionEvent);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.mapKeyListener.onKeyDown(i, keyEvent) || super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return this.mapKeyListener.onKeyLongPress(i, keyEvent) || super.onKeyLongPress(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.mapKeyListener.onKeyUp(i, keyEvent) || super.onKeyUp(i, keyEvent);
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        return this.mapKeyListener.onTrackballEvent(motionEvent) || super.onTrackballEvent(motionEvent);
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (!isGestureDetectorInitialized()) {
            return super.onGenericMotionEvent(motionEvent);
        }
        return this.mapGestureDetector.onGenericMotionEvent(motionEvent) || super.onGenericMotionEvent(motionEvent);
    }

    public void onLowMemory() {
        NativeMap nativeMap = this.nativeMapView;
        if (nativeMap != null && this.mapboxMap != null && !this.destroyed) {
            nativeMap.onLowMemory();
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        if (!isInEditMode()) {
            NativeMap nativeMap = this.nativeMapView;
            if (nativeMap != null) {
                nativeMap.resizeView(i, i2);
            }
        }
    }

    private float getPixelRatio() {
        float pixelRatio = this.mapboxMapOptions.getPixelRatio();
        return pixelRatio == 0.0f ? getResources().getDisplayMetrics().density : pixelRatio;
    }

    public Bitmap getViewContent() {
        return BitmapUtils.createBitmapFromView(this);
    }

    public void addOnCameraWillChangeListener(OnCameraWillChangeListener onCameraWillChangeListener) {
        this.mapChangeReceiver.addOnCameraWillChangeListener(onCameraWillChangeListener);
    }

    public void removeOnCameraWillChangeListener(OnCameraWillChangeListener onCameraWillChangeListener) {
        this.mapChangeReceiver.removeOnCameraWillChangeListener(onCameraWillChangeListener);
    }

    public void addOnCameraIsChangingListener(OnCameraIsChangingListener onCameraIsChangingListener) {
        this.mapChangeReceiver.addOnCameraIsChangingListener(onCameraIsChangingListener);
    }

    public void removeOnCameraIsChangingListener(OnCameraIsChangingListener onCameraIsChangingListener) {
        this.mapChangeReceiver.removeOnCameraIsChangingListener(onCameraIsChangingListener);
    }

    public void addOnCameraDidChangeListener(OnCameraDidChangeListener onCameraDidChangeListener) {
        this.mapChangeReceiver.addOnCameraDidChangeListener(onCameraDidChangeListener);
    }

    public void removeOnCameraDidChangeListener(OnCameraDidChangeListener onCameraDidChangeListener) {
        this.mapChangeReceiver.removeOnCameraDidChangeListener(onCameraDidChangeListener);
    }

    public void addOnWillStartLoadingMapListener(OnWillStartLoadingMapListener onWillStartLoadingMapListener) {
        this.mapChangeReceiver.addOnWillStartLoadingMapListener(onWillStartLoadingMapListener);
    }

    public void removeOnWillStartLoadingMapListener(OnWillStartLoadingMapListener onWillStartLoadingMapListener) {
        this.mapChangeReceiver.removeOnWillStartLoadingMapListener(onWillStartLoadingMapListener);
    }

    public void addOnDidFinishLoadingMapListener(OnDidFinishLoadingMapListener onDidFinishLoadingMapListener) {
        this.mapChangeReceiver.addOnDidFinishLoadingMapListener(onDidFinishLoadingMapListener);
    }

    public void removeOnDidFinishLoadingMapListener(OnDidFinishLoadingMapListener onDidFinishLoadingMapListener) {
        this.mapChangeReceiver.removeOnDidFinishLoadingMapListener(onDidFinishLoadingMapListener);
    }

    public void addOnDidFailLoadingMapListener(OnDidFailLoadingMapListener onDidFailLoadingMapListener) {
        this.mapChangeReceiver.addOnDidFailLoadingMapListener(onDidFailLoadingMapListener);
    }

    public void removeOnDidFailLoadingMapListener(OnDidFailLoadingMapListener onDidFailLoadingMapListener) {
        this.mapChangeReceiver.removeOnDidFailLoadingMapListener(onDidFailLoadingMapListener);
    }

    public void addOnWillStartRenderingFrameListener(OnWillStartRenderingFrameListener onWillStartRenderingFrameListener) {
        this.mapChangeReceiver.addOnWillStartRenderingFrameListener(onWillStartRenderingFrameListener);
    }

    public void removeOnWillStartRenderingFrameListener(OnWillStartRenderingFrameListener onWillStartRenderingFrameListener) {
        this.mapChangeReceiver.removeOnWillStartRenderingFrameListener(onWillStartRenderingFrameListener);
    }

    public void addOnDidFinishRenderingFrameListener(OnDidFinishRenderingFrameListener onDidFinishRenderingFrameListener) {
        this.mapChangeReceiver.addOnDidFinishRenderingFrameListener(onDidFinishRenderingFrameListener);
    }

    public void removeOnDidFinishRenderingFrameListener(OnDidFinishRenderingFrameListener onDidFinishRenderingFrameListener) {
        this.mapChangeReceiver.removeOnDidFinishRenderingFrameListener(onDidFinishRenderingFrameListener);
    }

    public void addOnWillStartRenderingMapListener(OnWillStartRenderingMapListener onWillStartRenderingMapListener) {
        this.mapChangeReceiver.addOnWillStartRenderingMapListener(onWillStartRenderingMapListener);
    }

    public void removeOnWillStartRenderingMapListener(OnWillStartRenderingMapListener onWillStartRenderingMapListener) {
        this.mapChangeReceiver.removeOnWillStartRenderingMapListener(onWillStartRenderingMapListener);
    }

    public void addOnDidFinishRenderingMapListener(OnDidFinishRenderingMapListener onDidFinishRenderingMapListener) {
        this.mapChangeReceiver.addOnDidFinishRenderingMapListener(onDidFinishRenderingMapListener);
    }

    public void removeOnDidFinishRenderingMapListener(OnDidFinishRenderingMapListener onDidFinishRenderingMapListener) {
        this.mapChangeReceiver.removeOnDidFinishRenderingMapListener(onDidFinishRenderingMapListener);
    }

    public void addOnDidBecomeIdleListener(OnDidBecomeIdleListener onDidBecomeIdleListener) {
        this.mapChangeReceiver.addOnDidBecomeIdleListener(onDidBecomeIdleListener);
    }

    public void removeOnDidBecomeIdleListener(OnDidBecomeIdleListener onDidBecomeIdleListener) {
        this.mapChangeReceiver.removeOnDidBecomeIdleListener(onDidBecomeIdleListener);
    }

    public void addOnDidFinishLoadingStyleListener(OnDidFinishLoadingStyleListener onDidFinishLoadingStyleListener) {
        this.mapChangeReceiver.addOnDidFinishLoadingStyleListener(onDidFinishLoadingStyleListener);
    }

    public void removeOnDidFinishLoadingStyleListener(OnDidFinishLoadingStyleListener onDidFinishLoadingStyleListener) {
        this.mapChangeReceiver.removeOnDidFinishLoadingStyleListener(onDidFinishLoadingStyleListener);
    }

    public void addOnSourceChangedListener(OnSourceChangedListener onSourceChangedListener) {
        this.mapChangeReceiver.addOnSourceChangedListener(onSourceChangedListener);
    }

    public void removeOnSourceChangedListener(OnSourceChangedListener onSourceChangedListener) {
        this.mapChangeReceiver.removeOnSourceChangedListener(onSourceChangedListener);
    }

    public void addOnStyleImageMissingListener(OnStyleImageMissingListener onStyleImageMissingListener) {
        this.mapChangeReceiver.addOnStyleImageMissingListener(onStyleImageMissingListener);
    }

    public void removeOnStyleImageMissingListener(OnStyleImageMissingListener onStyleImageMissingListener) {
        this.mapChangeReceiver.removeOnStyleImageMissingListener(onStyleImageMissingListener);
    }

    public void addOnCanRemoveUnusedStyleImageListener(OnCanRemoveUnusedStyleImageListener onCanRemoveUnusedStyleImageListener) {
        this.mapChangeReceiver.addOnCanRemoveUnusedStyleImageListener(onCanRemoveUnusedStyleImageListener);
    }

    public void removeOnCanRemoveUnusedStyleImageListener(OnCanRemoveUnusedStyleImageListener onCanRemoveUnusedStyleImageListener) {
        this.mapChangeReceiver.removeOnCanRemoveUnusedStyleImageListener(onCanRemoveUnusedStyleImageListener);
    }

    public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        MapboxMap mapboxMap2 = this.mapboxMap;
        if (mapboxMap2 == null) {
            this.mapCallback.addOnMapReadyCallback(onMapReadyCallback);
        } else {
            onMapReadyCallback.onMapReady(mapboxMap2);
        }
    }

    private boolean isGestureDetectorInitialized() {
        return this.mapGestureDetector != null;
    }

    /* access modifiers changed from: package-private */
    public MapboxMap getMapboxMap() {
        return this.mapboxMap;
    }

    /* access modifiers changed from: package-private */
    public void setMapboxMap(MapboxMap mapboxMap2) {
        this.mapboxMap = mapboxMap2;
    }

    public static void setMapStrictModeEnabled(boolean z) {
        MapStrictMode.setStrictModeEnabled(z);
    }
}
