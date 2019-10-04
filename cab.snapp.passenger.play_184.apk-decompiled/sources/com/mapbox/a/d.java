package com.mapbox.a;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.GeometryCollection;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.MultiLineString;
import com.mapbox.geojson.MultiPoint;
import com.mapbox.geojson.MultiPolygon;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class d {
    private d() {
    }

    public static List<Point> coordAll(Point point) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(point);
        return arrayList;
    }

    public static List<Point> coordAll(MultiPoint multiPoint) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(multiPoint.coordinates());
        return arrayList;
    }

    public static List<Point> coordAll(LineString lineString) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(lineString.coordinates());
        return arrayList;
    }

    public static List<Point> coordAll(Polygon polygon, boolean z) {
        return a((List<Point>) new ArrayList(), polygon, z);
    }

    private static List<Point> a(List<Point> list, Polygon polygon, boolean z) {
        for (int i = 0; i < polygon.coordinates().size(); i++) {
            for (int i2 = 0; i2 < ((List) polygon.coordinates().get(i)).size() - (z ? 1 : 0); i2++) {
                list.add(((List) polygon.coordinates().get(i)).get(i2));
            }
        }
        return list;
    }

    public static List<Point> coordAll(MultiLineString multiLineString) {
        return a(new ArrayList(), multiLineString);
    }

    private static List<Point> a(List<Point> list, MultiLineString multiLineString) {
        for (int i = 0; i < multiLineString.coordinates().size(); i++) {
            list.addAll((Collection) multiLineString.coordinates().get(i));
        }
        return list;
    }

    public static List<Point> coordAll(MultiPolygon multiPolygon, boolean z) {
        return a((List<Point>) new ArrayList(), multiPolygon, z);
    }

    private static List<Point> a(List<Point> list, MultiPolygon multiPolygon, boolean z) {
        for (int i = 0; i < multiPolygon.coordinates().size(); i++) {
            for (int i2 = 0; i2 < ((List) multiPolygon.coordinates().get(i)).size(); i2++) {
                for (int i3 = 0; i3 < ((List) ((List) multiPolygon.coordinates().get(i)).get(i2)).size() - (z ? 1 : 0); i3++) {
                    list.add(((List) ((List) multiPolygon.coordinates().get(i)).get(i2)).get(i3));
                }
            }
        }
        return list;
    }

    public static List<Point> coordAll(Feature feature, boolean z) {
        return a((List<Point>) new ArrayList(), feature, z);
    }

    public static List<Point> coordAll(FeatureCollection featureCollection, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (Feature a2 : featureCollection.features()) {
            a((List<Point>) arrayList, a2, z);
        }
        return arrayList;
    }

    private static List<Point> a(List<Point> list, Feature feature, boolean z) {
        return a(list, feature.geometry(), z);
    }

    private static List<Point> a(List<Point> list, Geometry geometry, boolean z) {
        if (geometry instanceof Point) {
            list.add((Point) geometry);
        } else if (geometry instanceof MultiPoint) {
            list.addAll(((MultiPoint) geometry).coordinates());
        } else if (geometry instanceof LineString) {
            list.addAll(((LineString) geometry).coordinates());
        } else if (geometry instanceof MultiLineString) {
            a(list, (MultiLineString) geometry);
        } else if (geometry instanceof Polygon) {
            a(list, (Polygon) geometry, z);
        } else if (geometry instanceof MultiPolygon) {
            a(list, (MultiPolygon) geometry, z);
        } else if (geometry instanceof GeometryCollection) {
            for (Geometry a2 : ((GeometryCollection) geometry).geometries()) {
                a(list, a2, z);
            }
        }
        return list;
    }

    public static Point getCoord(Feature feature) {
        if (feature.geometry() instanceof Point) {
            return (Point) feature.geometry();
        }
        throw new b("A Feature with a Point geometry is required.");
    }
}
