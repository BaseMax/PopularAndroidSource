package com.mapbox.mapboxsdk.maps.renderer.glsurfaceview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import com.mapbox.mapboxsdk.maps.renderer.MapRenderer;
import com.mapbox.mapboxsdk.maps.renderer.egl.EGLConfigChooser;
import com.mapbox.mapboxsdk.maps.renderer.glsurfaceview.MapboxGLSurfaceView;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class GLSurfaceViewMapRenderer extends MapRenderer implements GLSurfaceView.Renderer {
    private final MapboxGLSurfaceView glSurfaceView;

    public GLSurfaceViewMapRenderer(Context context, MapboxGLSurfaceView mapboxGLSurfaceView, String str) {
        super(context, str);
        this.glSurfaceView = mapboxGLSurfaceView;
        mapboxGLSurfaceView.setEGLContextClientVersion(2);
        mapboxGLSurfaceView.setEGLConfigChooser(new EGLConfigChooser());
        mapboxGLSurfaceView.setRenderer(this);
        mapboxGLSurfaceView.setRenderMode(0);
        mapboxGLSurfaceView.setPreserveEGLContextOnPause(true);
        mapboxGLSurfaceView.setDetachedListener(new MapboxGLSurfaceView.OnGLSurfaceViewDetachedListener() {
            public void onGLSurfaceViewDetached() {
                GLSurfaceViewMapRenderer.this.nativeReset();
            }
        });
    }

    public void onStop() {
        this.glSurfaceView.onPause();
    }

    public void onPause() {
        super.onPause();
    }

    public void onDestroy() {
        super.onDestroy();
    }

    public void onStart() {
        this.glSurfaceView.onResume();
    }

    public void onResume() {
        super.onResume();
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        super.onSurfaceCreated(gl10, eGLConfig);
    }

    public void onSurfaceDestroyed() {
        super.onSurfaceDestroyed();
    }

    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        super.onSurfaceChanged(gl10, i, i2);
    }

    public void onDrawFrame(GL10 gl10) {
        super.onDrawFrame(gl10);
    }

    public void requestRender() {
        this.glSurfaceView.requestRender();
    }

    public void queueEvent(Runnable runnable) {
        this.glSurfaceView.queueEvent(runnable);
    }
}
