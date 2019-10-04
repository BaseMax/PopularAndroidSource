package com.mapbox.mapboxsdk.style.layers;

import com.google.gson.JsonElement;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.utils.ColorUtils;

public class CircleLayer extends Layer {
    private native Object nativeGetCircleBlur();

    private native TransitionOptions nativeGetCircleBlurTransition();

    private native Object nativeGetCircleColor();

    private native TransitionOptions nativeGetCircleColorTransition();

    private native Object nativeGetCircleOpacity();

    private native TransitionOptions nativeGetCircleOpacityTransition();

    private native Object nativeGetCirclePitchAlignment();

    private native Object nativeGetCirclePitchScale();

    private native Object nativeGetCircleRadius();

    private native TransitionOptions nativeGetCircleRadiusTransition();

    private native Object nativeGetCircleStrokeColor();

    private native TransitionOptions nativeGetCircleStrokeColorTransition();

    private native Object nativeGetCircleStrokeOpacity();

    private native TransitionOptions nativeGetCircleStrokeOpacityTransition();

    private native Object nativeGetCircleStrokeWidth();

    private native TransitionOptions nativeGetCircleStrokeWidthTransition();

    private native Object nativeGetCircleTranslate();

    private native Object nativeGetCircleTranslateAnchor();

    private native TransitionOptions nativeGetCircleTranslateTransition();

    private native void nativeSetCircleBlurTransition(long j, long j2);

    private native void nativeSetCircleColorTransition(long j, long j2);

    private native void nativeSetCircleOpacityTransition(long j, long j2);

    private native void nativeSetCircleRadiusTransition(long j, long j2);

    private native void nativeSetCircleStrokeColorTransition(long j, long j2);

    private native void nativeSetCircleStrokeOpacityTransition(long j, long j2);

    private native void nativeSetCircleStrokeWidthTransition(long j, long j2);

    private native void nativeSetCircleTranslateTransition(long j, long j2);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, String str2);

    CircleLayer(long j) {
        super(j);
    }

    public CircleLayer(String str, String str2) {
        initialize(str, str2);
    }

    public void setSourceLayer(String str) {
        checkThread();
        nativeSetSourceLayer(str);
    }

    public CircleLayer withSourceLayer(String str) {
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

    public CircleLayer withFilter(Expression expression) {
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

    public CircleLayer withProperties(PropertyValue<?>... propertyValueArr) {
        setProperties(propertyValueArr);
        return this;
    }

    public PropertyValue<Float> getCircleRadius() {
        checkThread();
        return new PropertyValue<>("circle-radius", nativeGetCircleRadius());
    }

    public TransitionOptions getCircleRadiusTransition() {
        checkThread();
        return nativeGetCircleRadiusTransition();
    }

    public void setCircleRadiusTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetCircleRadiusTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getCircleColor() {
        checkThread();
        return new PropertyValue<>("circle-color", nativeGetCircleColor());
    }

    public int getCircleColorAsInt() {
        checkThread();
        PropertyValue<String> circleColor = getCircleColor();
        if (circleColor.isValue()) {
            return ColorUtils.rgbaToColor(circleColor.getValue());
        }
        throw new RuntimeException("circle-color was set as a Function");
    }

    public TransitionOptions getCircleColorTransition() {
        checkThread();
        return nativeGetCircleColorTransition();
    }

    public void setCircleColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetCircleColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getCircleBlur() {
        checkThread();
        return new PropertyValue<>("circle-blur", nativeGetCircleBlur());
    }

    public TransitionOptions getCircleBlurTransition() {
        checkThread();
        return nativeGetCircleBlurTransition();
    }

    public void setCircleBlurTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetCircleBlurTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getCircleOpacity() {
        checkThread();
        return new PropertyValue<>("circle-opacity", nativeGetCircleOpacity());
    }

    public TransitionOptions getCircleOpacityTransition() {
        checkThread();
        return nativeGetCircleOpacityTransition();
    }

    public void setCircleOpacityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetCircleOpacityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float[]> getCircleTranslate() {
        checkThread();
        return new PropertyValue<>("circle-translate", nativeGetCircleTranslate());
    }

    public TransitionOptions getCircleTranslateTransition() {
        checkThread();
        return nativeGetCircleTranslateTransition();
    }

    public void setCircleTranslateTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetCircleTranslateTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getCircleTranslateAnchor() {
        checkThread();
        return new PropertyValue<>("circle-translate-anchor", nativeGetCircleTranslateAnchor());
    }

    public PropertyValue<String> getCirclePitchScale() {
        checkThread();
        return new PropertyValue<>("circle-pitch-scale", nativeGetCirclePitchScale());
    }

    public PropertyValue<String> getCirclePitchAlignment() {
        checkThread();
        return new PropertyValue<>("circle-pitch-alignment", nativeGetCirclePitchAlignment());
    }

    public PropertyValue<Float> getCircleStrokeWidth() {
        checkThread();
        return new PropertyValue<>("circle-stroke-width", nativeGetCircleStrokeWidth());
    }

    public TransitionOptions getCircleStrokeWidthTransition() {
        checkThread();
        return nativeGetCircleStrokeWidthTransition();
    }

    public void setCircleStrokeWidthTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetCircleStrokeWidthTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getCircleStrokeColor() {
        checkThread();
        return new PropertyValue<>("circle-stroke-color", nativeGetCircleStrokeColor());
    }

    public int getCircleStrokeColorAsInt() {
        checkThread();
        PropertyValue<String> circleStrokeColor = getCircleStrokeColor();
        if (circleStrokeColor.isValue()) {
            return ColorUtils.rgbaToColor(circleStrokeColor.getValue());
        }
        throw new RuntimeException("circle-stroke-color was set as a Function");
    }

    public TransitionOptions getCircleStrokeColorTransition() {
        checkThread();
        return nativeGetCircleStrokeColorTransition();
    }

    public void setCircleStrokeColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetCircleStrokeColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getCircleStrokeOpacity() {
        checkThread();
        return new PropertyValue<>("circle-stroke-opacity", nativeGetCircleStrokeOpacity());
    }

    public TransitionOptions getCircleStrokeOpacityTransition() {
        checkThread();
        return nativeGetCircleStrokeOpacityTransition();
    }

    public void setCircleStrokeOpacityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetCircleStrokeOpacityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }
}
