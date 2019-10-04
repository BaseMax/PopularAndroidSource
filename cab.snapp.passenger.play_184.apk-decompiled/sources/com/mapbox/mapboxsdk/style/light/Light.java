package com.mapbox.mapboxsdk.style.light;

import com.mapbox.mapboxsdk.style.layers.TransitionOptions;
import com.mapbox.mapboxsdk.utils.ColorUtils;
import com.mapbox.mapboxsdk.utils.ThreadUtils;

public class Light {
    private static final String TAG = "Mbgl-Light";
    private long nativePtr;

    private native String nativeGetAnchor();

    private native String nativeGetColor();

    private native TransitionOptions nativeGetColorTransition();

    private native float nativeGetIntensity();

    private native TransitionOptions nativeGetIntensityTransition();

    private native Position nativeGetPosition();

    private native TransitionOptions nativeGetPositionTransition();

    private native void nativeSetAnchor(String str);

    private native void nativeSetColor(String str);

    private native void nativeSetColorTransition(long j, long j2);

    private native void nativeSetIntensity(float f);

    private native void nativeSetIntensityTransition(long j, long j2);

    private native void nativeSetPosition(Position position);

    private native void nativeSetPositionTransition(long j, long j2);

    Light(long j) {
        checkThread();
        this.nativePtr = j;
    }

    public void setAnchor(String str) {
        checkThread();
        nativeSetAnchor(str);
    }

    public String getAnchor() {
        checkThread();
        return nativeGetAnchor();
    }

    public void setPosition(Position position) {
        checkThread();
        nativeSetPosition(position);
    }

    public Position getPosition() {
        checkThread();
        return nativeGetPosition();
    }

    public TransitionOptions getPositionTransition() {
        checkThread();
        return nativeGetPositionTransition();
    }

    public void setPositionTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetPositionTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public void setColor(int i) {
        checkThread();
        nativeSetColor(ColorUtils.colorToRgbaString(i));
    }

    public void setColor(String str) {
        checkThread();
        nativeSetColor(str);
    }

    public String getColor() {
        checkThread();
        return nativeGetColor();
    }

    public TransitionOptions getColorTransition() {
        checkThread();
        return nativeGetColorTransition();
    }

    public void setColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public void setIntensity(float f) {
        checkThread();
        nativeSetIntensity(f);
    }

    public float getIntensity() {
        checkThread();
        return nativeGetIntensity();
    }

    public TransitionOptions getIntensityTransition() {
        checkThread();
        return nativeGetIntensityTransition();
    }

    public void setIntensityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetIntensityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    private void checkThread() {
        ThreadUtils.checkThread(TAG);
    }
}
