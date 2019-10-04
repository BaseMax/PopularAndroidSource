package com.mapbox.mapboxsdk.annotations;

import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public final class Polygon extends BasePointCollection {
    private int fillColor = -16777216;
    private List<List<LatLng>> holes = new ArrayList();
    private int strokeColor = -16777216;

    Polygon() {
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    public final List<List<LatLng>> getHoles() {
        return new ArrayList(this.holes);
    }

    public final void setFillColor(int i) {
        this.fillColor = i;
        update();
    }

    public final void setStrokeColor(int i) {
        this.strokeColor = i;
        update();
    }

    public final void setHoles(List<? extends List<LatLng>> list) {
        this.holes = new ArrayList(list);
        update();
    }

    /* access modifiers changed from: package-private */
    public final void addHole(List<LatLng> list) {
        this.holes.add(list);
        update();
    }

    /* access modifiers changed from: package-private */
    public final void update() {
        MapboxMap mapboxMap = getMapboxMap();
        if (mapboxMap != null) {
            mapboxMap.updatePolygon(this);
        }
    }
}
