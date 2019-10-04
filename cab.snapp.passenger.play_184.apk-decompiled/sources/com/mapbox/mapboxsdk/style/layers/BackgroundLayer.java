package com.mapbox.mapboxsdk.style.layers;

import com.mapbox.mapboxsdk.utils.ColorUtils;

public class BackgroundLayer extends Layer {
    private native Object nativeGetBackgroundColor();

    private native TransitionOptions nativeGetBackgroundColorTransition();

    private native Object nativeGetBackgroundOpacity();

    private native TransitionOptions nativeGetBackgroundOpacityTransition();

    private native Object nativeGetBackgroundPattern();

    private native TransitionOptions nativeGetBackgroundPatternTransition();

    private native void nativeSetBackgroundColorTransition(long j, long j2);

    private native void nativeSetBackgroundOpacityTransition(long j, long j2);

    private native void nativeSetBackgroundPatternTransition(long j, long j2);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str);

    BackgroundLayer(long j) {
        super(j);
    }

    public BackgroundLayer(String str) {
        initialize(str);
    }

    public BackgroundLayer withProperties(PropertyValue<?>... propertyValueArr) {
        setProperties(propertyValueArr);
        return this;
    }

    public PropertyValue<String> getBackgroundColor() {
        checkThread();
        return new PropertyValue<>("background-color", nativeGetBackgroundColor());
    }

    public int getBackgroundColorAsInt() {
        checkThread();
        PropertyValue<String> backgroundColor = getBackgroundColor();
        if (backgroundColor.isValue()) {
            return ColorUtils.rgbaToColor(backgroundColor.getValue());
        }
        throw new RuntimeException("background-color was set as a Function");
    }

    public TransitionOptions getBackgroundColorTransition() {
        checkThread();
        return nativeGetBackgroundColorTransition();
    }

    public void setBackgroundColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetBackgroundColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getBackgroundPattern() {
        checkThread();
        return new PropertyValue<>("background-pattern", nativeGetBackgroundPattern());
    }

    public TransitionOptions getBackgroundPatternTransition() {
        checkThread();
        return nativeGetBackgroundPatternTransition();
    }

    public void setBackgroundPatternTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetBackgroundPatternTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getBackgroundOpacity() {
        checkThread();
        return new PropertyValue<>("background-opacity", nativeGetBackgroundOpacity());
    }

    public TransitionOptions getBackgroundOpacityTransition() {
        checkThread();
        return nativeGetBackgroundOpacityTransition();
    }

    public void setBackgroundOpacityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetBackgroundOpacityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }
}
