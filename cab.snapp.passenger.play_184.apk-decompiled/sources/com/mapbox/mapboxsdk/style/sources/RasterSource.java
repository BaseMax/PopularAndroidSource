package com.mapbox.mapboxsdk.style.sources;

import java.net.URI;
import java.net.URL;

public class RasterSource extends Source {
    public static final int DEFAULT_TILE_SIZE = 512;

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, Object obj, int i);

    /* access modifiers changed from: protected */
    public native String nativeGetUrl();

    RasterSource(long j) {
        super(j);
    }

    public RasterSource(String str, URL url) {
        this(str, url.toExternalForm());
    }

    public RasterSource(String str, URI uri) {
        this(str, uri.toString());
    }

    public RasterSource(String str, String str2) {
        initialize(str, str2, 512);
    }

    public RasterSource(String str, String str2, int i) {
        initialize(str, str2, i);
    }

    public RasterSource(String str, TileSet tileSet) {
        initialize(str, tileSet.toValueObject(), 512);
    }

    public RasterSource(String str, TileSet tileSet, int i) {
        initialize(str, tileSet.toValueObject(), i);
    }

    @Deprecated
    public String getUrl() {
        checkThread();
        return nativeGetUrl();
    }

    public String getUri() {
        checkThread();
        return nativeGetUrl();
    }
}
