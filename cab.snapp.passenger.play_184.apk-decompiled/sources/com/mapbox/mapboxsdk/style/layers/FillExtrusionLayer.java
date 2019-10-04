package com.mapbox.mapboxsdk.style.layers;

import com.google.gson.JsonElement;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.utils.ColorUtils;

public class FillExtrusionLayer extends Layer {
    private native Object nativeGetFillExtrusionBase();

    private native TransitionOptions nativeGetFillExtrusionBaseTransition();

    private native Object nativeGetFillExtrusionColor();

    private native TransitionOptions nativeGetFillExtrusionColorTransition();

    private native Object nativeGetFillExtrusionHeight();

    private native TransitionOptions nativeGetFillExtrusionHeightTransition();

    private native Object nativeGetFillExtrusionOpacity();

    private native TransitionOptions nativeGetFillExtrusionOpacityTransition();

    private native Object nativeGetFillExtrusionPattern();

    private native TransitionOptions nativeGetFillExtrusionPatternTransition();

    private native Object nativeGetFillExtrusionTranslate();

    private native Object nativeGetFillExtrusionTranslateAnchor();

    private native TransitionOptions nativeGetFillExtrusionTranslateTransition();

    private native Object nativeGetFillExtrusionVerticalGradient();

    private native void nativeSetFillExtrusionBaseTransition(long j, long j2);

    private native void nativeSetFillExtrusionColorTransition(long j, long j2);

    private native void nativeSetFillExtrusionHeightTransition(long j, long j2);

    private native void nativeSetFillExtrusionOpacityTransition(long j, long j2);

    private native void nativeSetFillExtrusionPatternTransition(long j, long j2);

    private native void nativeSetFillExtrusionTranslateTransition(long j, long j2);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, String str2);

    FillExtrusionLayer(long j) {
        super(j);
    }

    public FillExtrusionLayer(String str, String str2) {
        initialize(str, str2);
    }

    public void setSourceLayer(String str) {
        checkThread();
        nativeSetSourceLayer(str);
    }

    public FillExtrusionLayer withSourceLayer(String str) {
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

    public FillExtrusionLayer withFilter(Expression expression) {
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

    public FillExtrusionLayer withProperties(PropertyValue<?>... propertyValueArr) {
        setProperties(propertyValueArr);
        return this;
    }

    public PropertyValue<Float> getFillExtrusionOpacity() {
        checkThread();
        return new PropertyValue<>("fill-extrusion-opacity", nativeGetFillExtrusionOpacity());
    }

    public TransitionOptions getFillExtrusionOpacityTransition() {
        checkThread();
        return nativeGetFillExtrusionOpacityTransition();
    }

    public void setFillExtrusionOpacityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetFillExtrusionOpacityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getFillExtrusionColor() {
        checkThread();
        return new PropertyValue<>("fill-extrusion-color", nativeGetFillExtrusionColor());
    }

    public int getFillExtrusionColorAsInt() {
        checkThread();
        PropertyValue<String> fillExtrusionColor = getFillExtrusionColor();
        if (fillExtrusionColor.isValue()) {
            return ColorUtils.rgbaToColor(fillExtrusionColor.getValue());
        }
        throw new RuntimeException("fill-extrusion-color was set as a Function");
    }

    public TransitionOptions getFillExtrusionColorTransition() {
        checkThread();
        return nativeGetFillExtrusionColorTransition();
    }

    public void setFillExtrusionColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetFillExtrusionColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float[]> getFillExtrusionTranslate() {
        checkThread();
        return new PropertyValue<>("fill-extrusion-translate", nativeGetFillExtrusionTranslate());
    }

    public TransitionOptions getFillExtrusionTranslateTransition() {
        checkThread();
        return nativeGetFillExtrusionTranslateTransition();
    }

    public void setFillExtrusionTranslateTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetFillExtrusionTranslateTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getFillExtrusionTranslateAnchor() {
        checkThread();
        return new PropertyValue<>("fill-extrusion-translate-anchor", nativeGetFillExtrusionTranslateAnchor());
    }

    public PropertyValue<String> getFillExtrusionPattern() {
        checkThread();
        return new PropertyValue<>("fill-extrusion-pattern", nativeGetFillExtrusionPattern());
    }

    public TransitionOptions getFillExtrusionPatternTransition() {
        checkThread();
        return nativeGetFillExtrusionPatternTransition();
    }

    public void setFillExtrusionPatternTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetFillExtrusionPatternTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getFillExtrusionHeight() {
        checkThread();
        return new PropertyValue<>("fill-extrusion-height", nativeGetFillExtrusionHeight());
    }

    public TransitionOptions getFillExtrusionHeightTransition() {
        checkThread();
        return nativeGetFillExtrusionHeightTransition();
    }

    public void setFillExtrusionHeightTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetFillExtrusionHeightTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getFillExtrusionBase() {
        checkThread();
        return new PropertyValue<>("fill-extrusion-base", nativeGetFillExtrusionBase());
    }

    public TransitionOptions getFillExtrusionBaseTransition() {
        checkThread();
        return nativeGetFillExtrusionBaseTransition();
    }

    public void setFillExtrusionBaseTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetFillExtrusionBaseTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Boolean> getFillExtrusionVerticalGradient() {
        checkThread();
        return new PropertyValue<>("fill-extrusion-vertical-gradient", nativeGetFillExtrusionVerticalGradient());
    }
}
