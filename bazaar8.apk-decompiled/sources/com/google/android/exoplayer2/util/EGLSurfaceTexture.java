package com.google.android.exoplayer2.util;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.n;

@TargetApi(17)
public final class EGLSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f12900a = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: b  reason: collision with root package name */
    public final Handler f12901b;

    /* renamed from: c  reason: collision with root package name */
    public final int[] f12902c;

    /* renamed from: d  reason: collision with root package name */
    public final a f12903d;

    /* renamed from: e  reason: collision with root package name */
    public EGLDisplay f12904e;

    /* renamed from: f  reason: collision with root package name */
    public EGLContext f12905f;

    /* renamed from: g  reason: collision with root package name */
    public EGLSurface f12906g;

    /* renamed from: h  reason: collision with root package name */
    public SurfaceTexture f12907h;

    public static final class GlException extends RuntimeException {
        public GlException(String str) {
            super(str);
        }
    }

    public interface a {
        void a();
    }

    public EGLSurfaceTexture(Handler handler) {
        this(handler, null);
    }

    public static EGLDisplay b() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay != null) {
            int[] iArr = new int[2];
            if (EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                return eglGetDisplay;
            }
            throw new GlException("eglInitialize failed");
        }
        throw new GlException("eglGetDisplay failed");
    }

    public void a(int i2) {
        this.f12904e = b();
        EGLConfig a2 = a(this.f12904e);
        this.f12905f = a(this.f12904e, a2, i2);
        this.f12906g = a(this.f12904e, a2, this.f12905f, i2);
        a(this.f12902c);
        this.f12907h = new SurfaceTexture(this.f12902c[0]);
        this.f12907h.setOnFrameAvailableListener(this);
    }

    public SurfaceTexture c() {
        SurfaceTexture surfaceTexture = this.f12907h;
        C0737e.a(surfaceTexture);
        return surfaceTexture;
    }

    public void d() {
        this.f12901b.removeCallbacks(this);
        try {
            if (this.f12907h != null) {
                this.f12907h.release();
                GLES20.glDeleteTextures(1, this.f12902c, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = this.f12904e;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f12904e;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f12906g;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f12904e, this.f12906g);
            }
            EGLContext eGLContext = this.f12905f;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f12904e, eGLContext);
            }
            if (I.f9565a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.f12904e;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f12904e);
            }
            this.f12904e = null;
            this.f12905f = null;
            this.f12906g = null;
            this.f12907h = null;
        }
    }

    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f12901b.post(this);
    }

    public void run() {
        a();
        SurfaceTexture surfaceTexture = this.f12907h;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }

    public EGLSurfaceTexture(Handler handler, a aVar) {
        this.f12901b = handler;
        this.f12903d = aVar;
        this.f12902c = new int[1];
    }

    public final void a() {
        a aVar = this.f12903d;
        if (aVar != null) {
            aVar.a();
        }
    }

    public static EGLConfig a(EGLDisplay eGLDisplay) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, f12900a, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (eglChooseConfig && iArr[0] > 0 && eGLConfigArr[0] != null) {
            return eGLConfigArr[0];
        }
        throw new GlException(I.a("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
    }

    public static EGLContext a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i2) {
        int[] iArr;
        if (i2 == 0) {
            iArr = new int[]{12440, 2, 12344};
        } else {
            iArr = new int[]{12440, 2, 12992, 1, 12344};
        }
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
        if (eglCreateContext != null) {
            return eglCreateContext;
        }
        throw new GlException("eglCreateContext failed");
    }

    public static EGLSurface a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int i2) {
        EGLSurface eGLSurface;
        int[] iArr;
        if (i2 == 1) {
            eGLSurface = EGL14.EGL_NO_SURFACE;
        } else {
            if (i2 == 2) {
                iArr = new int[]{12375, 1, 12374, 1, 12992, 1, 12344};
            } else {
                iArr = new int[]{12375, 1, 12374, 1, 12344};
            }
            eGLSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, iArr, 0);
            if (eGLSurface == null) {
                throw new GlException("eglCreatePbufferSurface failed");
            }
        }
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext)) {
            return eGLSurface;
        }
        throw new GlException("eglMakeCurrent failed");
    }

    public static void a(int[] iArr) {
        GLES20.glGenTextures(1, iArr, 0);
        n.a();
    }
}
