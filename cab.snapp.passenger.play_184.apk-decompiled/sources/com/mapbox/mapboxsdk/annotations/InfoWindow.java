package com.mapbox.mapboxsdk.annotations;

import android.content.res.Resources;
import android.graphics.PointF;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import java.lang.ref.WeakReference;

@Deprecated
public class InfoWindow {
    private WeakReference<Marker> boundMarker;
    private final ViewTreeObserver.OnGlobalLayoutListener contentUpdateListener = new ViewTreeObserver.OnGlobalLayoutListener() {
        public void onGlobalLayout() {
            View view = (View) InfoWindow.this.view.get();
            if (view != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                } else {
                    view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                }
                float unused = InfoWindow.this.viewHeightOffset = ((float) (-view.getMeasuredHeight())) + InfoWindow.this.markerHeightOffset;
                InfoWindow.this.update();
            }
        }
    };
    private PointF coordinates;
    private boolean isVisible;
    private int layoutRes;
    /* access modifiers changed from: private */
    public WeakReference<MapboxMap> mapboxMap;
    /* access modifiers changed from: private */
    public float markerHeightOffset;
    private float markerWidthOffset;
    protected WeakReference<View> view;
    /* access modifiers changed from: private */
    public float viewHeightOffset;
    private float viewWidthOffset;

    InfoWindow(MapView mapView, int i, MapboxMap mapboxMap2) {
        this.layoutRes = i;
        initialize(LayoutInflater.from(mapView.getContext()).inflate(i, mapView, false), mapboxMap2);
    }

    InfoWindow(View view2, MapboxMap mapboxMap2) {
        initialize(view2, mapboxMap2);
    }

    private void initialize(View view2, MapboxMap mapboxMap2) {
        this.mapboxMap = new WeakReference<>(mapboxMap2);
        this.isVisible = false;
        this.view = new WeakReference<>(view2);
        view2.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                MapboxMap mapboxMap = (MapboxMap) InfoWindow.this.mapboxMap.get();
                if (mapboxMap != null) {
                    MapboxMap.OnInfoWindowClickListener onInfoWindowClickListener = mapboxMap.getOnInfoWindowClickListener();
                    boolean z = false;
                    if (onInfoWindowClickListener != null) {
                        z = onInfoWindowClickListener.onInfoWindowClick(InfoWindow.this.getBoundMarker());
                    }
                    if (!z) {
                        InfoWindow.this.closeInfoWindow();
                    }
                }
            }
        });
        view2.setOnLongClickListener(new View.OnLongClickListener() {
            public boolean onLongClick(View view) {
                MapboxMap mapboxMap = (MapboxMap) InfoWindow.this.mapboxMap.get();
                if (mapboxMap != null) {
                    MapboxMap.OnInfoWindowLongClickListener onInfoWindowLongClickListener = mapboxMap.getOnInfoWindowLongClickListener();
                    if (onInfoWindowLongClickListener != null) {
                        onInfoWindowLongClickListener.onInfoWindowLongClick(InfoWindow.this.getBoundMarker());
                    }
                }
                return true;
            }
        });
    }

    /* access modifiers changed from: private */
    public void closeInfoWindow() {
        MapboxMap mapboxMap2 = (MapboxMap) this.mapboxMap.get();
        Marker marker = (Marker) this.boundMarker.get();
        if (!(marker == null || mapboxMap2 == null)) {
            mapboxMap2.deselectMarker(marker);
        }
        close();
    }

    /* access modifiers changed from: package-private */
    public InfoWindow open(MapView mapView, Marker marker, LatLng latLng, int i, int i2) {
        float f;
        boolean z;
        float f2;
        float f3;
        boolean z2;
        int i3 = i;
        int i4 = i2;
        setBoundMarker(marker);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        MapboxMap mapboxMap2 = (MapboxMap) this.mapboxMap.get();
        View view2 = (View) this.view.get();
        if (!(view2 == null || mapboxMap2 == null)) {
            view2.measure(0, 0);
            float f4 = (float) i4;
            this.markerHeightOffset = f4;
            this.markerWidthOffset = (float) (-i3);
            this.coordinates = mapboxMap2.getProjection().toScreenLocation(latLng);
            float f5 = (float) i3;
            float measuredWidth = (this.coordinates.x - ((float) (view2.getMeasuredWidth() / 2))) + f5;
            float measuredHeight = (this.coordinates.y - ((float) view2.getMeasuredHeight())) + f4;
            if (view2 instanceof BubbleLayout) {
                Resources resources = mapView.getContext().getResources();
                float measuredWidth2 = ((float) view2.getMeasuredWidth()) + measuredWidth;
                float right = (float) mapView.getRight();
                float left = (float) mapView.getLeft();
                float dimension = resources.getDimension(R.dimen.mapbox_infowindow_margin);
                float dimension2 = resources.getDimension(R.dimen.mapbox_infowindow_tipview_width) / 2.0f;
                float measuredWidth3 = ((float) (view2.getMeasuredWidth() / 2)) - dimension2;
                if (this.coordinates.x >= 0.0f && this.coordinates.x <= ((float) mapView.getWidth()) && this.coordinates.y >= 0.0f && this.coordinates.y <= ((float) mapView.getHeight())) {
                    if (measuredWidth2 > right) {
                        float f6 = measuredWidth2 - right;
                        f2 = measuredWidth - f6;
                        measuredWidth3 += f6 + dimension2;
                        f = ((float) view2.getMeasuredWidth()) + f2;
                        z = true;
                    } else {
                        f2 = measuredWidth;
                        f = measuredWidth2;
                        z = false;
                    }
                    if (measuredWidth < left) {
                        float f7 = left - measuredWidth;
                        f2 += f7;
                        measuredWidth3 -= f7 + dimension2;
                        f3 = f2;
                        z2 = true;
                    } else {
                        f3 = measuredWidth;
                        z2 = false;
                    }
                    if (z) {
                        float f8 = right - f;
                        if (f8 < dimension) {
                            float f9 = dimension - f8;
                            f2 -= f9;
                            measuredWidth3 += f9 - dimension2;
                            f3 = f2;
                        }
                    }
                    if (z2) {
                        float f10 = f3 - left;
                        if (f10 < dimension) {
                            float f11 = dimension - f10;
                            f2 += f11;
                            measuredWidth3 -= f11 - dimension2;
                        }
                    }
                    measuredWidth = f2;
                }
                ((BubbleLayout) view2).setArrowPosition(measuredWidth3);
            }
            view2.setX(measuredWidth);
            view2.setY(measuredHeight);
            this.viewWidthOffset = (measuredWidth - this.coordinates.x) - f5;
            this.viewHeightOffset = (float) ((-view2.getMeasuredHeight()) + i4);
            close();
            mapView.addView(view2, layoutParams);
            this.isVisible = true;
        }
        return this;
    }

    /* access modifiers changed from: package-private */
    public InfoWindow close() {
        MapboxMap mapboxMap2 = (MapboxMap) this.mapboxMap.get();
        if (this.isVisible && mapboxMap2 != null) {
            this.isVisible = false;
            View view2 = (View) this.view.get();
            if (!(view2 == null || view2.getParent() == null)) {
                ((ViewGroup) view2.getParent()).removeView(view2);
            }
            Marker boundMarker2 = getBoundMarker();
            MapboxMap.OnInfoWindowCloseListener onInfoWindowCloseListener = mapboxMap2.getOnInfoWindowCloseListener();
            if (onInfoWindowCloseListener != null) {
                onInfoWindowCloseListener.onInfoWindowClose(boundMarker2);
            }
            setBoundMarker(null);
        }
        return this;
    }

    /* access modifiers changed from: package-private */
    public void adaptDefaultMarker(Marker marker, MapboxMap mapboxMap2, MapView mapView) {
        View view2 = (View) this.view.get();
        if (view2 == null) {
            view2 = LayoutInflater.from(mapView.getContext()).inflate(this.layoutRes, mapView, false);
            initialize(view2, mapboxMap2);
        }
        this.mapboxMap = new WeakReference<>(mapboxMap2);
        String title = marker.getTitle();
        TextView textView = (TextView) view2.findViewById(R.id.infowindow_title);
        if (!TextUtils.isEmpty(title)) {
            textView.setText(title);
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
        }
        String snippet = marker.getSnippet();
        TextView textView2 = (TextView) view2.findViewById(R.id.infowindow_description);
        if (!TextUtils.isEmpty(snippet)) {
            textView2.setText(snippet);
            textView2.setVisibility(0);
            return;
        }
        textView2.setVisibility(8);
    }

    /* access modifiers changed from: package-private */
    public InfoWindow setBoundMarker(Marker marker) {
        this.boundMarker = new WeakReference<>(marker);
        return this;
    }

    /* access modifiers changed from: package-private */
    public Marker getBoundMarker() {
        WeakReference<Marker> weakReference = this.boundMarker;
        if (weakReference == null) {
            return null;
        }
        return (Marker) weakReference.get();
    }

    public void update() {
        MapboxMap mapboxMap2 = (MapboxMap) this.mapboxMap.get();
        Marker marker = (Marker) this.boundMarker.get();
        View view2 = (View) this.view.get();
        if (mapboxMap2 != null && marker != null && view2 != null) {
            this.coordinates = mapboxMap2.getProjection().toScreenLocation(marker.getPosition());
            if (view2 instanceof BubbleLayout) {
                view2.setX((this.coordinates.x + this.viewWidthOffset) - this.markerWidthOffset);
            } else {
                view2.setX((this.coordinates.x - ((float) (view2.getMeasuredWidth() / 2))) - this.markerWidthOffset);
            }
            view2.setY(this.coordinates.y + this.viewHeightOffset);
        }
    }

    /* access modifiers changed from: package-private */
    public void onContentUpdate() {
        View view2 = (View) this.view.get();
        if (view2 != null) {
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnGlobalLayoutListener(this.contentUpdateListener);
            }
        }
    }

    public View getView() {
        WeakReference<View> weakReference = this.view;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public boolean isVisible() {
        return this.isVisible;
    }
}
