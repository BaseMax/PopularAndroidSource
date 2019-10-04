package me.dm7.barcodescanner.core;

import android.hardware.Camera;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public final class a extends HandlerThread {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public BarcodeScannerView f8709a;

    public a(BarcodeScannerView barcodeScannerView) {
        super("CameraHandlerThread");
        this.f8709a = barcodeScannerView;
        start();
    }

    public final void startCamera(final int i) {
        new Handler(getLooper()).post(new Runnable() {
            public final void run() {
                final Camera cameraInstance = b.getCameraInstance(i);
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    public final void run() {
                        a.this.f8709a.setupCameraPreview(c.getWrapper(cameraInstance, i));
                    }
                });
            }
        });
    }
}
