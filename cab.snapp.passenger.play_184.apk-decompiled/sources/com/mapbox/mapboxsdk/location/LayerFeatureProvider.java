package com.mapbox.mapboxsdk.location;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Point;

class LayerFeatureProvider {
    LayerFeatureProvider() {
    }

    /* access modifiers changed from: package-private */
    public Feature generateLocationFeature(Feature feature, LocationComponentOptions locationComponentOptions) {
        if (feature != null) {
            return feature;
        }
        Feature fromGeometry = Feature.fromGeometry(Point.fromLngLat(0.0d, 0.0d));
        fromGeometry.addNumberProperty("mapbox-property-gps-bearing", Float.valueOf(0.0f));
        fromGeometry.addNumberProperty("mapbox-property-compass-bearing", Float.valueOf(0.0f));
        fromGeometry.addBooleanProperty("mapbox-property-location-stale", Boolean.valueOf(locationComponentOptions.enableStaleState()));
        return fromGeometry;
    }
}
