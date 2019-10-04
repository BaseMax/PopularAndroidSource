package com.mapbox.mapboxsdk.maps.renderer;

import android.content.Context;
import com.mapbox.mapboxsdk.LibraryLoader;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.storage.FileSource;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public abstract class MapRenderer implements MapRendererScheduler {
    private static final String TAG = "Mbgl-MapRenderer";
    private double expectedRenderTime = 0.0d;
    private long nativePtr = 0;
    private MapboxMap.OnFpsChangedListener onFpsChangedListener;
    private long timeElapsed;

    private native void nativeInitialize(MapRenderer mapRenderer, float f, String str, String str2);

    private native void nativeOnSurfaceChanged(int i, int i2);

    private native void nativeOnSurfaceCreated();

    private native void nativeOnSurfaceDestroyed();

    private native void nativeRender();

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    public native void nativeReset();

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStart() {
    }

    public void onStop() {
    }

    static {
        LibraryLoader.load();
    }

    public MapRenderer(Context context, String str) {
        nativeInitialize(this, context.getResources().getDisplayMetrics().density, FileSource.getInternalCachePath(context), str);
    }

    public void setOnFpsChangedListener(MapboxMap.OnFpsChangedListener onFpsChangedListener2) {
        this.onFpsChangedListener = onFpsChangedListener2;
    }

    /* access modifiers changed from: protected */
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        nativeOnSurfaceCreated();
    }

    /* access modifiers changed from: protected */
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        gl10.glViewport(0, 0, i, i2);
        nativeOnSurfaceChanged(i, i2);
    }

    /* access modifiers changed from: protected */
    public void onSurfaceDestroyed() {
        nativeOnSurfaceDestroyed();
    }

    /* access modifiers changed from: protected */
    public void onDrawFrame(GL10 gl10) {
        long nanoTime = System.nanoTime();
        try {
            nativeRender();
        } catch (Error e) {
            Logger.e(TAG, e.getMessage());
        }
        double nanoTime2 = (double) (System.nanoTime() - nanoTime);
        double d = this.expectedRenderTime;
        if (nanoTime2 < d) {
            Double.isNaN(nanoTime2);
            try {
                Thread.sleep((long) ((d - nanoTime2) / 1000000.0d));
            } catch (InterruptedException e2) {
                Logger.e(TAG, e2.getMessage());
            }
        }
        if (this.onFpsChangedListener != null) {
            updateFps();
        }
    }

    /* access modifiers changed from: package-private */
    public void queueEvent(MapRendererRunnable mapRendererRunnable) {
        queueEvent(mapRendererRunnable);
    }

    private void updateFps() {
        long nanoTime = System.nanoTime();
        double d = (double) (nanoTime - this.timeElapsed);
        Double.isNaN(d);
        this.onFpsChangedListener.onFpsChanged(1.0E9d / d);
        this.timeElapsed = nanoTime;
    }

    public void setMaximumFps(int i) {
        if (i > 0) {
            double d = (double) i;
            Double.isNaN(d);
            this.expectedRenderTime = 1.0E9d / d;
        }
    }
}
