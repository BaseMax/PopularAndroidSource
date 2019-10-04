package me.dm7.barcodescanner.core;

import android.hardware.Camera;
import java.util.List;

public final class b {
    public static Camera getCameraInstance() {
        return getCameraInstance(getDefaultCameraId());
    }

    public static int getDefaultCameraId() {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int i = -1;
        for (int i2 = 0; i2 < numberOfCameras; i2++) {
            Camera.getCameraInfo(i2, cameraInfo);
            if (cameraInfo.facing == 0) {
                return i2;
            }
            i = i2;
        }
        return i;
    }

    public static Camera getCameraInstance(int i) {
        if (i != -1) {
            return Camera.open(i);
        }
        try {
            return Camera.open();
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean isFlashSupported(Camera camera) {
        if (camera != null) {
            Camera.Parameters parameters = camera.getParameters();
            if (parameters.getFlashMode() == null) {
                return false;
            }
            List<String> supportedFlashModes = parameters.getSupportedFlashModes();
            if (supportedFlashModes == null || supportedFlashModes.isEmpty() || (supportedFlashModes.size() == 1 && supportedFlashModes.get(0).equals("off"))) {
                return false;
            }
            return true;
        }
        return false;
    }
}
