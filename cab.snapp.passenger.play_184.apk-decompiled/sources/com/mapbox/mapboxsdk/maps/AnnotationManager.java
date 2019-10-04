package com.mapbox.mapboxsdk.maps;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import androidx.collection.LongSparseArray;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.annotations.Annotation;
import com.mapbox.mapboxsdk.annotations.BaseMarkerOptions;
import com.mapbox.mapboxsdk.annotations.Marker;
import com.mapbox.mapboxsdk.annotations.Polygon;
import com.mapbox.mapboxsdk.annotations.PolygonOptions;
import com.mapbox.mapboxsdk.annotations.Polyline;
import com.mapbox.mapboxsdk.annotations.PolylineOptions;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import java.util.ArrayList;
import java.util.List;

class AnnotationManager {
    private static final long NO_ANNOTATION_ID = -1;
    private static final String TAG = "Mbgl-AnnotationManager";
    private Annotations annotations;
    private final LongSparseArray<Annotation> annotationsArray;
    private final IconManager iconManager;
    private final InfoWindowManager infoWindowManager = new InfoWindowManager();
    private final MapView mapView;
    private MapboxMap mapboxMap;
    private Markers markers;
    private MapboxMap.OnMarkerClickListener onMarkerClickListener;
    private MapboxMap.OnPolygonClickListener onPolygonClickListener;
    private MapboxMap.OnPolylineClickListener onPolylineClickListener;
    private Polygons polygons;
    private Polylines polylines;
    private final List<Marker> selectedMarkers = new ArrayList();
    private ShapeAnnotations shapeAnnotations;

    static class MarkerHit {
        /* access modifiers changed from: private */
        public final List<Marker> markers;
        /* access modifiers changed from: private */
        public final RectF tapRect;

        MarkerHit(RectF rectF, List<Marker> list) {
            this.tapRect = rectF;
            this.markers = list;
        }

        /* access modifiers changed from: package-private */
        public float getTapPointX() {
            return this.tapRect.centerX();
        }

        /* access modifiers changed from: package-private */
        public float getTapPointY() {
            return this.tapRect.centerY();
        }
    }

    static class MarkerHitResolver {
        private Bitmap bitmap;
        private int bitmapHeight;
        private int bitmapWidth;
        private long closestMarkerId = -1;
        private RectF highestSurfaceIntersection = new RectF();
        private RectF hitRectMarker = new RectF();
        private Rect hitRectView = new Rect();
        private PointF markerLocation;
        private final int minimalTouchSize;
        private final Projection projection;
        private View view;

        MarkerHitResolver(MapboxMap mapboxMap) {
            this.projection = mapboxMap.getProjection();
            this.minimalTouchSize = (int) (Mapbox.getApplicationContext().getResources().getDisplayMetrics().density * 32.0f);
        }

        public long execute(MarkerHit markerHit) {
            resolveForMarkers(markerHit);
            return this.closestMarkerId;
        }

        private void resolveForMarkers(MarkerHit markerHit) {
            for (Marker resolveForMarker : markerHit.markers) {
                resolveForMarker(markerHit, resolveForMarker);
            }
        }

        private void resolveForMarker(MarkerHit markerHit, Marker marker) {
            this.markerLocation = this.projection.toScreenLocation(marker.getPosition());
            this.bitmap = marker.getIcon().getBitmap();
            this.bitmapHeight = this.bitmap.getHeight();
            int i = this.bitmapHeight;
            int i2 = this.minimalTouchSize;
            if (i < i2) {
                this.bitmapHeight = i2;
            }
            this.bitmapWidth = this.bitmap.getWidth();
            int i3 = this.bitmapWidth;
            int i4 = this.minimalTouchSize;
            if (i3 < i4) {
                this.bitmapWidth = i4;
            }
            this.hitRectMarker.set(0.0f, 0.0f, (float) this.bitmapWidth, (float) this.bitmapHeight);
            this.hitRectMarker.offsetTo(this.markerLocation.x - ((float) (this.bitmapWidth / 2)), this.markerLocation.y - ((float) (this.bitmapHeight / 2)));
            hitTestMarker(markerHit, marker, this.hitRectMarker);
        }

