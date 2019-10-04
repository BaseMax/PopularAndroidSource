package com.mapbox.mapboxsdk.location;

import android.graphics.Bitmap;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.location.MapboxAnimator;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.Property;
import com.mapbox.mapboxsdk.style.layers.PropertyFactory;
import com.mapbox.mapboxsdk.style.layers.PropertyValue;
import com.mapbox.mapboxsdk.style.layers.SymbolLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import com.mapbox.mapboxsdk.utils.ColorUtils;
import java.util.HashSet;
import java.util.Set;

final class LocationLayerController {
    private final MapboxAnimator.AnimationsValueChangeListener<Float> accuracyValueListener = new MapboxAnimator.AnimationsValueChangeListener<Float>() {
        public void onNewAnimationValue(Float f) {
            LocationLayerController.this.updateAccuracyRadius(f.floatValue());
        }
    };
    private final LayerBitmapProvider bitmapProvider;
    private final MapboxAnimator.AnimationsValueChangeListener<Float> compassBearingValueListener = new MapboxAnimator.AnimationsValueChangeListener<Float>() {
        public void onNewAnimationValue(Float f) {
            LocationLayerController.this.setBearingProperty("mapbox-property-compass-bearing", f.floatValue());
        }
    };
    private final MapboxAnimator.AnimationsValueChangeListener<Float> gpsBearingValueListener = new MapboxAnimator.AnimationsValueChangeListener<Float>() {
        public void onNewAnimationValue(Float f) {
            LocationLayerController.this.setBearingProperty("mapbox-property-gps-bearing", f.floatValue());
        }
    };
    private final OnRenderModeChangedListener internalRenderModeChangedListener;
    private boolean isHidden = true;
    private final MapboxAnimator.AnimationsValueChangeListener<LatLng> latLngValueListener = new MapboxAnimator.AnimationsValueChangeListener<LatLng>() {
        public void onNewAnimationValue(LatLng latLng) {
            LocationLayerController.this.setLocationPoint(Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude()));
        }
    };
    final Set<String> layerSet = new HashSet();
    private final LayerSourceProvider layerSourceProvider;
    private Feature locationFeature;
    private GeoJsonSource locationSource;
    private final MapboxMap mapboxMap;
    private LocationComponentOptions options;
    private LocationComponentPositionManager positionManager;
    private int renderMode;
    private Style style;

    private String buildIconString(String str, String str2) {
        return str != null ? str : str2;
    }

    LocationLayerController(MapboxMap mapboxMap2, Style style2, LayerSourceProvider layerSourceProvider2, LayerFeatureProvider layerFeatureProvider, LayerBitmapProvider layerBitmapProvider, LocationComponentOptions locationComponentOptions, OnRenderModeChangedListener onRenderModeChangedListener) {
        this.mapboxMap = mapboxMap2;
        this.style = style2;
        this.layerSourceProvider = layerSourceProvider2;
        this.bitmapProvider = layerBitmapProvider;
        this.locationFeature = layerFeatureProvider.generateLocationFeature(this.locationFeature, locationComponentOptions);
        this.internalRenderModeChangedListener = onRenderModeChangedListener;
        initializeComponents(style2, locationComponentOptions);
    }

    /* access modifiers changed from: package-private */
    public final void initializeComponents(Style style2, LocationComponentOptions locationComponentOptions) {
        this.style = style2;
        this.positionManager = new LocationComponentPositionManager(style2, locationComponentOptions.layerAbove(), locationComponentOptions.layerBelow());
        addLocationSource();
        addLayers();
        applyStyle(locationComponentOptions);
        if (this.isHidden) {
            hide();
        } else {
            show();
        }
    }

    /* access modifiers changed from: package-private */
    public final void applyStyle(LocationComponentOptions locationComponentOptions) {
        if (this.positionManager.update(locationComponentOptions.layerAbove(), locationComponentOptions.layerBelow())) {
            removeLayers();
            addLayers();
            if (this.isHidden) {
                hide();
            }
        }
        this.options = locationComponentOptions;
        if (locationComponentOptions.elevation() > 0.0f) {
            styleShadow(locationComponentOptions);
        }
        styleForeground(locationComponentOptions);
        styleBackground(locationComponentOptions);
        styleBearing(locationComponentOptions);
        styleAccuracy(locationComponentOptions.accuracyAlpha(), locationComponentOptions.accuracyColor());
        styleScaling(locationComponentOptions);
        determineIconsSource(locationComponentOptions);
        if (!this.isHidden) {
            show();
        }
    }

    /* access modifiers changed from: package-private */
    public final void setRenderMode(int i) {
        if (this.renderMode != i) {
            this.renderMode = i;
            if (!this.isHidden) {
                styleForeground(this.options);
                show();
            }
            determineIconsSource(this.options);
            this.internalRenderModeChangedListener.onRenderModeChanged(i);
        }
    }

    /* access modifiers changed from: package-private */
    public final int getRenderMode() {
        return this.renderMode;
    }

    /* access modifiers changed from: package-private */
    public final void show() {
        this.isHidden = false;
        boolean booleanValue = this.locationFeature.getBooleanProperty("mapbox-property-location-stale").booleanValue();
        int i = this.renderMode;
        if (i != 4) {
            if (i == 8) {
                setLayerVisibility(LocationComponentConstants.SHADOW_LAYER, false);
                setLayerVisibility(LocationComponentConstants.FOREGROUND_LAYER, true);
                setLayerVisibility(LocationComponentConstants.BACKGROUND_LAYER, true);
                setLayerVisibility(LocationComponentConstants.ACCURACY_LAYER, false);
                setLayerVisibility(LocationComponentConstants.BEARING_LAYER, false);
            } else if (i == 18) {
                setLayerVisibility(LocationComponentConstants.SHADOW_LAYER, true);
                setLayerVisibility(LocationComponentConstants.FOREGROUND_LAYER, true);
                setLayerVisibility(LocationComponentConstants.BACKGROUND_LAYER, true);
                setLayerVisibility(LocationComponentConstants.ACCURACY_LAYER, !booleanValue);
                setLayerVisibility(LocationComponentConstants.BEARING_LAYER, false);
                return;
            }
            return;
        }
        setLayerVisibility(LocationComponentConstants.SHADOW_LAYER, true);
        setLayerVisibility(LocationComponentConstants.FOREGROUND_LAYER, true);
        setLayerVisibility(LocationComponentConstants.BACKGROUND_LAYER, true);
        setLayerVisibility(LocationComponentConstants.ACCURACY_LAYER, !booleanValue);
        setLayerVisibility(LocationComponentConstants.BEARING_LAYER, true);
    }

    /* access modifiers changed from: package-private */
    public final void hide() {
        this.isHidden = true;
        for (String layerVisibility : this.layerSet) {
            setLayerVisibility(layerVisibility, false);
        }
    }

    /* access modifiers changed from: package-private */
    public final void updateForegroundOffset(double d) {
        JsonArray jsonArray = new JsonArray();
        Float valueOf = Float.valueOf(0.0f);
        jsonArray.add((Number) valueOf);
        jsonArray.add((Number) Float.valueOf((float) (-0.05d * d)));
        this.locationFeature.addProperty("mapbox-property-foreground-icon-offset", jsonArray);
        JsonArray jsonArray2 = new JsonArray();
        jsonArray2.add((Number) valueOf);
        jsonArray2.add((Number) Float.valueOf((float) (d * 0.05d)));
        this.locationFeature.addProperty("mapbox-property-shadow-icon-offset", jsonArray2);
        refreshSource();
    }

    /* access modifiers changed from: package-private */
    public final void updateForegroundBearing(float f) {
        if (this.renderMode != 8) {
            setBearingProperty("mapbox-property-gps-bearing", f);
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean isHidden() {
        return this.isHidden;
    }

    /* access modifiers changed from: package-private */
    public final boolean isConsumingCompass() {
        return this.renderMode == 4;
    }

    private void setLayerVisibility(String str, boolean z) {
        Layer layer = this.style.getLayer(str);
        if (layer != null) {
            String str2 = Property.VISIBLE;
            if (!((String) layer.getVisibility().value).equals(z ? str2 : "none")) {
                PropertyValue[] propertyValueArr = new PropertyValue[1];
                if (!z) {
                    str2 = "none";
                }
                propertyValueArr[0] = PropertyFactory.visibility(str2);
                layer.setProperties(propertyValueArr);
            }
        }
    }

    private void addLayers() {
        Layer generateLayer = this.layerSourceProvider.generateLayer(LocationComponentConstants.BEARING_LAYER);
        this.positionManager.addLayerToMap(generateLayer);
        this.layerSet.add(generateLayer.getId());
        addSymbolLayer(LocationComponentConstants.FOREGROUND_LAYER, LocationComponentConstants.BEARING_LAYER);
        addSymbolLayer(LocationComponentConstants.BACKGROUND_LAYER, LocationComponentConstants.FOREGROUND_LAYER);
        addSymbolLayer(LocationComponentConstants.SHADOW_LAYER, LocationComponentConstants.BACKGROUND_LAYER);
        addAccuracyLayer();
    }

    private void addSymbolLayer(String str, String str2) {
        addLayerToMap(this.layerSourceProvider.generateLayer(str), str2);
    }

    private void addAccuracyLayer() {
        addLayerToMap(this.layerSourceProvider.generateAccuracyLayer(), LocationComponentConstants.BACKGROUND_LAYER);
    }

    private void addLayerToMap(Layer layer, String str) {
        this.style.addLayerBelow(layer, str);
        this.layerSet.add(layer.getId());
    }

    private void removeLayers() {
        for (String removeLayer : this.layerSet) {
            this.style.removeLayer(removeLayer);
        }
        this.layerSet.clear();
    }

    /* access modifiers changed from: private */
    public void setBearingProperty(String str, float f) {
        this.locationFeature.addNumberProperty(str, Float.valueOf(f));
        refreshSource();
    }

    /* access modifiers changed from: private */
    public void updateAccuracyRadius(float f) {
        this.locationFeature.addNumberProperty("mapbox-property-accuracy-radius", Float.valueOf(f));
        refreshSource();
    }

    private void addLocationSource() {
        this.locationSource = this.layerSourceProvider.generateSource(this.locationFeature);
        this.style.addSource(this.locationSource);
    }

    private void refreshSource() {
        if (((GeoJsonSource) this.style.getSourceAs(LocationComponentConstants.LOCATION_SOURCE)) != null) {
            this.locationSource.setGeoJson(this.locationFeature);
        }
    }

    /* access modifiers changed from: private */
    public void setLocationPoint(Point point) {
        JsonObject properties = this.locationFeature.properties();
        if (properties != null) {
            this.locationFeature = Feature.fromGeometry((Geometry) point, properties);
            refreshSource();
        }
    }

    private void styleBackground(LocationComponentOptions locationComponentOptions) {
        Bitmap generateBitmap = this.bitmapProvider.generateBitmap(locationComponentOptions.backgroundDrawable(), locationComponentOptions.backgroundTintColor());
        Bitmap generateBitmap2 = this.bitmapProvider.generateBitmap(locationComponentOptions.backgroundDrawableStale(), locationComponentOptions.backgroundStaleTintColor());
        this.style.addImage("mapbox-location-stroke-icon", generateBitmap);
        this.style.addImage("mapbox-location-background-stale-icon", generateBitmap2);
    }

    private void styleShadow(LocationComponentOptions locationComponentOptions) {
        this.style.addImage("mapbox-location-shadow-icon", this.bitmapProvider.generateShadowBitmap(locationComponentOptions));
    }

    private void styleBearing(LocationComponentOptions locationComponentOptions) {
        this.style.addImage("mapbox-location-bearing-icon", this.bitmapProvider.generateBitmap(locationComponentOptions.bearingDrawable(), locationComponentOptions.bearingTintColor()));
    }

    private void styleAccuracy(float f, int i) {
        this.locationFeature.addNumberProperty("mapbox-property-accuracy-alpha", Float.valueOf(f));
        this.locationFeature.addStringProperty("mapbox-property-accuracy-color", ColorUtils.colorToRgbaString(i));
        refreshSource();
    }

    private void styleForeground(LocationComponentOptions locationComponentOptions) {
        Bitmap generateBitmap = this.bitmapProvider.generateBitmap(locationComponentOptions.foregroundDrawable(), locationComponentOptions.foregroundTintColor());
        Bitmap generateBitmap2 = this.bitmapProvider.generateBitmap(locationComponentOptions.foregroundDrawableStale(), locationComponentOptions.foregroundStaleTintColor());
        if (this.renderMode == 8) {
            generateBitmap = this.bitmapProvider.generateBitmap(locationComponentOptions.gpsDrawable(), locationComponentOptions.foregroundTintColor());
            generateBitmap2 = this.bitmapProvider.generateBitmap(locationComponentOptions.gpsDrawable(), locationComponentOptions.foregroundStaleTintColor());
        }
        this.style.addImage("mapbox-location-icon", generateBitmap);
        this.style.addImage("mapbox-location-stale-icon", generateBitmap2);
    }

    private void styleScaling(LocationComponentOptions locationComponentOptions) {
        for (String layer : this.layerSet) {
            Layer layer2 = this.style.getLayer(layer);
            if (layer2 instanceof SymbolLayer) {
                layer2.setProperties(PropertyFactory.iconSize(Expression.interpolate(Expression.linear(), Expression.zoom(), Expression.stop(Double.valueOf(this.mapboxMap.getMinZoomLevel()), Float.valueOf(locationComponentOptions.minZoomIconScale())), Expression.stop(Double.valueOf(this.mapboxMap.getMaxZoomLevel()), Float.valueOf(locationComponentOptions.maxZoomIconScale())))));
            }
        }
    }

    private void determineIconsSource(LocationComponentOptions locationComponentOptions) {
        String buildIconString = buildIconString(this.renderMode == 8 ? locationComponentOptions.gpsName() : locationComponentOptions.foregroundName(), "mapbox-location-icon");
        String buildIconString2 = buildIconString(locationComponentOptions.foregroundStaleName(), "mapbox-location-stale-icon");
        String buildIconString3 = buildIconString(locationComponentOptions.backgroundName(), "mapbox-location-stroke-icon");
        String buildIconString4 = buildIconString(locationComponentOptions.backgroundStaleName(), "mapbox-location-background-stale-icon");
        String buildIconString5 = buildIconString(locationComponentOptions.bearingName(), "mapbox-location-bearing-icon");
        this.locationFeature.addStringProperty("mapbox-property-foreground-icon", buildIconString);
        this.locationFeature.addStringProperty("mapbox-property-background-icon", buildIconString3);
        this.locationFeature.addStringProperty("mapbox-property-foreground-stale-icon", buildIconString2);
        this.locationFeature.addStringProperty("mapbox-property-background-stale-icon", buildIconString4);
        this.locationFeature.addStringProperty("mapbox-property-shadow-icon", buildIconString5);
        refreshSource();
    }

    /* access modifiers changed from: package-private */
    public final void setLocationsStale(boolean z) {
        this.locationFeature.addBooleanProperty("mapbox-property-location-stale", Boolean.valueOf(z));
        refreshSource();
        if (this.renderMode != 8) {
            setLayerVisibility(LocationComponentConstants.ACCURACY_LAYER, !z);
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean onMapClick(LatLng latLng) {
        return !this.mapboxMap.queryRenderedFeatures(this.mapboxMap.getProjection().toScreenLocation(latLng), LocationComponentConstants.BACKGROUND_LAYER, LocationComponentConstants.FOREGROUND_LAYER, LocationComponentConstants.BEARING_LAYER).isEmpty();
    }

    /* access modifiers changed from: package-private */
    public final Set<AnimatorListenerHolder> getAnimationListeners() {
        HashSet hashSet = new HashSet();
        hashSet.add(new AnimatorListenerHolder(0, this.latLngValueListener));
        int i = this.renderMode;
        if (i == 8) {
            hashSet.add(new AnimatorListenerHolder(2, this.gpsBearingValueListener));
        } else if (i == 4) {
            hashSet.add(new AnimatorListenerHolder(3, this.compassBearingValueListener));
        }
        int i2 = this.renderMode;
        if (i2 == 4 || i2 == 18) {
            hashSet.add(new AnimatorListenerHolder(6, this.accuracyValueListener));
        }
        return hashSet;
    }
}
