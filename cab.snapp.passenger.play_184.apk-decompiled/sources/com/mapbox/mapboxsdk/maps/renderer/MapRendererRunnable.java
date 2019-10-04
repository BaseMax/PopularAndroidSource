package com.mapbox.mapboxsdk.maps.renderer;

class MapRendererRunnable implements Runnable {
    private final long nativePtr;

    private native void nativeInitialize();

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    public native void run();

    MapRendererRunnable(long j) {
        this.nativePtr = j;
    }
}
