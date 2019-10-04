package com.mapbox.mapboxsdk.style.layers;

import com.google.gson.JsonElement;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.utils.ColorUtils;

public class FillLayer extends Layer {
    private native Object nativeGetFillAntialias();

    private native Object nativeGetFillColor();

    private native TransitionOptions nativeGetFillColorTransition();

    private native Object nativeGetFillOpacity();

    private native TransitionOptions nativeGetFillOpacityTransition();

    private native Object nativeGetFillOutlineColor();

    private native TransitionOptions nativeGetFillOutlineColorTransition();

    private native Object nativeGetFillPattern();

    private native TransitionOptions nativeGetFillPatternTransition();

    private native Object nativeGetFillTranslate();

    private native Object nativeGetFillTranslateAnchor();

    private native TransitionOptions nativeGetFillTranslateTransition();

    private native void nativeSetFillColorTransition(long j, long j2);

    private native void nativeSetFillOpacityTransition(long j, long j2);

    private native void nativeSetFillOutlineColorTransition(long j, long j2);

    private native void nativeSetFillPatternTransition(long j, long j2);

    private native void nativeSetFillTranslateTransition(long j, long j2);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, String str2);

    FillLayer(long j) {
        super(j);
    }

    public FillLayer(String str, String str2) {
        initialize(str, str2);
    }

    public void setSourceLayer(String str) {
        checkThread();
        nativeSetSourceLayer(str);
    }

    public FillLayer withSourceLayer(String str) {
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

    public FillLayer withFilter(Expression expression) {
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

    public FillLayer withProperties(PropertyValue<?>... propertyValueArr) {
        setProperties(propertyValueArr);
        return this;
    }

    public PropertyValue<Boolean> getFillAntialias() {
        checkThread();
        return new PropertyValue<>("fill-antialias", nativeGetFillAntialias());
    }

    public PropertyValue<Float> getFillOpacity() {
        checkThread();
        return new PropertyValue<>("fill-opacity", nativeGetFillOpacity());
    }

    public TransitionOptions getFillOpacityTransition() {
        checkThread();
        return nativeGetFillOpacityTransition();
    }

    public void setFillOpacityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetFillOpacityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getFillColor() {
        checkThread();
        return new PropertyValue<>("fill-color", nativeGetFillColor());
    }

    public int getFillColorAsInt() {
        checkThread();
        PropertyValue<String> fillColor = getFillColor();
        if (fillColor.isValue()) {
            return ColorUtils.rgbaToColor(fillColor.getValue());
        }
        throw new RuntimeException("fill-color was set as a Function");
    }

    public TransitionOptions getFillColorTransition() {
        checkThread();
        return nativeGetFillColorTransition();
    }

    public void setFillColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetFillColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getFillOutlineColor() {
        checkThread();
        return new PropertyValue<>("fill-outline-color", nativeGetFillOutlineColor());
    }

    public int getFillOutlineColorAsInt() {
        checkThread();
        PropertyValue<String> fillOutlineColor = getFillOutlineColor();
        if (fillOutlineColor.isValue()) {
            return ColorUtils.rgbaToColor(fillOutlineColor.getValue());
        }
        throw new RuntimeException("fill-outline-color was set as a Function");
    }

    public TransitionOptions getFillOutlineColorTransition() {
        checkThread();
        return nativeGetFillOutlineColorTransition();
    }

    public void setFillOutlineColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetFillOutlineColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float[]> getFillTranslate() {
        checkThread();
        return new PropertyValue<>("fill-translate", nativeGetFillTranslate());
    }

    public TransitionOptions getFillTranslateTransition() {
        checkThread();
        return nativeGetFillTranslateTransition();
    }

    public void setFillTranslateTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetFillTranslateTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getFillTranslateAnchor() {
        checkThread();
        return new PropertyValue<>("fill-translate-anchor", nativeGetFillTranslateAnchor());
    }

    public PropertyValue<String> getFillPattern() {
        checkThread();
        return new PropertyValue<>("fill-pattern", nativeGetFillPattern());
    }

    public TransitionOptions getFillPatternTransition() {
        checkThread();
        return nativeGetFillPatternTransition();
    }

    public void setFillPatternTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetFillPatternTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }
}