        private void hitTestMarker(MarkerHit markerHit, Marker marker, RectF rectF) {
            if (rectF.contains(markerHit.getTapPointX(), markerHit.getTapPointY())) {
                rectF.intersect(markerHit.tapRect);
                if (isRectangleHighestSurfaceIntersection(rectF)) {
                    this.highestSurfaceIntersection = new RectF(rectF);
                    this.closestMarkerId = marker.getId();
                }
            }
        }

        private boolean isRectangleHighestSurfaceIntersection(RectF rectF) {
            return rectF.width() * rectF.height() > this.highestSurfaceIntersection.width() * this.highestSurfaceIntersection.height();
        }
    }

    static class ShapeAnnotationHit {
        /* access modifiers changed from: private */
        public final RectF tapPoint;

        ShapeAnnotationHit(RectF rectF) {
            this.tapPoint = rectF;
        }
    }

    static class ShapeAnnotationHitResolver {
        private ShapeAnnotations shapeAnnotations;

        ShapeAnnotationHitResolver(ShapeAnnotations shapeAnnotations2) {
            this.shapeAnnotations = shapeAnnotations2;
        }

        public Annotation execute(ShapeAnnotationHit shapeAnnotationHit) {
            List<Annotation> obtainAllIn = this.shapeAnnotations.obtainAllIn(shapeAnnotationHit.tapPoint);
            if (obtainAllIn.size() > 0) {
                return obtainAllIn.get(0);
            }
            return null;
        }
    }

    AnnotationManager(MapView mapView2, LongSparseArray<Annotation> longSparseArray, IconManager iconManager2, Annotations annotations2, Markers markers2, Polygons polygons2, Polylines polylines2, ShapeAnnotations shapeAnnotations2) {
        this.mapView = mapView2;
        this.annotationsArray = longSparseArray;
        this.iconManager = iconManager2;
        this.annotations = annotations2;
        this.markers = markers2;
        this.polygons = polygons2;
        this.polylines = polylines2;
        this.shapeAnnotations = shapeAnnotations2;
    }

    /* access modifiers changed from: package-private */
    public AnnotationManager bind(MapboxMap mapboxMap2) {
        this.mapboxMap = mapboxMap2;
        return this;
    }

    /* access modifiers changed from: package-private */
    public void update() {
        this.infoWindowManager.update();
    }

    /* access modifiers changed from: package-private */
    public Annotation getAnnotation(long j) {
        return this.annotations.obtainBy(j);
    }

    /* access modifiers changed from: package-private */
    public List<Annotation> getAnnotations() {
        return this.annotations.obtainAll();
    }

    /* access modifiers changed from: package-private */
    public void removeAnnotation(long j) {
        this.annotations.removeBy(j);
    }

    /* access modifiers changed from: package-private */
    public void removeAnnotation(Annotation annotation) {
        if (annotation instanceof Marker) {
            Marker marker = (Marker) annotation;
            marker.hideInfoWindow();
            if (this.selectedMarkers.contains(marker)) {
                this.selectedMarkers.remove(marker);
            }
            this.iconManager.iconCleanup(marker.getIcon());
        }
        this.annotations.removeBy(annotation);
    }

    /* access modifiers changed from: package-private */
    public void removeAnnotations(List<? extends Annotation> list) {
        for (Annotation annotation : list) {
            if (annotation instanceof Marker) {
                Marker marker = (Marker) annotation;
                marker.hideInfoWindow();
                if (this.selectedMarkers.contains(marker)) {
                    this.selectedMarkers.remove(marker);
                }
                this.iconManager.iconCleanup(marker.getIcon());
            }
        }
        this.annotations.removeBy(list);
    }

    /* access modifiers changed from: package-private */
    public void removeAnnotations() {
        int size = this.annotationsArray.size();
        long[] jArr = new long[size];
        this.selectedMarkers.clear();
        for (int i = 0; i < size; i++) {
            jArr[i] = this.annotationsArray.keyAt(i);
            Annotation annotation = this.annotationsArray.get(jArr[i]);
            if (annotation instanceof Marker) {
                Marker marker = (Marker) annotation;
                marker.hideInfoWindow();
                this.iconManager.iconCleanup(marker.getIcon());
            }
        }
        this.annotations.removeAll();
    }

    /* access modifiers changed from: package-private */
    public Marker addMarker(BaseMarkerOptions baseMarkerOptions, MapboxMap mapboxMap2) {
        return this.markers.addBy(baseMarkerOptions, mapboxMap2);
    }

