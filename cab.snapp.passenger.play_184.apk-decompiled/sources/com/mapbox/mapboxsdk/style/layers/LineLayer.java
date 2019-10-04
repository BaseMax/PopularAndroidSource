package com.mapbox.mapboxsdk.style.layers;

import com.google.gson.JsonElement;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.utils.ColorUtils;

public class LineLayer extends Layer {
    private native Object nativeGetLineBlur();

    private native TransitionOptions nativeGetLineBlurTransition();

    private native Object nativeGetLineCap();

    private native Object nativeGetLineColor();

    private native TransitionOptions nativeGetLineColorTransition();

    private native Object nativeGetLineDasharray();

    private native TransitionOptions nativeGetLineDasharrayTransition();

    private native Object nativeGetLineGapWidth();

    private native TransitionOptions nativeGetLineGapWidthTransition();

    private native Object nativeGetLineGradient();

    private native Object nativeGetLineJoin();

    private native Object nativeGetLineMiterLimit();

    private native Object nativeGetLineOffset();

    private native TransitionOptions nativeGetLineOffsetTransition();

    private native Object nativeGetLineOpacity();

    private native TransitionOptions nativeGetLineOpacityTransition();

    private native Object nativeGetLinePattern();

    private native TransitionOptions nativeGetLinePatternTransition();

    private native Object nativeGetLineRoundLimit();

    private native Object nativeGetLineTranslate();

    private native Object nativeGetLineTranslateAnchor();

    private native TransitionOptions nativeGetLineTranslateTransition();

    private native Object nativeGetLineWidth();

    private native TransitionOptions nativeGetLineWidthTransition();

    private native void nativeSetLineBlurTransition(long j, long j2);

    private native void nativeSetLineColorTransition(long j, long j2);

    private native void nativeSetLineDasharrayTransition(long j, long j2);

    private native void nativeSetLineGapWidthTransition(long j, long j2);

    private native void nativeSetLineOffsetTransition(long j, long j2);

    private native void nativeSetLineOpacityTransition(long j, long j2);

    private native void nativeSetLinePatternTransition(long j, long j2);

    private native void nativeSetLineTranslateTransition(long j, long j2);

    private native void nativeSetLineWidthTransition(long j, long j2);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, String str2);

    LineLayer(long j) {
        super(j);
    }

    public LineLayer(String str, String str2) {
        initialize(str, str2);
    }

    public void setSourceLayer(String str) {
        checkThread();
        nativeSetSourceLayer(str);
    }

    public LineLayer withSourceLayer(String str) {
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

    public LineLayer withFilter(Expression expression) {
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

    public LineLayer withProperties(PropertyValue<?>... propertyValueArr) {
        setProperties(propertyValueArr);
        return this;
    }

    public PropertyValue<String> getLineCap() {
        checkThread();
        return new PropertyValue<>("line-cap", nativeGetLineCap());
    }

    public PropertyValue<String> getLineJoin() {
        checkThread();
        return new PropertyValue<>("line-join", nativeGetLineJoin());
    }

    public PropertyValue<Float> getLineMiterLimit() {
        checkThread();
        return new PropertyValue<>("line-miter-limit", nativeGetLineMiterLimit());
    }

    public PropertyValue<Float> getLineRoundLimit() {
        checkThread();
        return new PropertyValue<>("line-round-limit", nativeGetLineRoundLimit());
    }

    public PropertyValue<Float> getLineOpacity() {
        checkThread();
        return new PropertyValue<>("line-opacity", nativeGetLineOpacity());
    }

    public TransitionOptions getLineOpacityTransition() {
        checkThread();
        return nativeGetLineOpacityTransition();
    }

    public void setLineOpacityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetLineOpacityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getLineColor() {
        checkThread();
        return new PropertyValue<>("line-color", nativeGetLineColor());
    }

    public int getLineColorAsInt() {
        checkThread();
        PropertyValue<String> lineColor = getLineColor();
        if (lineColor.isValue()) {
            return ColorUtils.rgbaToColor(lineColor.getValue());
        }
        throw new RuntimeException("line-color was set as a Function");
    }

    public TransitionOptions getLineColorTransition() {
        checkThread();
        return nativeGetLineColorTransition();
    }

    public void setLineColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetLineColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float[]> getLineTranslate() {
        checkThread();
        return new PropertyValue<>("line-translate", nativeGetLineTranslate());
    }

    public TransitionOptions getLineTranslateTransition() {
        checkThread();
        return nativeGetLineTranslateTransition();
    }

    public void setLineTranslateTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetLineTranslateTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getLineTranslateAnchor() {
        checkThread();
        return new PropertyValue<>("line-translate-anchor", nativeGetLineTranslateAnchor());
    }

    public PropertyValue<Float> getLineWidth() {
        checkThread();
        return new PropertyValue<>("line-width", nativeGetLineWidth());
    }

    public TransitionOptions getLineWidthTransition() {
        checkThread();
        return nativeGetLineWidthTransition();
    }

    public void setLineWidthTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetLineWidthTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getLineGapWidth() {
        checkThread();
        return new PropertyValue<>("line-gap-width", nativeGetLineGapWidth());
    }

    public TransitionOptions getLineGapWidthTransition() {
        checkThread();
        return nativeGetLineGapWidthTransition();
    }

    public void setLineGapWidthTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetLineGapWidthTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getLineOffset() {
        checkThread();
        return new PropertyValue<>("line-offset", nativeGetLineOffset());
    }

    public TransitionOptions getLineOffsetTransition() {
        checkThread();
        return nativeGetLineOffsetTransition();
    }

    public void setLineOffsetTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetLineOffsetTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getLineBlur() {
        checkThread();
        return new PropertyValue<>("line-blur", nativeGetLineBlur());
    }

    public TransitionOptions getLineBlurTransition() {
        checkThread();
        return nativeGetLineBlurTransition();
    }

    public void setLineBlurTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetLineBlurTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float[]> getLineDasharray() {
        checkThread();
        return new PropertyValue<>("line-dasharray", nativeGetLineDasharray());
    }

    public TransitionOptions getLineDasharrayTransition() {
        checkThread();
        return nativeGetLineDasharrayTransition();
    }

    public void setLineDasharrayTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetLineDasharrayTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getLinePattern() {
        checkThread();
        return new PropertyValue<>("line-pattern", nativeGetLinePattern());
    }

    public TransitionOptions getLinePatternTransition() {
        checkThread();
        return nativeGetLinePatternTransition();
    }

    public void setLinePatternTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetLinePatternTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getLineGradient() {
        checkThread();
        return new PropertyValue<>("line-gradient", nativeGetLineGradient());
    }

    public int getLineGradientAsInt() {
        checkThread();
        PropertyValue<String> lineGradient = getLineGradient();
        if (lineGradient.isValue()) {
            return ColorUtils.rgbaToColor(lineGradient.getValue());
        }
        throw new RuntimeException("line-gradient was set as a Function");
    }
}
