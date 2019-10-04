package com.mapbox.mapboxsdk.net;

import com.mapbox.mapboxsdk.LibraryLoader;

class NativeConnectivityListener implements ConnectivityListener {
    private boolean invalidated;
    private long nativePtr;

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize();

    /* access modifiers changed from: protected */
    public native void nativeOnConnectivityStateChanged(boolean z);

    static {
        LibraryLoader.load();
    }

    NativeConnectivityListener(long j) {
        this.nativePtr = j;
    }

    NativeConnectivityListener() {
        initialize();
    }

    public void onNetworkStateChanged(boolean z) {
        nativeOnConnectivityStateChanged(z);
    }
}
