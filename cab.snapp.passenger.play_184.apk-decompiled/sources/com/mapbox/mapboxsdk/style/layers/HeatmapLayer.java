package com.mapbox.mapboxsdk.style.layers;

import com.google.gson.JsonElement;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.utils.ColorUtils;

public class HeatmapLayer extends Layer {
    private native Object nativeGetHeatmapColor();

    private native Object nativeGetHeatmapIntensity();

    private native TransitionOptions nativeGetHeatmapIntensityTransition();

    private native Object nativeGetHeatmapOpacity();

    private native TransitionOptions nativeGetHeatmapOpacityTransition();

    private native Object nativeGetHeatmapRadius();

    private native TransitionOptions nativeGetHeatmapRadiusTransition();

    private native Object nativeGetHeatmapWeight();

    private native void nativeSetHeatmapIntensityTransition(long j, long j2);

    private native void nativeSetHeatmapOpacityTransition(long j, long j2);

    private native void nativeSetHeatmapRadiusTransition(long j, long j2);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, String str2);

    HeatmapLayer(long j) {
        super(j);
    }

    public HeatmapLayer(String str, String str2) {
        initialize(str, str2);
    }

    public void setSourceLayer(String str) {
        checkThread();
        nativeSetSourceLayer(str);
    }

    public HeatmapLayer withSourceLayer(String str) {
        setSourceLayer(str);
        return this;
    }

    public String getSourceId() {
        checkThread();
        return nativeGetSourceId();
    }

    public String getSourceLayer() {
        checkThread();
        return nativeGetSourceLayer();
    }

    public void setFilter(Expression expression) {
        checkThread();
        nativeSetFilter(expression.toArray());
    }

    public HeatmapLayer withFilter(Expression expression) {
        setFilter(expression);
        return this;
    }

    public Expression getFilter() {
        checkThread();
        JsonElement nativeGetFilter = nativeGetFilter();
        if (nativeGetFilter != null) {
            return Expression.Converter.convert(nativeGetFilter);
        }
        return null;
    }

    public HeatmapLayer withProperties(PropertyValue<?>... propertyValueArr) {
        setProperties(propertyValueArr);
        return this;
    }

    public PropertyValue<Float> getHeatmapRadius() {
        checkThread();
        return new PropertyValue<>("heatmap-radius", nativeGetHeatmapRadius());
    }

    public TransitionOptions getHeatmapRadiusTransition() {
        checkThread();
        return nativeGetHeatmapRadiusTransition();
    }

    public void setHeatmapRadiusTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetHeatmapRadiusTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getHeatmapWeight() {
        checkThread();
        return new PropertyValue<>("heatmap-weight", nativeGetHeatmapWeight());
    }

    public PropertyValue<Float> getHeatmapIntensity() {
        checkThread();
        return new PropertyValue<>("heatmap-intensity", nativeGetHeatmapIntensity());
    }

    public TransitionOptions getHeatmapIntensityTransition() {
        checkThread();
        return nativeGetHeatmapIntensityTransition();
    }

    public void setHeatmapIntensityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetHeatmapIntensityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getHeatmapColor() {
        checkThread();
        return new PropertyValue<>("heatmap-color", nativeGetHeatmapColor());
    }

    public int getHeatmapColorAsInt() {
        checkThread();
        PropertyValue<String> heatmapColor = getHeatmapColor();
        if (heatmapColor.isValue()) {
            return ColorUtils.rgbaToColor(heatmapColor.getValue());
        }
        throw new RuntimeException("heatmap-color was set as a Function");
    }

    public PropertyValue<Float> getHeatmapOpacity() {
        checkThread();
        return new PropertyValue<>("heatmap-opacity", nativeGetHeatmapOpacity());
    }

    public TransitionOptions getHeatmapOpacityTransition() {
        checkThread();
        return nativeGetHeatmapOpacityTransition();
    }

    public void setHeatmapOpacityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetHeatmapOpacityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }
}
