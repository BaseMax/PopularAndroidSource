package com.mapbox.mapboxsdk.plugins.annotation;

import com.mapbox.mapboxsdk.style.layers.FillLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonOptions;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import java.util.concurrent.atomic.AtomicLong;

class FillElementProvider implements CoreElementProvider<FillLayer> {
    private static final AtomicLong ID_GENERATOR = new AtomicLong(0);
    private static final String ID_GEOJSON_LAYER = "mapbox-android-fill-layer-%s";
    private static final String ID_GEOJSON_SOURCE = "mapbox-android-fill-source-%s";
    private final String layerId;
    private final String sourceId;

    FillElementProvider() {
        long incrementAndGet = ID_GENERATOR.incrementAndGet();
        this.layerId = String.format(ID_GEOJSON_LAYER, new Object[]{Long.valueOf(incrementAndGet)});
        this.sourceId = String.format(ID_GEOJSON_SOURCE, new Object[]{Long.valueOf(incrementAndGet)});
    }

    public String getLayerId() {
        return this.layerId;
    }

    public FillLayer getLayer() {
        return new FillLayer(this.layerId, this.sourceId);
    }

    public GeoJsonSource getSource(GeoJsonOptions geoJsonOptions) {
        return new GeoJsonSource(this.sourceId, geoJsonOptions);
    }
}
