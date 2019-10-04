package me.dm7.barcodescanner.core;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.hardware.Camera;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import me.dm7.barcodescanner.core.f;

public abstract class BarcodeScannerView extends FrameLayout implements Camera.PreviewCallback {

    /* renamed from: a  reason: collision with root package name */
    protected CameraPreview f8701a;

    /* renamed from: b  reason: collision with root package name */
    private c f8702b;
    private e c;
    private Rect d;
    private a e;
    private Boolean f;
    private boolean g = true;
    private boolean h = true;
    private boolean i = true;
    private int j = getResources().getColor(f.a.viewfinder_laser);
    private int k = getResources().getColor(f.a.viewfinder_border);
    private int l = getResources().getColor(f.a.viewfinder_mask);
    private int m = getResources().getInteger(f.b.viewfinder_border_width);
    private int n = getResources().getInteger(f.b.viewfinder_border_length);
    private boolean o = false;
    private int p = 0;
    private boolean q = false;
    private float r = 1.0f;
    private int s = 0;
    private float t = 0.1f;

    public BarcodeScannerView(Context context) {
        super(context);
        a();
    }

    /* JADX INFO: finally extract failed */
    public BarcodeScannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, f.c.BarcodeScannerView, 0, 0);
        try {
            setShouldScaleToFill(obtainStyledAttributes.getBoolean(f.c.BarcodeScannerView_shouldScaleToFill, true));
            this.i = obtainStyledAttributes.getBoolean(f.c.BarcodeScannerView_laserEnabled, this.i);
            this.j = obtainStyledAttributes.getColor(f.c.BarcodeScannerView_laserColor, this.j);
            this.k = obtainStyledAttributes.getColor(f.c.BarcodeScannerView_borderColor, this.k);
            this.l = obtainStyledAttributes.getColor(f.c.BarcodeScannerView_maskColor, this.l);
            this.m = obtainStyledAttributes.getDimensionPixelSize(f.c.BarcodeScannerView_borderWidth, this.m);
            this.n = obtainStyledAttributes.getDimensionPixelSize(f.c.BarcodeScannerView_borderLength, this.n);
            this.o = obtainStyledAttributes.getBoolean(f.c.BarcodeScannerView_roundedCorner, this.o);
            this.p = obtainStyledAttributes.getDimensionPixelSize(f.c.BarcodeScannerView_cornerRadius, this.p);
            this.q = obtainStyledAttributes.getBoolean(f.c.BarcodeScannerView_squaredFinder, this.q);
            this.r = obtainStyledAttributes.getFloat(f.c.BarcodeScannerView_borderAlpha, this.r);
            this.s = obtainStyledAttributes.getDimensionPixelSize(f.c.BarcodeScannerView_finderOffset, this.s);
            obtainStyledAttributes.recycle();
            a();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void a() {
        this.c = a(getContext());
    }

    public final void setupLayout(c cVar) {
        removeAllViews();
        this.f8701a = new CameraPreview(getContext(), cVar, this);
        this.f8701a.setAspectTolerance(this.t);
        this.f8701a.setShouldScaleToFill(this.h);
        if (!this.h) {
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            relativeLayout.setGravity(17);
            relativeLayout.setBackgroundColor(-16777216);
            relativeLayout.addView(this.f8701a);
            addView(relativeLayout);
        } else {
            addView(this.f8701a);
        }
        e eVar = this.c;
        if (eVar instanceof View) {
            addView((View) eVar);
            return;
        }
        throw new IllegalArgumentException("IViewFinder object returned by 'createViewFinderView()' should be instance of android.view.View");
    }

    private e a(Context context) {
        ViewFinderView viewFinderView = new ViewFinderView(context);
        viewFinderView.setBorderColor(this.k);
        viewFinderView.setLaserColor(this.j);
        viewFinderView.setLaserEnabled(this.i);
        viewFinderView.setBorderStrokeWidth(this.m);
        viewFinderView.setBorderLineLength(this.n);
        viewFinderView.setMaskColor(this.l);
        viewFinderView.setBorderCornerRounded(this.o);
        viewFinderView.setBorderCornerRadius(this.p);
        viewFinderView.setSquareViewFinder(this.q);
        viewFinderView.setViewFinderOffset(this.s);
        return viewFinderView;
    }

    public void setLaserColor(int i2) {
        this.j = i2;
        this.c.setLaserColor(this.j);
        this.c.setupViewFinder();
    }

    public void setMaskColor(int i2) {
        this.l = i2;
        this.c.setMaskColor(this.l);
        this.c.setupViewFinder();
    }

    public void setBorderColor(int i2) {
        this.k = i2;
        this.c.setBorderColor(this.k);
        this.c.setupViewFinder();
    }

    public void setBorderStrokeWidth(int i2) {
        this.m = i2;
        this.c.setBorderStrokeWidth(this.m);
        this.c.setupViewFinder();
    }

    public void setBorderLineLength(int i2) {
        this.n = i2;
        this.c.setBorderLineLength(this.n);
        this.c.setupViewFinder();
    }

    public void setLaserEnabled(boolean z) {
        this.i = z;
        this.c.setLaserEnabled(this.i);
        this.c.setupViewFinder();
    }

    public void setIsBorderCornerRounded(boolean z) {
        this.o = z;
        this.c.setBorderCornerRounded(this.o);
        this.c.setupViewFinder();
    }

    public void setBorderCornerRadius(int i2) {
        this.p = i2;
        this.c.setBorderCornerRadius(this.p);
        this.c.setupViewFinder();
    }

    public void setSquareViewFinder(boolean z) {
        this.q = z;
        this.c.setSquareViewFinder(this.q);
        this.c.setupViewFinder();
    }

    public void setBorderAlpha(float f2) {
        this.r = f2;
        this.c.setBorderAlpha(this.r);
        this.c.setupViewFinder();
    }

    public void startCamera(int i2) {
        if (this.e == null) {
            this.e = new a(this);
        }
        this.e.startCamera(i2);
    }

    public void setupCameraPreview(c cVar) {
        this.f8702b = cVar;
        c cVar2 = this.f8702b;
        if (cVar2 != null) {
            setupLayout(cVar2);
            this.c.setupViewFinder();
            Boolean bool = this.f;
            if (bool != null) {
                setFlash(bool.booleanValue());
            }
            setAutoFocus(this.g);
        }
    }

    public void startCamera() {
        startCamera(b.getDefaultCameraId());
    }

    public void stopCamera() {
        if (this.f8702b != null) {
            this.f8701a.stopCameraPreview();
            this.f8701a.setCamera(null, null);
            this.f8702b.mCamera.release();
            this.f8702b = null;
        }
        a aVar = this.e;
        if (aVar != null) {
            aVar.quit();
            this.e = null;
        }
    }

    public void stopCameraPreview() {
        CameraPreview cameraPreview = this.f8701a;
        if (cameraPreview != null) {
            cameraPreview.stopCameraPreview();
        }
    }

    public synchronized Rect getFramingRectInPreview(int i2, int i3) {
        if (this.d == null) {
            Rect framingRect = this.c.getFramingRect();
            int width = this.c.getWidth();
            int height = this.c.getHeight();
            if (!(framingRect == null || width == 0)) {
                if (height != 0) {
                    Rect rect = new Rect(framingRect);
                    if (i2 < width) {
                        rect.left = (rect.left * i2) / width;
                        rect.right = (rect.right * i2) / width;
                    }
                    if (i3 < height) {
                        rect.top = (rect.top * i3) / height;
                        rect.bottom = (rect.bottom * i3) / height;
                    }
                    this.d = rect;
                }
            }
            return null;
        }
        return this.d;
    }

    public void setFlash(boolean z) {
        this.f = Boolean.valueOf(z);
        c cVar = this.f8702b;
        if (cVar != null && b.isFlashSupported(cVar.mCamera)) {
            Camera.Parameters parameters = this.f8702b.mCamera.getParameters();
            if (z) {
                if (!parameters.getFlashMode().equals("torch")) {
                    parameters.setFlashMode("torch");
                } else {
                    return;
                }
            } else if (!parameters.getFlashMode().equals("off")) {
                parameters.setFlashMode("off");
            } else {
                return;
            }
            this.f8702b.mCamera.setParameters(parameters);
        }
    }

    public boolean getFlash() {
        c cVar = this.f8702b;
        if (cVar == null || !b.isFlashSupported(cVar.mCamera) || !this.f8702b.mCamera.getParameters().getFlashMode().equals("torch")) {
            return false;
        }
        return true;
    }

    public void toggleFlash() {
        c cVar = this.f8702b;
        if (cVar != null && b.isFlashSupported(cVar.mCamera)) {
            Camera.Parameters parameters = this.f8702b.mCamera.getParameters();
            if (parameters.getFlashMode().equals("torch")) {
                parameters.setFlashMode("off");
            } else {
                parameters.setFlashMode("torch");
            }
            this.f8702b.mCamera.setParameters(parameters);
        }
    }

    public void setAutoFocus(boolean z) {
        this.g = z;
        CameraPreview cameraPreview = this.f8701a;
        if (cameraPreview != null) {
            cameraPreview.setAutoFocus(z);
        }
    }

    public void setShouldScaleToFill(boolean z) {
        this.h = z;
    }

    public void setAspectTolerance(float f2) {
        this.t = f2;
    }

    public byte[] getRotatedData(byte[] bArr, Camera camera) {
        Camera.Size previewSize = camera.getParameters().getPreviewSize();
        int i2 = previewSize.width;
        int i3 = previewSize.height;
        int rotationCount = getRotationCount();
        if (rotationCount != 1 && rotationCount != 3) {
            return bArr;
        }
        int i4 = i2;
        int i5 = i3;
        byte[] bArr2 = bArr;
        int i6 = 0;
        while (i6 < rotationCount) {
            byte[] bArr3 = new byte[bArr2.length];
            for (int i7 = 0; i7 < i5; i7++) {
                for (int i8 = 0; i8 < i4; i8++) {
                    bArr3[(((i8 * i5) + i5) - i7) - 1] = bArr2[(i7 * i4) + i8];
                }
            }
            i6++;
            bArr2 = bArr3;
            int i9 = i4;
            i4 = i5;
            i5 = i9;
        }
        return bArr2;
    }

    public int getRotationCount() {
        return this.f8701a.getDisplayOrientation() / 90;
    }
}
