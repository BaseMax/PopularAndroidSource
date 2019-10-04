package com.mapbox.mapboxsdk.plugins.annotation;

import com.mapbox.mapboxsdk.style.layers.LineLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonOptions;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import java.util.concurrent.atomic.AtomicLong;

class LineElementProvider implements CoreElementProvider<LineLayer> {
    private static final AtomicLong ID_GENERATOR = new AtomicLong(0);
    private static final String ID_GEOJSON_LAYER = "mapbox-android-line-layer-%s";
    private static final String ID_GEOJSON_SOURCE = "mapbox-android-line-source-%s";
    private final String layerId;
    private final String sourceId;

    LineElementProvider() {
        long incrementAndGet = ID_GENERATOR.incrementAndGet();
        this.layerId = String.format(ID_GEOJSON_LAYER, new Object[]{Long.valueOf(incrementAndGet)});
        this.sourceId = String.format(ID_GEOJSON_SOURCE, new Object[]{Long.valueOf(incrementAndGet)});
    }

    public String getLayerId() {
        return this.layerId;
    }

    public LineLayer getLayer() {
        return new LineLayer(this.layerId, this.sourceId);
    }

    public GeoJsonSource getSource(GeoJsonOptions geoJsonOptions) {
        return new GeoJsonSource(this.sourceId, geoJsonOptions);
    }
}