    /* access modifiers changed from: package-private */
    public List<Marker> addMarkers(List<? extends BaseMarkerOptions> list, MapboxMap mapboxMap2) {
        return this.markers.addBy(list, mapboxMap2);
    }

    /* access modifiers changed from: package-private */
    public void updateMarker(Marker marker, MapboxMap mapboxMap2) {
        if (!isAddedToMap(marker)) {
            logNonAdded(marker);
        } else {
            this.markers.update(marker, mapboxMap2);
        }
    }

    /* access modifiers changed from: package-private */
    public List<Marker> getMarkers() {
        return this.markers.obtainAll();
    }

    /* access modifiers changed from: package-private */
    public List<Marker> getMarkersInRect(RectF rectF) {
        return this.markers.obtainAllIn(rectF);
    }

    /* access modifiers changed from: package-private */
    public void reloadMarkers() {
        this.markers.reload();
    }

    /* access modifiers changed from: package-private */
    public Polygon addPolygon(PolygonOptions polygonOptions, MapboxMap mapboxMap2) {
        return this.polygons.addBy(polygonOptions, mapboxMap2);
    }

    /* access modifiers changed from: package-private */
    public List<Polygon> addPolygons(List<PolygonOptions> list, MapboxMap mapboxMap2) {
        return this.polygons.addBy(list, mapboxMap2);
    }

    /* access modifiers changed from: package-private */
    public void updatePolygon(Polygon polygon) {
        if (!isAddedToMap(polygon)) {
            logNonAdded(polygon);
        } else {
            this.polygons.update(polygon);
        }
    }

    /* access modifiers changed from: package-private */
    public List<Polygon> getPolygons() {
        return this.polygons.obtainAll();
    }

    /* access modifiers changed from: package-private */
    public Polyline addPolyline(PolylineOptions polylineOptions, MapboxMap mapboxMap2) {
        return this.polylines.addBy(polylineOptions, mapboxMap2);
    }

    /* access modifiers changed from: package-private */
    public List<Polyline> addPolylines(List<PolylineOptions> list, MapboxMap mapboxMap2) {
        return this.polylines.addBy(list, mapboxMap2);
    }

    /* access modifiers changed from: package-private */
    public void updatePolyline(Polyline polyline) {
        if (!isAddedToMap(polyline)) {
            logNonAdded(polyline);
        } else {
            this.polylines.update(polyline);
        }
    }

    /* access modifiers changed from: package-private */
    public List<Polyline> getPolylines() {
        return this.polylines.obtainAll();
    }

    /* access modifiers changed from: package-private */
    public void setOnMarkerClickListener(MapboxMap.OnMarkerClickListener onMarkerClickListener2) {
        this.onMarkerClickListener = onMarkerClickListener2;
    }

    /* access modifiers changed from: package-private */
    public void setOnPolygonClickListener(MapboxMap.OnPolygonClickListener onPolygonClickListener2) {
        this.onPolygonClickListener = onPolygonClickListener2;
    }

    /* access modifiers changed from: package-private */
    public void setOnPolylineClickListener(MapboxMap.OnPolylineClickListener onPolylineClickListener2) {
        this.onPolylineClickListener = onPolylineClickListener2;
    }

    /* access modifiers changed from: package-private */
    public void selectMarker(Marker marker) {
        if (!this.selectedMarkers.contains(marker)) {
            if (!this.infoWindowManager.isAllowConcurrentMultipleOpenInfoWindows()) {
                deselectMarkers();
            }
            if (this.infoWindowManager.isInfoWindowValidForMarker(marker) || this.infoWindowManager.getInfoWindowAdapter() != null) {
                this.infoWindowManager.add(marker.showInfoWindow(this.mapboxMap, this.mapView));
            }
            this.selectedMarkers.add(marker);
        }
    }

    /* access modifiers changed from: package-private */
    public void deselectMarkers() {
        if (!this.selectedMarkers.isEmpty()) {
            for (Marker next : this.selectedMarkers) {
                if (next != null && next.isInfoWindowShown()) {
                    next.hideInfoWindow();
                }
            }
            this.selectedMarkers.clear();
        }
    }

    /* access modifiers changed from: package-private */
    public void deselectMarker(Marker marker) {
        if (this.selectedMarkers.contains(marker)) {
            if (marker.isInfoWindowShown()) {
                marker.hideInfoWindow();
            }
            this.selectedMarkers.remove(marker);
        }
    }

