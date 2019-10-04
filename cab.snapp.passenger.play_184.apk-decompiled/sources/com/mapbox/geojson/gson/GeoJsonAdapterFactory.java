package com.mapbox.geojson.gson;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.r;
import com.mapbox.geojson.BoundingBox;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.GeometryCollection;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.MultiLineString;
import com.mapbox.geojson.MultiPoint;
import com.mapbox.geojson.MultiPolygon;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;

public abstract class GeoJsonAdapterFactory implements r {

    public static final class GeoJsonAdapterFactoryIml extends GeoJsonAdapterFactory {
        public final <T> q<T> create(e eVar, a<T> aVar) {
            Class<? super T> rawType = aVar.getRawType();
            if (BoundingBox.class.isAssignableFrom(rawType)) {
                return BoundingBox.typeAdapter(eVar);
            }
            if (Feature.class.isAssignableFrom(rawType)) {
                return Feature.typeAdapter(eVar);
            }
            if (FeatureCollection.class.isAssignableFrom(rawType)) {
                return FeatureCollection.typeAdapter(eVar);
            }
            if (GeometryCollection.class.isAssignableFrom(rawType)) {
                return GeometryCollection.typeAdapter(eVar);
            }
            if (LineString.class.isAssignableFrom(rawType)) {
                return LineString.typeAdapter(eVar);
            }
            if (MultiLineString.class.isAssignableFrom(rawType)) {
                return MultiLineString.typeAdapter(eVar);
            }
            if (MultiPoint.class.isAssignableFrom(rawType)) {
                return MultiPoint.typeAdapter(eVar);
            }
            if (MultiPolygon.class.isAssignableFrom(rawType)) {
                return MultiPolygon.typeAdapter(eVar);
            }
            if (Polygon.class.isAssignableFrom(rawType)) {
                return Polygon.typeAdapter(eVar);
            }
            if (Point.class.isAssignableFrom(rawType)) {
                return Point.typeAdapter(eVar);
            }
            return null;
        }
    }

    public static r create() {
        return new GeoJsonAdapterFactoryIml();
    }
}
