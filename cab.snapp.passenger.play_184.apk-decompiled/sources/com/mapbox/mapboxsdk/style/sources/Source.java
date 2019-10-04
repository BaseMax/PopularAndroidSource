package com.mapbox.mapboxsdk.style.sources;

import com.mapbox.mapboxsdk.LibraryLoader;
import com.mapbox.mapboxsdk.utils.ThreadUtils;

public abstract class Source {
    private static final String TAG = "Mbgl-Source";
    protected boolean detached;
    private long nativePtr;

    /* access modifiers changed from: protected */
    public native String nativeGetAttribution();

    /* access modifiers changed from: protected */
    public native String nativeGetId();

    static {
        LibraryLoader.load();
    }

    protected Source(long j) {
        checkThread();
        this.nativePtr = j;
    }

    public Source() {
        checkThread();
    }

    /* access modifiers changed from: protected */
    public void checkThread() {
        ThreadUtils.checkThread(TAG);
    }

    public String getId() {
        checkThread();
        return nativeGetId();
    }

    public String getAttribution() {
        checkThread();
        return nativeGetAttribution();
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    public void setDetached() {
        this.detached = true;
    }
}
