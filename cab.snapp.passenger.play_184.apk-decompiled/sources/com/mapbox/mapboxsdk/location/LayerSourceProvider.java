package com.mapbox.mapboxsdk.location;

import com.mapbox.geojson.Feature;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.style.layers.CircleLayer;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.PropertyFactory;
import com.mapbox.mapboxsdk.style.layers.SymbolLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonOptions;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;

class LayerSourceProvider {
    private static final String EMPTY_STRING = "";

    LayerSourceProvider() {
    }

    /* access modifiers changed from: package-private */
    public GeoJsonSource generateSource(Feature feature) {
        return new GeoJsonSource(LocationComponentConstants.LOCATION_SOURCE, feature, new GeoJsonOptions().withMaxZoom(16));
    }

    /* access modifiers changed from: package-private */
    public Layer generateLayer(String str) {
        SymbolLayer symbolLayer = new SymbolLayer(str, LocationComponentConstants.LOCATION_SOURCE);
        Expression literal = Expression.literal(str);
        Float valueOf = Float.valueOf(0.0f);
        symbolLayer.setProperties(PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconIgnorePlacement(Boolean.TRUE), PropertyFactory.iconRotationAlignment("map"), PropertyFactory.iconRotate(Expression.match(literal, Expression.literal((Number) valueOf), Expression.stop(LocationComponentConstants.FOREGROUND_LAYER, Expression.get("mapbox-property-gps-bearing")), Expression.stop(LocationComponentConstants.BACKGROUND_LAYER, Expression.get("mapbox-property-gps-bearing")), Expression.stop(LocationComponentConstants.SHADOW_LAYER, Expression.get("mapbox-property-gps-bearing")), Expression.stop(LocationComponentConstants.BEARING_LAYER, Expression.get("mapbox-property-compass-bearing")))), PropertyFactory.iconImage(Expression.match(Expression.literal(str), Expression.literal(""), Expression.stop(LocationComponentConstants.FOREGROUND_LAYER, Expression.switchCase(Expression.get("mapbox-property-location-stale"), Expression.get("mapbox-property-foreground-stale-icon"), Expression.get("mapbox-property-foreground-icon"))), Expression.stop(LocationComponentConstants.BACKGROUND_LAYER, Expression.switchCase(Expression.get("mapbox-property-location-stale"), Expression.get("mapbox-property-background-stale-icon"), Expression.get("mapbox-property-background-icon"))), Expression.stop(LocationComponentConstants.SHADOW_LAYER, Expression.literal("mapbox-location-shadow-icon")), Expression.stop(LocationComponentConstants.BEARING_LAYER, Expression.get("mapbox-property-shadow-icon")))), PropertyFactory.iconOffset(Expression.match(Expression.literal(str), Expression.literal((Object[]) new Float[]{valueOf, valueOf}), Expression.stop(Expression.literal(LocationComponentConstants.FOREGROUND_LAYER), Expression.get("mapbox-property-foreground-icon-offset")), Expression.stop(Expression.literal(LocationComponentConstants.SHADOW_LAYER), Expression.get("mapbox-property-shadow-icon-offset")))));
        return symbolLayer;
    }

    /* access modifiers changed from: package-private */
    public Layer generateAccuracyLayer() {
        return new CircleLayer(LocationComponentConstants.ACCURACY_LAYER, LocationComponentConstants.LOCATION_SOURCE).withProperties(PropertyFactory.circleRadius(Expression.get("mapbox-property-accuracy-radius")), PropertyFactory.circleColor(Expression.get("mapbox-property-accuracy-color")), PropertyFactory.circleOpacity(Expression.get("mapbox-property-accuracy-alpha")), PropertyFactory.circleStrokeColor(Expression.get("mapbox-property-accuracy-color")), PropertyFactory.circlePitchAlignment("map"));
    }
}
