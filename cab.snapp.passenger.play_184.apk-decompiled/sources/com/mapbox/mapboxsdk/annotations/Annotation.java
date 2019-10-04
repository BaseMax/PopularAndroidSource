package com.mapbox.mapboxsdk.annotations;

import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMap;

@Deprecated
public abstract class Annotation implements Comparable<Annotation> {
    private long id = -1;
    protected MapView mapView;
    protected MapboxMap mapboxMap;

    protected Annotation() {
    }

    public long getId() {
        return this.id;
    }

    public void remove() {
        MapboxMap mapboxMap2 = this.mapboxMap;
        if (mapboxMap2 != null) {
            mapboxMap2.removeAnnotation(this);
        }
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setMapboxMap(MapboxMap mapboxMap2) {
        this.mapboxMap = mapboxMap2;
    }

    /* access modifiers changed from: protected */
    public MapboxMap getMapboxMap() {
        return this.mapboxMap;
    }

    public void setMapView(MapView mapView2) {
        this.mapView = mapView2;
    }

    /* access modifiers changed from: protected */
    public MapView getMapView() {
        return this.mapView;
    }

    public int compareTo(Annotation annotation) {
        if (this.id < annotation.getId()) {
            return 1;
        }
        return this.id > annotation.getId() ? -1 : 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && (obj instanceof Annotation) && this.id == ((Annotation) obj).getId();
    }

    public int hashCode() {
        return (int) (getId() ^ (getId() >>> 32));
    }
}
