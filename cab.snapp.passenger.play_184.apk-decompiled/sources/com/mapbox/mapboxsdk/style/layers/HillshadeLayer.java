package com.mapbox.mapboxsdk.style.layers;

import com.mapbox.mapboxsdk.utils.ColorUtils;

public class HillshadeLayer extends Layer {
    private native Object nativeGetHillshadeAccentColor();

    private native TransitionOptions nativeGetHillshadeAccentColorTransition();

    private native Object nativeGetHillshadeExaggeration();

    private native TransitionOptions nativeGetHillshadeExaggerationTransition();

    private native Object nativeGetHillshadeHighlightColor();

    private native TransitionOptions nativeGetHillshadeHighlightColorTransition();

    private native Object nativeGetHillshadeIlluminationAnchor();

    private native Object nativeGetHillshadeIlluminationDirection();

    private native Object nativeGetHillshadeShadowColor();

    private native TransitionOptions nativeGetHillshadeShadowColorTransition();

    private native void nativeSetHillshadeAccentColorTransition(long j, long j2);

    private native void nativeSetHillshadeExaggerationTransition(long j, long j2);

    private native void nativeSetHillshadeHighlightColorTransition(long j, long j2);

    private native void nativeSetHillshadeShadowColorTransition(long j, long j2);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, String str2);

    HillshadeLayer(long j) {
        super(j);
    }

    public HillshadeLayer(String str, String str2) {
        initialize(str, str2);
    }

    public void setSourceLayer(String str) {
        checkThread();
        nativeSetSourceLayer(str);
    }

    public HillshadeLayer withSourceLayer(String str) {
        setSourceLayer(str);
        return this;
    }

    public String getSourceId() {
        checkThread();
        return nativeGetSourceId();
    }

    public HillshadeLayer withProperties(PropertyValue<?>... propertyValueArr) {
        setProperties(propertyValueArr);
        return this;
    }

    public PropertyValue<Float> getHillshadeIlluminationDirection() {
        checkThread();
        return new PropertyValue<>("hillshade-illumination-direction", nativeGetHillshadeIlluminationDirection());
    }

    public PropertyValue<String> getHillshadeIlluminationAnchor() {
        checkThread();
        return new PropertyValue<>("hillshade-illumination-anchor", nativeGetHillshadeIlluminationAnchor());
    }

    public PropertyValue<Float> getHillshadeExaggeration() {
        checkThread();
        return new PropertyValue<>("hillshade-exaggeration", nativeGetHillshadeExaggeration());
    }

    public TransitionOptions getHillshadeExaggerationTransition() {
        checkThread();
        return nativeGetHillshadeExaggerationTransition();
    }

    public void setHillshadeExaggerationTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetHillshadeExaggerationTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getHillshadeShadowColor() {
        checkThread();
        return new PropertyValue<>("hillshade-shadow-color", nativeGetHillshadeShadowColor());
    }

    public int getHillshadeShadowColorAsInt() {
        checkThread();
        PropertyValue<String> hillshadeShadowColor = getHillshadeShadowColor();
        if (hillshadeShadowColor.isValue()) {
            return ColorUtils.rgbaToColor(hillshadeShadowColor.getValue());
        }
        throw new RuntimeException("hillshade-shadow-color was set as a Function");
    }

    public TransitionOptions getHillshadeShadowColorTransition() {
        checkThread();
        return nativeGetHillshadeShadowColorTransition();
    }

    public void setHillshadeShadowColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetHillshadeShadowColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getHillshadeHighlightColor() {
        checkThread();
        return new PropertyValue<>("hillshade-highlight-color", nativeGetHillshadeHighlightColor());
    }

    public int getHillshadeHighlightColorAsInt() {
        checkThread();
        PropertyValue<String> hillshadeHighlightColor = getHillshadeHighlightColor();
        if (hillshadeHighlightColor.isValue()) {
            return ColorUtils.rgbaToColor(hillshadeHighlightColor.getValue());
        }
        throw new RuntimeException("hillshade-highlight-color was set as a Function");
    }

    public TransitionOptions getHillshadeHighlightColorTransition() {
        checkThread();
        return nativeGetHillshadeHighlightColorTransition();
    }

    public void setHillshadeHighlightColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetHillshadeHighlightColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getHillshadeAccentColor() {
        checkThread();
        return new PropertyValue<>("hillshade-accent-color", nativeGetHillshadeAccentColor());
    }

    public int getHillshadeAccentColorAsInt() {
        checkThread();
        PropertyValue<String> hillshadeAccentColor = getHillshadeAccentColor();
        if (hillshadeAccentColor.isValue()) {
            return ColorUtils.rgbaToColor(hillshadeAccentColor.getValue());
        }
        throw new RuntimeException("hillshade-accent-color was set as a Function");
    }

    public TransitionOptions getHillshadeAccentColorTransition() {
        checkThread();
        return nativeGetHillshadeAccentColorTransition();
    }

    public void setHillshadeAccentColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetHillshadeAccentColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }
}
