package com.mapbox.mapboxsdk.style.layers;

public class RasterLayer extends Layer {
    private native Object nativeGetRasterBrightnessMax();

    private native TransitionOptions nativeGetRasterBrightnessMaxTransition();

    private native Object nativeGetRasterBrightnessMin();

    private native TransitionOptions nativeGetRasterBrightnessMinTransition();

    private native Object nativeGetRasterContrast();

    private native TransitionOptions nativeGetRasterContrastTransition();

    private native Object nativeGetRasterFadeDuration();

    private native Object nativeGetRasterHueRotate();

    private native TransitionOptions nativeGetRasterHueRotateTransition();

    private native Object nativeGetRasterOpacity();

    private native TransitionOptions nativeGetRasterOpacityTransition();

    private native Object nativeGetRasterResampling();

    private native Object nativeGetRasterSaturation();

    private native TransitionOptions nativeGetRasterSaturationTransition();

    private native void nativeSetRasterBrightnessMaxTransition(long j, long j2);

    private native void nativeSetRasterBrightnessMinTransition(long j, long j2);

    private native void nativeSetRasterContrastTransition(long j, long j2);

    private native void nativeSetRasterHueRotateTransition(long j, long j2);

    private native void nativeSetRasterOpacityTransition(long j, long j2);

    private native void nativeSetRasterSaturationTransition(long j, long j2);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, String str2);

    RasterLayer(long j) {
        super(j);
    }

    public RasterLayer(String str, String str2) {
        initialize(str, str2);
    }

    public void setSourceLayer(String str) {
        checkThread();
        nativeSetSourceLayer(str);
    }

    public RasterLayer withSourceLayer(String str) {
        setSourceLayer(str);
        return this;
    }

    public String getSourceId() {
        checkThread();
        return nativeGetSourceId();
    }

    public RasterLayer withProperties(PropertyValue<?>... propertyValueArr) {
        setProperties(propertyValueArr);
        return this;
    }

    public PropertyValue<Float> getRasterOpacity() {
        checkThread();
        return new PropertyValue<>("raster-opacity", nativeGetRasterOpacity());
    }

    public TransitionOptions getRasterOpacityTransition() {
        checkThread();
        return nativeGetRasterOpacityTransition();
    }

    public void setRasterOpacityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetRasterOpacityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getRasterHueRotate() {
        checkThread();
        return new PropertyValue<>("raster-hue-rotate", nativeGetRasterHueRotate());
    }

    public TransitionOptions getRasterHueRotateTransition() {
        checkThread();
        return nativeGetRasterHueRotateTransition();
    }

    public void setRasterHueRotateTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetRasterHueRotateTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getRasterBrightnessMin() {
        checkThread();
        return new PropertyValue<>("raster-brightness-min", nativeGetRasterBrightnessMin());
    }

    public TransitionOptions getRasterBrightnessMinTransition() {
        checkThread();
        return nativeGetRasterBrightnessMinTransition();
    }

    public void setRasterBrightnessMinTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetRasterBrightnessMinTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getRasterBrightnessMax() {
        checkThread();
        return new PropertyValue<>("raster-brightness-max", nativeGetRasterBrightnessMax());
    }

    public TransitionOptions getRasterBrightnessMaxTransition() {
        checkThread();
        return nativeGetRasterBrightnessMaxTransition();
    }

    public void setRasterBrightnessMaxTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetRasterBrightnessMaxTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getRasterSaturation() {
        checkThread();
        return new PropertyValue<>("raster-saturation", nativeGetRasterSaturation());
    }

    public TransitionOptions getRasterSaturationTransition() {
        checkThread();
        return nativeGetRasterSaturationTransition();
    }

    public void setRasterSaturationTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetRasterSaturationTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getRasterContrast() {
        checkThread();
        return new PropertyValue<>("raster-contrast", nativeGetRasterContrast());
    }

    public TransitionOptions getRasterContrastTransition() {
        checkThread();
        return nativeGetRasterContrastTransition();
    }

    public void setRasterContrastTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetRasterContrastTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getRasterResampling() {
        checkThread();
        return new PropertyValue<>("raster-resampling", nativeGetRasterResampling());
    }

    public PropertyValue<Float> getRasterFadeDuration() {
        checkThread();
        return new PropertyValue<>("raster-fade-duration", nativeGetRasterFadeDuration());
    }
}
