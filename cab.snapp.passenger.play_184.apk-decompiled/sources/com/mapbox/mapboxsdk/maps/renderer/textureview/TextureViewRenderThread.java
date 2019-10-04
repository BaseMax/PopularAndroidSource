package com.mapbox.mapboxsdk.maps.renderer.textureview;

import android.graphics.SurfaceTexture;
import android.view.TextureView;
import com.koushikdutta.ion.loader.MtpConstants;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.renderer.egl.EGLConfigChooser;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL10;

class TextureViewRenderThread extends Thread implements TextureView.SurfaceTextureListener {
    private static final String TAG = "Mbgl-TextureViewRenderThread";
    private boolean destroyContext;
    private boolean destroySurface;
    private final EGLHolder eglHolder;
    private final ArrayList<Runnable> eventQueue = new ArrayList<>();
    private boolean exited;
    private int height;
    private final Object lock = new Object();
    private final TextureViewMapRenderer mapRenderer;
    private boolean paused;
    private boolean requestRender;
    private boolean shouldExit;
    private boolean sizeChanged;
    private SurfaceTexture surface;
    private int width;

    static class EGLHolder {
        private static final int EGL_CONTEXT_CLIENT_VERSION = 12440;
        private EGL10 egl;
        /* access modifiers changed from: private */
        public EGLConfig eglConfig;
        /* access modifiers changed from: private */
        public EGLContext eglContext = EGL10.EGL_NO_CONTEXT;
        private EGLDisplay eglDisplay = EGL10.EGL_NO_DISPLAY;
        /* access modifiers changed from: private */
        public EGLSurface eglSurface = EGL10.EGL_NO_SURFACE;
        private final WeakReference<TextureView> textureViewWeakRef;
        private boolean translucentSurface;

        EGLHolder(WeakReference<TextureView> weakReference, boolean z) {
            this.textureViewWeakRef = weakReference;
            this.translucentSurface = z;
        }

        /* access modifiers changed from: package-private */
        public void prepare() {
            this.egl = (EGL10) EGLContext.getEGL();
            if (this.eglDisplay == EGL10.EGL_NO_DISPLAY) {
                this.eglDisplay = this.egl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
                if (this.eglDisplay != EGL10.EGL_NO_DISPLAY) {
                    if (!this.egl.eglInitialize(this.eglDisplay, new int[2])) {
                        throw new RuntimeException("eglInitialize failed");
                    }
                } else {
                    throw new RuntimeException("eglGetDisplay failed");
                }
            }
            if (this.textureViewWeakRef == null) {
                this.eglConfig = null;
                this.eglContext = EGL10.EGL_NO_CONTEXT;
            } else if (this.eglContext == EGL10.EGL_NO_CONTEXT) {
                this.eglConfig = new EGLConfigChooser(this.translucentSurface).chooseConfig(this.egl, this.eglDisplay);
                this.eglContext = this.egl.eglCreateContext(this.eglDisplay, this.eglConfig, EGL10.EGL_NO_CONTEXT, new int[]{EGL_CONTEXT_CLIENT_VERSION, 2, 12344});
            }
            if (this.eglContext == EGL10.EGL_NO_CONTEXT) {
                throw new RuntimeException("createContext");
            }
        }

        /* access modifiers changed from: package-private */
        public GL10 createGL() {
            return (GL10) this.eglContext.getGL();
        }

