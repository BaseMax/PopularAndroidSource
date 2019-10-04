package com.mapbox.geojson.gson;

import com.google.gson.f;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.GeometryAdapterFactory;

public class GeometryGeoJson {
    public static Geometry fromJson(String str) {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        fVar.registerTypeAdapterFactory(GeometryAdapterFactory.create());
        return (Geometry) fVar.create().fromJson(str, Geometry.class);
    }
}
