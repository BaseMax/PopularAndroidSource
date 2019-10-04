package com.mapbox.mapboxsdk.style.layers;

public class CustomLayer extends Layer {
    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, long j);

    /* access modifiers changed from: protected */
    public native void nativeUpdate();

    public CustomLayer(String str, long j) {
        initialize(str, j);
    }

    CustomLayer(long j) {
        super(j);
    }

    public void update() {
        nativeUpdate();
    }
}
