package com.google.android.exoplayer2.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;

@TargetApi(17)
public final class DummySurface extends Surface {

    /* renamed from: a  reason: collision with root package name */
    public static int f12916a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f12917b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12918c;

    /* renamed from: d  reason: collision with root package name */
    public final a f12919d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f12920e;

    private static class a extends HandlerThread implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        public EGLSurfaceTexture f12921a;

        /* renamed from: b  reason: collision with root package name */
        public Handler f12922b;

        /* renamed from: c  reason: collision with root package name */
        public Error f12923c;

        /* renamed from: d  reason: collision with root package name */
        public RuntimeException f12924d;

        /* renamed from: e  reason: collision with root package name */
        public DummySurface f12925e;

        public a() {
            super("dummySurface");
        }

        public DummySurface a(int i2) {
            boolean z;
            start();
            this.f12922b = new Handler(getLooper(), this);
            this.f12921a = new EGLSurfaceTexture(this.f12922b);
            synchronized (this) {
                z = false;
                this.f12922b.obtainMessage(1, i2, 0).sendToTarget();
                while (this.f12925e == null && this.f12924d == null && this.f12923c == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.f12924d;
            if (runtimeException == null) {
                Error error = this.f12923c;
                if (error == null) {
                    DummySurface dummySurface = this.f12925e;
                    C0737e.a(dummySurface);
                    return dummySurface;
                }
                throw error;
            }
            throw runtimeException;
        }

        public final void b(int i2) {
            C0737e.a(this.f12921a);
            this.f12921a.a(i2);
            this.f12925e = new DummySurface(this, this.f12921a.c(), i2 != 0);
        }

        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                try {
                    b(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e2) {
                    p.a("DummySurface", "Failed to initialize dummy surface", e2);
                    this.f12924d = e2;
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e3) {
                    try {
                        p.a("DummySurface", "Failed to initialize dummy surface", e3);
                        this.f12923c = e3;
                        synchronized (this) {
                            notify();
                        }
                    } catch (Throwable th) {
                        synchronized (this) {
                            notify();
                            throw th;
                        }
                    }
                }
                return true;
            } else if (i2 != 2) {
                return true;
            } else {
                try {
                    b();
                } catch (Throwable th2) {
                    quit();
                    throw th2;
                }
                quit();
                return true;
            }
        }

        public final void b() {
            C0737e.a(this.f12921a);
            this.f12921a.d();
        }

        public void a() {
            C0737e.a(this.f12922b);
            this.f12922b.sendEmptyMessage(2);
        }
    }

    public static DummySurface a(Context context, boolean z) {
        a();
        int i2 = 0;
        C0737e.b(!z || b(context));
        a aVar = new a();
        if (z) {
            i2 = f12916a;
        }
        return aVar.a(i2);
    }

    public static synchronized boolean b(Context context) {
        boolean z;
        synchronized (DummySurface.class) {
            z = true;
            if (!f12917b) {
                f12916a = I.f9565a < 24 ? 0 : a(context);
                f12917b = true;
            }
            if (f12916a == 0) {
                z = false;
            }
        }
        return z;
    }

    public void release() {
        super.release();
        synchronized (this.f12919d) {
            if (!this.f12920e) {
                this.f12919d.a();
                this.f12920e = true;
            }
        }
    }

    public DummySurface(a aVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f12919d = aVar;
        this.f12918c = z;
    }

    public static void a() {
        if (I.f9565a < 17) {
            throw new UnsupportedOperationException("Unsupported prior to API level 17");
        }
    }

    @TargetApi(24)
    public static int a(Context context) {
        if (I.f9565a < 26 && ("samsung".equals(I.f9567c) || "XT1650".equals(I.f9568d))) {
            return 0;
        }
        if (I.f9565a < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
            return 0;
        }
        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
        if (eglQueryString == null || !eglQueryString.contains("EGL_EXT_protected_content")) {
            return 0;
        }
        return eglQueryString.contains("EGL_KHR_surfaceless_context") ? 1 : 2;
    }
}
