package com.mapbox.mapboxsdk.snapshotter;

import android.graphics.Bitmap;
import android.graphics.PointF;
import com.mapbox.mapboxsdk.geometry.LatLng;

public class MapSnapshot {
    private String[] attributions;
    private Bitmap bitmap;
    private long nativePtr = 0;
    private boolean showLogo;

    private native void initialize();

    /* access modifiers changed from: protected */
    public native void finalize();

    public native LatLng latLngForPixel(PointF pointF);

    public native PointF pixelForLatLng(LatLng latLng);

    private MapSnapshot(long j, Bitmap bitmap2, String[] strArr, boolean z) {
        this.nativePtr = j;
        this.bitmap = bitmap2;
        this.attributions = strArr;
        this.showLogo = z;
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    /* access modifiers changed from: protected */
    public String[] getAttributions() {
        return this.attributions;
    }

    /* access modifiers changed from: package-private */
    public boolean isShowLogo() {
        return this.showLogo;
    }
}