    /* access modifiers changed from: package-private */
    public List<Marker> getSelectedMarkers() {
        return this.selectedMarkers;
    }

    /* access modifiers changed from: package-private */
    public InfoWindowManager getInfoWindowManager() {
        return this.infoWindowManager;
    }

    /* access modifiers changed from: package-private */
    public void adjustTopOffsetPixels(MapboxMap mapboxMap2) {
        int size = this.annotationsArray.size();
        for (int i = 0; i < size; i++) {
            Annotation annotation = this.annotationsArray.get((long) i);
            if (annotation instanceof Marker) {
                Marker marker = (Marker) annotation;
                marker.setTopOffsetPixels(this.iconManager.getTopOffsetPixelsForIcon(marker.getIcon()));
            }
        }
        for (Marker next : this.selectedMarkers) {
            if (next.isInfoWindowShown()) {
                next.hideInfoWindow();
                next.showInfoWindow(mapboxMap2, this.mapView);
            }
        }
    }

    private boolean isAddedToMap(Annotation annotation) {
        return (annotation == null || annotation.getId() == -1 || this.annotationsArray.indexOfKey(annotation.getId()) < 0) ? false : true;
    }

    private void logNonAdded(Annotation annotation) {
        Logger.w(TAG, String.format("Attempting to update non-added %s with value %s", new Object[]{annotation.getClass().getCanonicalName(), annotation}));
    }

    /* access modifiers changed from: package-private */
    public boolean onTap(PointF pointF) {
        long execute = new MarkerHitResolver(this.mapboxMap).execute(getMarkerHitFromTouchArea(pointF));
        if (execute != -1 && isClickHandledForMarker(execute)) {
            return true;
        }
        Annotation execute2 = new ShapeAnnotationHitResolver(this.shapeAnnotations).execute(getShapeAnnotationHitFromTap(pointF));
        if (execute2 == null || !handleClickForShapeAnnotation(execute2)) {
            return false;
        }
        return true;
    }

    private ShapeAnnotationHit getShapeAnnotationHitFromTap(PointF pointF) {
        float dimension = Mapbox.getApplicationContext().getResources().getDimension(R.dimen.mapbox_eight_dp);
        return new ShapeAnnotationHit(new RectF(pointF.x - dimension, pointF.y - dimension, pointF.x + dimension, pointF.y + dimension));
    }

    private boolean handleClickForShapeAnnotation(Annotation annotation) {
        if (annotation instanceof Polygon) {
            MapboxMap.OnPolygonClickListener onPolygonClickListener2 = this.onPolygonClickListener;
            if (onPolygonClickListener2 != null) {
                onPolygonClickListener2.onPolygonClick((Polygon) annotation);
                return true;
            }
        }
        if (annotation instanceof Polyline) {
            MapboxMap.OnPolylineClickListener onPolylineClickListener2 = this.onPolylineClickListener;
            if (onPolylineClickListener2 != null) {
                onPolylineClickListener2.onPolylineClick((Polyline) annotation);
                return true;
            }
        }
        return false;
    }

    private MarkerHit getMarkerHitFromTouchArea(PointF pointF) {
        double highestIconHeight = (double) this.iconManager.getHighestIconHeight();
        Double.isNaN(highestIconHeight);
        double highestIconWidth = (double) this.iconManager.getHighestIconWidth();
        Double.isNaN(highestIconWidth);
        float f = (float) ((int) (highestIconHeight * 1.5d));
        float f2 = (float) ((int) (highestIconWidth * 1.5d));
        RectF rectF = new RectF(pointF.x - f, pointF.y - f2, pointF.x + f, pointF.y + f2);
        return new MarkerHit(rectF, getMarkersInRect(rectF));
    }

    private boolean isClickHandledForMarker(long j) {
        Marker marker = (Marker) getAnnotation(j);
        if (!onClickMarker(marker)) {
            toggleMarkerSelectionState(marker);
        }
        return true;
    }

    private boolean onClickMarker(Marker marker) {
        MapboxMap.OnMarkerClickListener onMarkerClickListener2 = this.onMarkerClickListener;
        return onMarkerClickListener2 != null && onMarkerClickListener2.onMarkerClick(marker);
    }

    private void toggleMarkerSelectionState(Marker marker) {
        if (!this.selectedMarkers.contains(marker)) {
            selectMarker(marker);
        } else {
            deselectMarker(marker);
        }
    }
}
