package com.mapbox.mapboxsdk.style.sources;

import android.net.Uri;
import com.mapbox.geojson.Feature;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class VectorSource extends Source {
    private native Feature[] querySourceFeatures(String[] strArr, Object[] objArr);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, Object obj);

    /* access modifiers changed from: protected */
    public native String nativeGetUrl();

    VectorSource(long j) {
        super(j);
    }

    @Deprecated
    public VectorSource(String str, URL url) {
        this(str, url.toExternalForm());
    }

    public VectorSource(String str, Uri uri) {
        this(str, uri.toString());
    }

    public VectorSource(String str, String str2) {
        initialize(str, str2);
    }

    public VectorSource(String str, TileSet tileSet) {
        initialize(str, tileSet.toValueObject());
    }

    public List<Feature> querySourceFeatures(String[] strArr, Expression expression) {
        checkThread();
        Feature[] querySourceFeatures = querySourceFeatures(strArr, expression != null ? expression.toArray() : null);
        return querySourceFeatures != null ? Arrays.asList(querySourceFeatures) : new ArrayList();
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
