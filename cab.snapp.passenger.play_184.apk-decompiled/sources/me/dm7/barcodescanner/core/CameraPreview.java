package me.dm7.barcodescanner.core;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import java.util.List;

public class CameraPreview extends SurfaceView implements SurfaceHolder.Callback {

    /* renamed from: a  reason: collision with root package name */
    Camera.AutoFocusCallback f8703a = new Camera.AutoFocusCallback() {
        public final void onAutoFocus(boolean z, Camera camera) {
            CameraPreview.this.a();
        }
    };
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public c f8704b;
    private Handler c;
    /* access modifiers changed from: private */
    public boolean d = true;
    /* access modifiers changed from: private */
    public boolean e = true;
    /* access modifiers changed from: private */
    public boolean f = false;
    private boolean g = true;
    private Camera.PreviewCallback h;
    private float i = 0.1f;
    private Runnable j = new Runnable() {
        public final void run() {
            if (CameraPreview.this.f8704b != null && CameraPreview.this.d && CameraPreview.this.e && CameraPreview.this.f) {
                CameraPreview.this.safeAutoFocus();
            }
        }
    };

    public CameraPreview(Context context, c cVar, Camera.PreviewCallback previewCallback) {
        super(context);
        init(cVar, previewCallback);
    }

    public CameraPreview(Context context, AttributeSet attributeSet, c cVar, Camera.PreviewCallback previewCallback) {
        super(context, attributeSet);
        init(cVar, previewCallback);
    }

    public void init(c cVar, Camera.PreviewCallback previewCallback) {
        setCamera(cVar, previewCallback);
        this.c = new Handler();
        getHolder().addCallback(this);
        getHolder().setType(3);
    }

    public void setCamera(c cVar, Camera.PreviewCallback previewCallback) {
        this.f8704b = cVar;
        this.h = previewCallback;
    }

    public void setShouldScaleToFill(boolean z) {
        this.g = z;
    }

    public void setAspectTolerance(float f2) {
        this.i = f2;
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.f = true;
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        if (surfaceHolder.getSurface() != null) {
            stopCameraPreview();
            showCameraPreview();
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f = false;
        stopCameraPreview();
    }

    public void showCameraPreview() {
        if (this.f8704b != null) {
            try {
                getHolder().addCallback(this);
                this.d = true;
                setupCameraParameters();
                this.f8704b.mCamera.setPreviewDisplay(getHolder());
                this.f8704b.mCamera.setDisplayOrientation(getDisplayOrientation());
                this.f8704b.mCamera.setOneShotPreviewCallback(this.h);
                this.f8704b.mCamera.startPreview();
                if (this.e) {
                    if (this.f) {
                        safeAutoFocus();
                        return;
                    }
                    a();
                }
            } catch (Exception unused) {
            }
        }
    }

    public void safeAutoFocus() {
        try {
            this.f8704b.mCamera.autoFocus(this.f8703a);
        } catch (RuntimeException unused) {
            a();
        }
    }

    public void stopCameraPreview() {
        if (this.f8704b != null) {
            try {
                this.d = false;
                getHolder().removeCallback(this);
                this.f8704b.mCamera.cancelAutoFocus();
                this.f8704b.mCamera.setOneShotPreviewCallback(null);
                this.f8704b.mCamera.stopPreview();
            } catch (Exception unused) {
            }
        }
    }

    public void setupCameraParameters() {
        Camera.Size optimalPreviewSize = getOptimalPreviewSize();
        Camera.Parameters parameters = this.f8704b.mCamera.getParameters();
        parameters.setPreviewSize(optimalPreviewSize.width, optimalPreviewSize.height);
        this.f8704b.mCamera.setParameters(parameters);
        Point point = new Point(getWidth(), getHeight());
        if (getDisplayOrientation() % 180 != 0) {
            point = new Point(point.y, point.x);
        }
        float f2 = ((float) optimalPreviewSize.width) / ((float) optimalPreviewSize.height);
        if (((float) point.x) / ((float) point.y) > f2) {
            a((int) (((float) point.y) * f2), point.y);
        } else {
            a(point.x, (int) (((float) point.x) / f2));
        }
    }

    private void a(int i2, int i3) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (getDisplayOrientation() % 180 != 0) {
            int i4 = i3;
            i3 = i2;
            i2 = i4;
        }
        if (this.g) {
            float f2 = (float) i2;
            float width = ((float) ((View) getParent()).getWidth()) / f2;
            float f3 = (float) i3;
            float height = ((float) ((View) getParent()).getHeight()) / f3;
            if (width <= height) {
                width = height;
            }
            i2 = Math.round(f2 * width);
            i3 = Math.round(f3 * width);
        }
        layoutParams.width = i2;
        layoutParams.height = i3;
        setLayoutParams(layoutParams);
    }

    public int getDisplayOrientation() {
        int i2;
        int i3 = 0;
        if (this.f8704b == null) {
            return 0;
        }
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        if (this.f8704b.mCameraId == -1) {
            Camera.getCameraInfo(0, cameraInfo);
        } else {
            Camera.getCameraInfo(this.f8704b.mCameraId, cameraInfo);
        }
        int rotation = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation != 0) {
            if (rotation == 1) {
                i3 = 90;
            } else if (rotation == 2) {
                i3 = 180;
            } else if (rotation == 3) {
                i3 = 270;
            }
        }
        if (cameraInfo.facing == 1) {
            i2 = (360 - ((cameraInfo.orientation + i3) % 360)) % 360;
        } else {
            i2 = ((cameraInfo.orientation - i3) + 360) % 360;
        }
        return i2;
    }

    private Camera.Size getOptimalPreviewSize() {
        c cVar = this.f8704b;
        Camera.Size size = null;
        if (cVar == null) {
            return null;
        }
        List<Camera.Size> supportedPreviewSizes = cVar.mCamera.getParameters().getSupportedPreviewSizes();
        int width = getWidth();
        int height = getHeight();
        if (d.getScreenOrientation(getContext()) == 1) {
            int i2 = height;
            height = width;
            width = i2;
        }
        double d2 = (double) width;
        double d3 = (double) height;
        Double.isNaN(d2);
        Double.isNaN(d3);
        double d4 = d2 / d3;
        if (supportedPreviewSizes == null) {
            return null;
        }
        double d5 = Double.MAX_VALUE;
        double d6 = Double.MAX_VALUE;
        for (Camera.Size next : supportedPreviewSizes) {
            double d7 = (double) next.width;
            double d8 = (double) next.height;
            Double.isNaN(d7);
            Double.isNaN(d8);
            if (Math.abs((d7 / d8) - d4) <= ((double) this.i) && ((double) Math.abs(next.height - height)) < d6) {
                d6 = (double) Math.abs(next.height - height);
                size = next;
            }
        }
        if (size == null) {
            for (Camera.Size next2 : supportedPreviewSizes) {
                if (((double) Math.abs(next2.height - height)) < d5) {
                    size = next2;
                    d5 = (double) Math.abs(next2.height - height);
                }
            }
        }
        return size;
    }

    public void setAutoFocus(boolean z) {
        c cVar = this.f8704b;
        if (cVar != null && this.d && z != this.e) {
            this.e = z;
            if (!this.e) {
                cVar.mCamera.cancelAutoFocus();
            } else if (this.f) {
                safeAutoFocus();
            } else {
                a();
            }
        }
    }

    /* access modifiers changed from: private */
    public void a() {
        this.c.postDelayed(this.j, 1000);
    }
}
