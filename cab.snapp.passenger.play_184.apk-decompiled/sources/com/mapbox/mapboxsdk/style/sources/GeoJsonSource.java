package com.mapbox.mapboxsdk.style.sources;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Geometry;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class GeoJsonSource extends Source {
    private native Feature[] nativeGetClusterChildren(Feature feature);

    private native int nativeGetClusterExpansionZoom(Feature feature);

    private native Feature[] nativeGetClusterLeaves(Feature feature, long j, long j2);

    private native void nativeSetFeature(Feature feature);

    private native void nativeSetFeatureCollection(FeatureCollection featureCollection);

    private native void nativeSetGeoJsonString(String str);

    private native void nativeSetGeometry(Geometry geometry);

    private native Feature[] querySourceFeatures(Object[] objArr);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, Object obj);

    /* access modifiers changed from: protected */
    public native String nativeGetUrl();

    /* access modifiers changed from: protected */
    public native void nativeSetUrl(String str);

    GeoJsonSource(long j) {
        super(j);
    }

    public GeoJsonSource(String str) {
        initialize(str, null);
        setGeoJson(FeatureCollection.fromFeatures((List<Feature>) new ArrayList()));
    }

    public GeoJsonSource(String str, GeoJsonOptions geoJsonOptions) {
        initialize(str, geoJsonOptions);
        setGeoJson(FeatureCollection.fromFeatures((List<Feature>) new ArrayList()));
    }

    public GeoJsonSource(String str, String str2) {
        if (str2 == null || str2.startsWith("http")) {
            throw new IllegalArgumentException("Expected a raw json body");
        }
        initialize(str, null);
        setGeoJson(str2);
    }

    public GeoJsonSource(String str, String str2, GeoJsonOptions geoJsonOptions) {
        if (str2 == null || str2.startsWith("http") || str2.startsWith("asset") || str2.startsWith("file")) {
            throw new IllegalArgumentException("Expected a raw json body");
        }
        initialize(str, geoJsonOptions);
        setGeoJson(str2);
    }

    @Deprecated
    public GeoJsonSource(String str, URL url) {
        initialize(str, null);
        nativeSetUrl(url.toExternalForm());
    }

    @Deprecated
    public GeoJsonSource(String str, URL url, GeoJsonOptions geoJsonOptions) {
        initialize(str, geoJsonOptions);
        nativeSetUrl(url.toExternalForm());
    }

    public GeoJsonSource(String str, URI uri) {
        initialize(str, null);
        nativeSetUrl(uri.toString());
    }

    public GeoJsonSource(String str, URI uri, GeoJsonOptions geoJsonOptions) {
        initialize(str, geoJsonOptions);
        nativeSetUrl(uri.toString());
    }

    public GeoJsonSource(String str, FeatureCollection featureCollection) {
        initialize(str, null);
        setGeoJson(featureCollection);
    }

    public GeoJsonSource(String str, FeatureCollection featureCollection, GeoJsonOptions geoJsonOptions) {
        initialize(str, geoJsonOptions);
        setGeoJson(featureCollection);
    }

    public GeoJsonSource(String str, Feature feature) {
        initialize(str, null);
        setGeoJson(feature);
    }

    public GeoJsonSource(String str, Feature feature, GeoJsonOptions geoJsonOptions) {
        initialize(str, geoJsonOptions);
        setGeoJson(feature);
    }

    public GeoJsonSource(String str, Geometry geometry) {
        initialize(str, null);
        setGeoJson(geometry);
    }

    public GeoJsonSource(String str, Geometry geometry, GeoJsonOptions geoJsonOptions) {
        initialize(str, geoJsonOptions);
        setGeoJson(geometry);
    }

    public void setGeoJson(Feature feature) {
        if (!this.detached) {
            checkThread();
            nativeSetFeature(feature);
        }
    }

    public void setGeoJson(Geometry geometry) {
        if (!this.detached) {
            checkThread();
            nativeSetGeometry(geometry);
        }
    }

    public void setGeoJson(FeatureCollection featureCollection) {
        if (!this.detached) {
            checkThread();
            if (featureCollection == null || featureCollection.features() == null) {
                nativeSetFeatureCollection(featureCollection);
            } else {
                nativeSetFeatureCollection(FeatureCollection.fromFeatures((List<Feature>) new ArrayList(featureCollection.features())));
            }
        }
    }

    public void setGeoJson(String str) {
        if (!this.detached) {
            checkThread();
            nativeSetGeoJsonString(str);
        }
    }

    @Deprecated
    public void setUrl(URL url) {
        checkThread();
        setUrl(url.toExternalForm());
    }

    public void setUri(URI uri) {
        setUri(uri.toString());
    }

    @Deprecated
    public void setUrl(String str) {
        checkThread();
        nativeSetUrl(str);
    }

    public void setUri(String str) {
        checkThread();
        nativeSetUrl(str);
    }

    public String getUrl() {
        checkThread();
        return nativeGetUrl();
    }

    public String getUri() {
        checkThread();
        return nativeGetUrl();
    }

    public List<Feature> querySourceFeatures(Expression expression) {
        checkThread();
        Feature[] querySourceFeatures = querySourceFeatures(expression != null ? expression.toArray() : null);
        return querySourceFeatures != null ? Arrays.asList(querySourceFeatures) : new ArrayList();
    }

    public FeatureCollection getClusterChildren(Feature feature) {
        checkThread();
        return FeatureCollection.fromFeatures(nativeGetClusterChildren(feature));
    }

    public FeatureCollection getClusterLeaves(Feature feature, long j, long j2) {
        checkThread();
        return FeatureCollection.fromFeatures(nativeGetClusterLeaves(feature, j, j2));
    }

    public int getClusterExpansionZoom(Feature feature) {
        checkThread();
        return nativeGetClusterExpansionZoom(feature);
    }
}
