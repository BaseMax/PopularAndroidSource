package com.mapbox.mapboxsdk.style.sources;

import com.mapbox.geojson.FeatureCollection;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;

public interface GeometryTileProvider {
    FeatureCollection getFeaturesForBounds(LatLngBounds latLngBounds, int i);
}
