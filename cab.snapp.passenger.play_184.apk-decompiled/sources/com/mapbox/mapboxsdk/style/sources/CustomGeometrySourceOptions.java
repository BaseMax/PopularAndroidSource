package com.mapbox.mapboxsdk.style.sources;

import java.util.HashMap;

public class CustomGeometrySourceOptions extends HashMap<String, Object> {
    public CustomGeometrySourceOptions withWrap(boolean z) {
        put("wrap", Boolean.valueOf(z));
        return this;
    }

    public CustomGeometrySourceOptions withClip(boolean z) {
        put("clip", Boolean.valueOf(z));
        return this;
    }

    public CustomGeometrySourceOptions withMinZoom(int i) {
        put("minzoom", Integer.valueOf(i));
        return this;
    }

    public CustomGeometrySourceOptions withMaxZoom(int i) {
        put("maxzoom", Integer.valueOf(i));
        return this;
    }

    public CustomGeometrySourceOptions withBuffer(int i) {
        put("buffer", Integer.valueOf(i));
        return this;
    }

    public CustomGeometrySourceOptions withTolerance(float f) {
        put("tolerance", Float.valueOf(f));
        return this;
    }
}
