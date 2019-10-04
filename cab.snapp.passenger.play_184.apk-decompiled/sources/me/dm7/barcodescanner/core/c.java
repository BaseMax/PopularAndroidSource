package me.dm7.barcodescanner.core;

import android.hardware.Camera;

public final class c {
    public final Camera mCamera;
    public final int mCameraId;

    private c(Camera camera, int i) {
        if (camera != null) {
            this.mCamera = camera;
            this.mCameraId = i;
            return;
        }
        throw new NullPointerException("Camera cannot be null");
    }

    public static c getWrapper(Camera camera, int i) {
        if (camera == null) {
            return null;
        }
        return new c(camera, i);
    }
}
