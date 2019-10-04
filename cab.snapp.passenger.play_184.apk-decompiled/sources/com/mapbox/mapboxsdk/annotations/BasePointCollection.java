package com.mapbox.mapboxsdk.annotations;

import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public abstract class BasePointCollection extends Annotation {
    private float alpha = 1.0f;
    private List<LatLng> points = new ArrayList();

    /* access modifiers changed from: package-private */
    public abstract void update();

    protected BasePointCollection() {
    }

    public List<LatLng> getPoints() {
        return new ArrayList(this.points);
    }

    public void setPoints(List<LatLng> list) {
        this.points = new ArrayList(list);
        update();
    }

    public void addPoint(LatLng latLng) {
        this.points.add(latLng);
        update();
    }

    public float getAlpha() {
        return this.alpha;
    }

    public void setAlpha(float f) {
        this.alpha = f;
        update();
    }
}
