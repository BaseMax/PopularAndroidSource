package com.mapbox.mapboxsdk.maps.renderer.glsurfaceview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;

public class MapboxGLSurfaceView extends GLSurfaceView {
    private OnGLSurfaceViewDetachedListener detachedListener;

    public interface OnGLSurfaceViewDetachedListener {
        void onGLSurfaceViewDetached();
    }

    public MapboxGLSurfaceView(Context context) {
        super(context);
    }

    public MapboxGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        OnGLSurfaceViewDetachedListener onGLSurfaceViewDetachedListener = this.detachedListener;
        if (onGLSurfaceViewDetachedListener != null) {
            onGLSurfaceViewDetachedListener.onGLSurfaceViewDetached();
        }
        super.onDetachedFromWindow();
    }

    public void setDetachedListener(OnGLSurfaceViewDetachedListener onGLSurfaceViewDetachedListener) {
        if (this.detachedListener == null) {
            this.detachedListener = onGLSurfaceViewDetachedListener;
            return;
        }
        throw new IllegalArgumentException("Detached from window listener has been already set.");
    }
}
