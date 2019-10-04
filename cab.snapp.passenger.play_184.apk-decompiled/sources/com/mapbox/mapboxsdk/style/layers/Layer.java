package com.mapbox.mapboxsdk.style.layers;

import com.google.gson.JsonElement;
import com.mapbox.mapboxsdk.LibraryLoader;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.style.types.Formatted;
import com.mapbox.mapboxsdk.utils.ThreadUtils;

public abstract class Layer {
    private static final String TAG = "Mbgl-Layer";
    private boolean detached;
    private boolean invalidated;
    private long nativePtr;

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native JsonElement nativeGetFilter();

    /* access modifiers changed from: protected */
    public native String nativeGetId();

    /* access modifiers changed from: protected */
    public native float nativeGetMaxZoom();

    /* access modifiers changed from: protected */
    public native float nativeGetMinZoom();

    /* access modifiers changed from: protected */
    public native String nativeGetSourceId();

    /* access modifiers changed from: protected */
    public native String nativeGetSourceLayer();

    /* access modifiers changed from: protected */
    public native Object nativeGetVisibility();

    /* access modifiers changed from: protected */
    public native void nativeSetFilter(Object[] objArr);

    /* access modifiers changed from: protected */
    public native void nativeSetLayoutProperty(String str, Object obj);

    /* access modifiers changed from: protected */
    public native void nativeSetMaxZoom(float f);

    /* access modifiers changed from: protected */
    public native void nativeSetMinZoom(float f);

    /* access modifiers changed from: protected */
    public native void nativeSetPaintProperty(String str, Object obj);

    /* access modifiers changed from: protected */
    public native void nativeSetSourceLayer(String str);

    static {
        LibraryLoader.load();
    }

    protected Layer(long j) {
        checkThread();
        this.nativePtr = j;
    }

    public Layer() {
        checkThread();
    }

    /* access modifiers changed from: protected */
    public void checkThread() {
        ThreadUtils.checkThread(TAG);
    }

    public void setProperties(PropertyValue<?>... propertyValueArr) {
        if (!this.detached) {
            checkThread();
            if (propertyValueArr.length != 0) {
                for (PropertyValue<?> propertyValue : propertyValueArr) {
                    Object convertValue = convertValue(propertyValue.value);
                    if (propertyValue instanceof PaintPropertyValue) {
                        nativeSetPaintProperty(propertyValue.name, convertValue);
                    } else {
                        nativeSetLayoutProperty(propertyValue.name, convertValue);
                    }
                }
            }
        }
    }

    public String getId() {
        checkThread();
        return nativeGetId();
    }

    public PropertyValue<String> getVisibility() {
        checkThread();
        return new PaintPropertyValue("visibility", (String) nativeGetVisibility());
    }

    public float getMinZoom() {
        checkThread();
        return nativeGetMinZoom();
    }

    public float getMaxZoom() {
        checkThread();
        return nativeGetMaxZoom();
    }

    public void setMinZoom(float f) {
        checkThread();
        nativeSetMinZoom(f);
    }

    public void setMaxZoom(float f) {
        checkThread();
        nativeSetMaxZoom(f);
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    private Object convertValue(Object obj) {
        if (obj instanceof Expression) {
            return ((Expression) obj).toArray();
        }
        if (obj instanceof Formatted) {
            obj = ((Formatted) obj).toArray();
        }
        return obj;
    }

    public void setDetached() {
        this.detached = true;
    }

    public boolean isDetached() {
        return this.detached;
    }
}