        /* access modifiers changed from: package-private */
        public boolean createSurface() {
            destroySurface();
            TextureView textureView = (TextureView) this.textureViewWeakRef.get();
            if (textureView != null) {
                this.eglSurface = this.egl.eglCreateWindowSurface(this.eglDisplay, this.eglConfig, textureView.getSurfaceTexture(), new int[]{12344});
            } else {
                this.eglSurface = EGL10.EGL_NO_SURFACE;
            }
            EGLSurface eGLSurface = this.eglSurface;
            if (eGLSurface != null && eGLSurface != EGL10.EGL_NO_SURFACE) {
                return makeCurrent();
            }
            if (this.egl.eglGetError() == 12299) {
                Logger.e(TextureViewRenderThread.TAG, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public boolean makeCurrent() {
            EGL10 egl10 = this.egl;
            EGLDisplay eGLDisplay = this.eglDisplay;
            EGLSurface eGLSurface = this.eglSurface;
            if (egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext)) {
                return true;
            }
            Logger.w(TextureViewRenderThread.TAG, String.format("eglMakeCurrent: %s", new Object[]{Integer.valueOf(this.egl.eglGetError())}));
            return false;
        }

        /* access modifiers changed from: package-private */
        public int swap() {
            return !this.egl.eglSwapBuffers(this.eglDisplay, this.eglSurface) ? this.egl.eglGetError() : MtpConstants.FORMAT_UNDEFINED;
        }

        /* access modifiers changed from: private */
        public void destroySurface() {
            if (this.eglSurface != EGL10.EGL_NO_SURFACE) {
                if (!this.egl.eglDestroySurface(this.eglDisplay, this.eglSurface)) {
                    Logger.w(TextureViewRenderThread.TAG, String.format("Could not destroy egl surface. Display %s, Surface %s", new Object[]{this.eglDisplay, this.eglSurface}));
                }
                this.eglSurface = EGL10.EGL_NO_SURFACE;
            }
        }

        /* access modifiers changed from: private */
        public void destroyContext() {
            if (this.eglContext != EGL10.EGL_NO_CONTEXT) {
                if (!this.egl.eglDestroyContext(this.eglDisplay, this.eglContext)) {
                    Logger.w(TextureViewRenderThread.TAG, String.format("Could not destroy egl context. Display %s, Context %s", new Object[]{this.eglDisplay, this.eglContext}));
                }
                this.eglContext = EGL10.EGL_NO_CONTEXT;
            }
        }

        private void terminate() {
            if (this.eglDisplay != EGL10.EGL_NO_DISPLAY) {
                if (!this.egl.eglTerminate(this.eglDisplay)) {
                    Logger.w(TextureViewRenderThread.TAG, String.format("Could not terminate egl. Display %s", new Object[]{this.eglDisplay}));
                }
                this.eglDisplay = EGL10.EGL_NO_DISPLAY;
            }
        }

        /* access modifiers changed from: package-private */
        public void cleanup() {
            destroySurface();
            destroyContext();
            terminate();
        }
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    TextureViewRenderThread(TextureView textureView, TextureViewMapRenderer textureViewMapRenderer) {
        textureView.setOpaque(!textureViewMapRenderer.isTranslucentSurface());
        textureView.setSurfaceTextureListener(this);
        this.mapRenderer = textureViewMapRenderer;
        this.eglHolder = new EGLHolder(new WeakReference(textureView), textureViewMapRenderer.isTranslucentSurface());
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        synchronized (this.lock) {
            this.surface = surfaceTexture;
            this.width = i;
            this.height = i2;
            this.requestRender = true;
            this.lock.notifyAll();
        }
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        synchronized (this.lock) {
            this.width = i;
            this.height = i2;
            this.sizeChanged = true;
            this.requestRender = true;
            this.lock.notifyAll();
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        synchronized (this.lock) {
            this.surface = null;
            this.destroySurface = true;
            this.requestRender = false;
            this.lock.notifyAll();
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public void requestRender() {
        synchronized (this.lock) {
            this.requestRender = true;
            this.lock.notifyAll();
        }
    }

    /* access modifiers changed from: package-private */
    public void queueEvent(Runnable runnable) {
        if (runnable != null) {
            synchronized (this.lock) {
                this.eventQueue.add(runnable);
                this.lock.notifyAll();
            }
            return;
        }
        throw new IllegalArgumentException("runnable must not be null");
    }

    /* access modifiers changed from: package-private */
    public void onPause() {
        synchronized (this.lock) {
            this.paused = true;
            this.lock.notifyAll();
        }
    }

    /* access modifiers changed from: package-private */
    public void onResume() {
        synchronized (this.lock) {
            this.paused = false;
            this.lock.notifyAll();
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Can't wrap try/catch for region: R(7:7|8|9|10|19|16|5) */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x000b, code lost:
        continue;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0015 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onDestroy() {
        /*
            r2 = this;
            java.lang.Object r0 = r2.lock
            monitor-enter(r0)
            r1 = 1
            r2.shouldExit = r1     // Catch:{ all -> 0x001f }
            java.lang.Object r1 = r2.lock     // Catch:{ all -> 0x001f }
            r1.notifyAll()     // Catch:{ all -> 0x001f }
        L_0x000b:
            boolean r1 = r2.exited     // Catch:{ all -> 0x001f }
            if (r1 != 0) goto L_0x001d
            java.lang.Object r1 = r2.lock     // Catch:{ InterruptedException -> 0x0015 }
            r1.wait()     // Catch:{ InterruptedException -> 0x0015 }
            goto L_0x000b
        L_0x0015:
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x001f }
            r1.interrupt()     // Catch:{ all -> 0x001f }
            goto L_0x000b
        L_0x001d:
            monitor-exit(r0)     // Catch:{ all -> 0x001f }
            return
        L_0x001f:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x001f }
            goto L_0x0023
        L_0x0022:
            throw r1
        L_0x0023:
            goto L_0x0022
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread.onDestroy():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:100:?, code lost:
        r9.surface = null;
        r9.destroySurface = true;
        r9.destroyContext = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:101:0x012f, code lost:
        monitor-exit(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:0x0000, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:142:0x0000, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0086, code lost:
        if (r2 == null) goto L_0x008d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:?, code lost:
        r2.run();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x008d, code lost:
        r1 = r9.eglHolder.createGL();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0093, code lost:
        if (r3 == false) goto L_0x00c0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0095, code lost:
        r9.eglHolder.prepare();
        r2 = r9.lock;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x009c, code lost:
        monitor-enter(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00a3, code lost:
        if (r9.eglHolder.createSurface() != false) goto L_0x00aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00a5, code lost:
        r9.destroySurface = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00a7, code lost:
        monitor-exit(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00aa, code lost:
        monitor-exit(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:?, code lost:
        r9.mapRenderer.onSurfaceCreated(r1, com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread.EGLHolder.access$400(r9.eglHolder));
        r9.mapRenderer.onSurfaceChanged(r1, r7, r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x00c0, code lost:
        if (r6 == false) goto L_0x00d5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x00c2, code lost:
        r2 = r9.lock;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x00c4, code lost:
        monitor-enter(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:?, code lost:
        r9.eglHolder.createSurface();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x00ca, code lost:
        monitor-exit(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:?, code lost:
        r9.mapRenderer.onSurfaceChanged(r1, r7, r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x00d7, code lost:
        if (r9.sizeChanged == false) goto L_0x00e2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x00d9, code lost:
        r9.mapRenderer.onSurfaceChanged(r1, r7, r8);
        r9.sizeChanged = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x00ea, code lost:
        if (com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread.EGLHolder.access$300(r9.eglHolder) == javax.microedition.khronos.egl.EGL10.EGL_NO_SURFACE) goto L_0x0000;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x00ec, code lost:
        r9.mapRenderer.onDrawFrame(r1);
        r1 = r9.eglHolder.swap();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x00f9, code lost:
        if (r1 == 12288) goto L_0x0000;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x00fd, code lost:
        if (r1 == 12302) goto L_0x011f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x00ff, code lost:
        com.mapbox.mapboxsdk.log.Logger.w(TAG, java.lang.String.format("eglSwapBuffer error: %s. Waiting or new surface", new java.lang.Object[]{java.lang.Integer.valueOf(r1)}));
        r1 = r9.lock;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x0114, code lost:
        monitor-enter(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:?, code lost:
        r9.surface = null;
        r9.destroySurface = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0119, code lost:
        monitor-exit(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x011f, code lost:
        com.mapbox.mapboxsdk.log.Logger.w(TAG, "Context lost. Waiting for re-aquire");
        r1 = r9.lock;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x0128, code lost:
        monitor-enter(r1);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r9 = this;
        L_0x0000:
            r0 = 1
            java.lang.Object r1 = r9.lock     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            monitor-enter(r1)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
        L_0x0004:
            boolean r2 = r9.shouldExit     // Catch:{ all -> 0x013c }
            if (r2 == 0) goto L_0x001d
            monitor-exit(r1)     // Catch:{ all -> 0x013c }
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r1 = r9.eglHolder
            r1.cleanup()
            java.lang.Object r2 = r9.lock
            monitor-enter(r2)
            r9.exited = r0     // Catch:{ all -> 0x001a }
            java.lang.Object r0 = r9.lock     // Catch:{ all -> 0x001a }
            r0.notifyAll()     // Catch:{ all -> 0x001a }
            monitor-exit(r2)     // Catch:{ all -> 0x001a }
            return
        L_0x001a:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x001a }
            throw r0
        L_0x001d:
            java.util.ArrayList<java.lang.Runnable> r2 = r9.eventQueue     // Catch:{ all -> 0x013c }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x013c }
            r3 = -1
            r4 = 0
            r5 = 0
            if (r2 != 0) goto L_0x0035
            java.util.ArrayList<java.lang.Runnable> r2 = r9.eventQueue     // Catch:{ all -> 0x013c }
            java.lang.Object r2 = r2.remove(r5)     // Catch:{ all -> 0x013c }
            java.lang.Runnable r2 = (java.lang.Runnable) r2     // Catch:{ all -> 0x013c }
        L_0x0030:
            r3 = 0
            r6 = 0
            r7 = -1
            r8 = -1
            goto L_0x0085
        L_0x0035:
            boolean r2 = r9.destroySurface     // Catch:{ all -> 0x013c }
            if (r2 == 0) goto L_0x0041
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r2 = r9.eglHolder     // Catch:{ all -> 0x013c }
            r2.destroySurface()     // Catch:{ all -> 0x013c }
            r9.destroySurface = r5     // Catch:{ all -> 0x013c }
            goto L_0x004c
        L_0x0041:
            boolean r2 = r9.destroyContext     // Catch:{ all -> 0x013c }
            if (r2 == 0) goto L_0x004e
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r2 = r9.eglHolder     // Catch:{ all -> 0x013c }
            r2.destroyContext()     // Catch:{ all -> 0x013c }
            r9.destroyContext = r5     // Catch:{ all -> 0x013c }
        L_0x004c:
            r2 = r4
            goto L_0x0030
        L_0x004e:
            android.graphics.SurfaceTexture r2 = r9.surface     // Catch:{ all -> 0x013c }
            if (r2 == 0) goto L_0x0135
            boolean r2 = r9.paused     // Catch:{ all -> 0x013c }
            if (r2 != 0) goto L_0x0135
            boolean r2 = r9.requestRender     // Catch:{ all -> 0x013c }
            if (r2 == 0) goto L_0x0135
            int r3 = r9.width     // Catch:{ all -> 0x013c }
            int r2 = r9.height     // Catch:{ all -> 0x013c }
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r6 = r9.eglHolder     // Catch:{ all -> 0x013c }
            javax.microedition.khronos.egl.EGLContext r6 = r6.eglContext     // Catch:{ all -> 0x013c }
            javax.microedition.khronos.egl.EGLContext r7 = javax.microedition.khronos.egl.EGL10.EGL_NO_CONTEXT     // Catch:{ all -> 0x013c }
            if (r6 != r7) goto L_0x006e
            r8 = r2
            r7 = r3
            r2 = r4
            r3 = 1
        L_0x006c:
            r6 = 0
            goto L_0x0085
        L_0x006e:
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r6 = r9.eglHolder     // Catch:{ all -> 0x013c }
            javax.microedition.khronos.egl.EGLSurface r6 = r6.eglSurface     // Catch:{ all -> 0x013c }
            javax.microedition.khronos.egl.EGLSurface r7 = javax.microedition.khronos.egl.EGL10.EGL_NO_SURFACE     // Catch:{ all -> 0x013c }
            if (r6 != r7) goto L_0x007e
            r8 = r2
            r7 = r3
            r2 = r4
            r3 = 0
            r6 = 1
            goto L_0x0085
        L_0x007e:
            r9.requestRender = r5     // Catch:{ all -> 0x013c }
            r8 = r2
            r7 = r3
            r2 = r4
            r3 = 0
            goto L_0x006c
        L_0x0085:
            monitor-exit(r1)     // Catch:{ all -> 0x013c }
            if (r2 == 0) goto L_0x008d
            r2.run()     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            goto L_0x0000
        L_0x008d:
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r1 = r9.eglHolder     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            javax.microedition.khronos.opengles.GL10 r1 = r1.createGL()     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            if (r3 == 0) goto L_0x00c0
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r2 = r9.eglHolder     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            r2.prepare()     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            java.lang.Object r2 = r9.lock     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            monitor-enter(r2)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r3 = r9.eglHolder     // Catch:{ all -> 0x00bd }
            boolean r3 = r3.createSurface()     // Catch:{ all -> 0x00bd }
            if (r3 != 0) goto L_0x00aa
            r9.destroySurface = r0     // Catch:{ all -> 0x00bd }
            monitor-exit(r2)     // Catch:{ all -> 0x00bd }
            goto L_0x0000
        L_0x00aa:
            monitor-exit(r2)     // Catch:{ all -> 0x00bd }
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewMapRenderer r2 = r9.mapRenderer     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r3 = r9.eglHolder     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            javax.microedition.khronos.egl.EGLConfig r3 = r3.eglConfig     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            r2.onSurfaceCreated(r1, r3)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewMapRenderer r2 = r9.mapRenderer     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            r2.onSurfaceChanged(r1, r7, r8)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            goto L_0x0000
        L_0x00bd:
            r1 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x00bd }
            throw r1     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
        L_0x00c0:
            if (r6 == 0) goto L_0x00d5
            java.lang.Object r2 = r9.lock     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            monitor-enter(r2)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r3 = r9.eglHolder     // Catch:{ all -> 0x00d2 }
            r3.createSurface()     // Catch:{ all -> 0x00d2 }
            monitor-exit(r2)     // Catch:{ all -> 0x00d2 }
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewMapRenderer r2 = r9.mapRenderer     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            r2.onSurfaceChanged(r1, r7, r8)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            goto L_0x0000
        L_0x00d2:
            r1 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x00d2 }
            throw r1     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
        L_0x00d5:
            boolean r2 = r9.sizeChanged     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            if (r2 == 0) goto L_0x00e2
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewMapRenderer r2 = r9.mapRenderer     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            r2.onSurfaceChanged(r1, r7, r8)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            r9.sizeChanged = r5     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            goto L_0x0000
        L_0x00e2:
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r2 = r9.eglHolder     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            javax.microedition.khronos.egl.EGLSurface r2 = r2.eglSurface     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            javax.microedition.khronos.egl.EGLSurface r3 = javax.microedition.khronos.egl.EGL10.EGL_NO_SURFACE     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            if (r2 == r3) goto L_0x0000
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewMapRenderer r2 = r9.mapRenderer     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            r2.onDrawFrame(r1)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r1 = r9.eglHolder     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            int r1 = r1.swap()     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            r2 = 12288(0x3000, float:1.7219E-41)
            if (r1 == r2) goto L_0x0000
            r2 = 12302(0x300e, float:1.7239E-41)
            if (r1 == r2) goto L_0x011f
            java.lang.String r2 = "Mbgl-TextureViewRenderThread"
            java.lang.String r3 = "eglSwapBuffer error: %s. Waiting or new surface"
            java.lang.Object[] r6 = new java.lang.Object[r0]     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            r6[r5] = r1     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            java.lang.String r1 = java.lang.String.format(r3, r6)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            com.mapbox.mapboxsdk.log.Logger.w(r2, r1)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            java.lang.Object r1 = r9.lock     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            monitor-enter(r1)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            r9.surface = r4     // Catch:{ all -> 0x011c }
            r9.destroySurface = r0     // Catch:{ all -> 0x011c }
            monitor-exit(r1)     // Catch:{ all -> 0x011c }
            goto L_0x0000
        L_0x011c:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x011c }
            throw r2     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
        L_0x011f:
            java.lang.String r1 = "Mbgl-TextureViewRenderThread"
            java.lang.String r2 = "Context lost. Waiting for re-aquire"
            com.mapbox.mapboxsdk.log.Logger.w(r1, r2)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            java.lang.Object r1 = r9.lock     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            monitor-enter(r1)     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
            r9.surface = r4     // Catch:{ all -> 0x0132 }
            r9.destroySurface = r0     // Catch:{ all -> 0x0132 }
            r9.destroyContext = r0     // Catch:{ all -> 0x0132 }
            monitor-exit(r1)     // Catch:{ all -> 0x0132 }
            goto L_0x0000
        L_0x0132:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0132 }
            throw r2     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
        L_0x0135:
            java.lang.Object r2 = r9.lock     // Catch:{ all -> 0x013c }
            r2.wait()     // Catch:{ all -> 0x013c }
            goto L_0x0004
        L_0x013c:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x013c }
            throw r2     // Catch:{ InterruptedException -> 0x0154, all -> 0x013f }
        L_0x013f:
            r1 = move-exception
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r2 = r9.eglHolder
            r2.cleanup()
            java.lang.Object r2 = r9.lock
            monitor-enter(r2)
            r9.exited = r0     // Catch:{ all -> 0x0151 }
            java.lang.Object r0 = r9.lock     // Catch:{ all -> 0x0151 }
            r0.notifyAll()     // Catch:{ all -> 0x0151 }
            monitor-exit(r2)     // Catch:{ all -> 0x0151 }
            throw r1
        L_0x0151:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0151 }
            throw r0
        L_0x0154:
            com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread$EGLHolder r1 = r9.eglHolder
            r1.cleanup()
            java.lang.Object r1 = r9.lock
            monitor-enter(r1)
            r9.exited = r0     // Catch:{ all -> 0x0165 }
            java.lang.Object r0 = r9.lock     // Catch:{ all -> 0x0165 }
            r0.notifyAll()     // Catch:{ all -> 0x0165 }
            monitor-exit(r1)     // Catch:{ all -> 0x0165 }
            return
        L_0x0165:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0165 }
            goto L_0x0169
        L_0x0168:
            throw r0
        L_0x0169:
            goto L_0x0168
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.mapboxsdk.maps.renderer.textureview.TextureViewRenderThread.run():void");
    }
}
