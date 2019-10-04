package com.mapbox.a;

import com.mapbox.geojson.BoundingBox;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.GeometryCollection;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.MultiLineString;
import com.mapbox.geojson.MultiPoint;
import com.mapbox.geojson.MultiPolygon;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class c {
    private c() {
        throw new AssertionError("No Instances.");
    }

    public static double bearing(Point point, Point point2) {
        double degreesToRadians = a.degreesToRadians(point.longitude());
        double degreesToRadians2 = a.degreesToRadians(point2.longitude());
        double degreesToRadians3 = a.degreesToRadians(point.latitude());
        double degreesToRadians4 = a.degreesToRadians(point2.latitude());
        double d = degreesToRadians2 - degreesToRadians;
        return a.radiansToDegrees(Math.atan2(Math.sin(d) * Math.cos(degreesToRadians4), (Math.cos(degreesToRadians3) * Math.sin(degreesToRadians4)) - ((Math.sin(degreesToRadians3) * Math.cos(degreesToRadians4)) * Math.cos(d))));
    }

    public static Point destination(Point point, double d, double d2, String str) {
        double degreesToRadians = a.degreesToRadians(point.longitude());
        double degreesToRadians2 = a.degreesToRadians(point.latitude());
        double degreesToRadians3 = a.degreesToRadians(d2);
        double lengthToRadians = a.lengthToRadians(d, str);
        double asin = Math.asin((Math.sin(degreesToRadians2) * Math.cos(lengthToRadians)) + (Math.cos(degreesToRadians2) * Math.sin(lengthToRadians) * Math.cos(degreesToRadians3)));
        return Point.fromLngLat(a.radiansToDegrees(degreesToRadians + Math.atan2(Math.sin(degreesToRadians3) * Math.sin(lengthToRadians) * Math.cos(degreesToRadians2), Math.cos(lengthToRadians) - (Math.sin(degreesToRadians2) * Math.sin(asin)))), a.radiansToDegrees(asin));
    }

    public static double distance(Point point, Point point2) {
        return distance(point, point2, "kilometers");
    }

    public static double distance(Point point, Point point2, String str) {
        double pow = Math.pow(Math.sin(a.degreesToRadians(point2.latitude() - point.latitude()) / 2.0d), 2.0d) + (Math.pow(Math.sin(a.degreesToRadians(point2.longitude() - point.longitude()) / 2.0d), 2.0d) * Math.cos(a.degreesToRadians(point.latitude())) * Math.cos(a.degreesToRadians(point2.latitude())));
        return a.radiansToLength(Math.atan2(Math.sqrt(pow), Math.sqrt(1.0d - pow)) * 2.0d, str);
    }

    public static double length(LineString lineString, String str) {
        return a(lineString.coordinates(), str);
    }

    public static double length(MultiLineString multiLineString, String str) {
        double d = 0.0d;
        for (List a2 : multiLineString.coordinates()) {
            d += a(a2, str);
        }
        return d;
    }

    public static double length(Polygon polygon, String str) {
        double d = 0.0d;
        for (List a2 : polygon.coordinates()) {
            d += a(a2, str);
        }
        return d;
    }

    public static double length(MultiPolygon multiPolygon, String str) {
        double d = 0.0d;
        for (List<List> it : multiPolygon.coordinates()) {
            for (List a2 : it) {
                d += a(a2, str);
            }
        }
        return d;
    }

    private static double a(List<Point> list, String str) {
        Point point = list.get(0);
        int i = 1;
        double d = 0.0d;
        while (i < list.size()) {
            Point point2 = list.get(i);
            d += distance(point, point2, str);
            i++;
            point = point2;
        }
        return d;
    }

    public static Point midpoint(Point point, Point point2) {
        return destination(point, distance(point, point2, "miles") / 2.0d, bearing(point, point2), "miles");
    }

    public static Point along(LineString lineString, double d, String str) {
        List coordinates = lineString.coordinates();
        int i = 0;
        double d2 = 0.0d;
        while (i < coordinates.size() && (d < d2 || i != coordinates.size() - 1)) {
            if (d2 >= d) {
                double d3 = d - d2;
                if (d3 == 0.0d) {
                    return (Point) coordinates.get(i);
                }
                return destination((Point) coordinates.get(i), d3, bearing((Point) coordinates.get(i), (Point) coordinates.get(i - 1)) - 180.0d, str);
            }
            i++;
            d2 += distance((Point) coordinates.get(i), (Point) coordinates.get(i), str);
        }
        return (Point) coordinates.get(coordinates.size() - 1);
    }

    public static double[] bbox(Point point) {
        return a(d.coordAll(point));
    }

    public static double[] bbox(LineString lineString) {
        return a(d.coordAll(lineString));
    }

    public static double[] bbox(MultiPoint multiPoint) {
        return a(d.coordAll(multiPoint));
    }

    public static double[] bbox(Polygon polygon) {
        return a(d.coordAll(polygon, false));
    }

    public static double[] bbox(MultiLineString multiLineString) {
        return a(d.coordAll(multiLineString));
    }

    public static double[] bbox(MultiPolygon multiPolygon) {
        return a(d.coordAll(multiPolygon, false));
    }

    public static double[] bbox(Geometry geometry) {
        if (geometry instanceof Point) {
            return bbox((Point) geometry);
        }
        if (geometry instanceof MultiPoint) {
            return bbox((MultiPoint) geometry);
        }
        if (geometry instanceof LineString) {
            return bbox((LineString) geometry);
        }
        if (geometry instanceof MultiLineString) {
            return bbox((MultiLineString) geometry);
        }
        if (geometry instanceof Polygon) {
            return bbox((Polygon) geometry);
        }
        if (geometry instanceof MultiPolygon) {
            return bbox((MultiPolygon) geometry);
        }
        if (geometry instanceof GeometryCollection) {
            ArrayList arrayList = new ArrayList();
            for (Geometry bbox : ((GeometryCollection) geometry).geometries()) {
                double[] bbox2 = bbox(bbox);
                arrayList.add(Point.fromLngLat(bbox2[0], bbox2[1]));
                arrayList.add(Point.fromLngLat(bbox2[2], bbox2[1]));
                arrayList.add(Point.fromLngLat(bbox2[2], bbox2[3]));
                arrayList.add(Point.fromLngLat(bbox2[0], bbox2[3]));
            }
            return bbox(MultiPoint.fromLngLats((List<Point>) arrayList));
        }
        throw new RuntimeException("Unknown geometry class: " + geometry.getClass());
    }

    private static double[] a(List<Point> list) {
        double[] dArr = {Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY};
        for (Point next : list) {
            if (dArr[0] > next.longitude()) {
                dArr[0] = next.longitude();
            }
            if (dArr[1] > next.latitude()) {
                dArr[1] = next.latitude();
            }
            if (dArr[2] < next.longitude()) {
                dArr[2] = next.longitude();
            }
            if (dArr[3] < next.latitude()) {
                dArr[3] = next.latitude();
            }
        }
        return dArr;
    }

    public static Polygon bboxPolygon(BoundingBox boundingBox) {
        return Polygon.fromLngLats((List<List<Point>>) Arrays.asList(new List[]{Arrays.asList(new Point[]{Point.fromLngLat(boundingBox.west(), boundingBox.south()), Point.fromLngLat(boundingBox.east(), boundingBox.south()), Point.fromLngLat(boundingBox.east(), boundingBox.north()), Point.fromLngLat(boundingBox.west(), boundingBox.north()), Point.fromLngLat(boundingBox.west(), boundingBox.south())})}));
    }
}
