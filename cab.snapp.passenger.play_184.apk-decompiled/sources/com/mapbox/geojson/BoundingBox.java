package com.mapbox.geojson;

import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.q;
import com.mapbox.geojson.gson.BoundingBoxTypeAdapter;
import java.io.Serializable;
import java.lang.reflect.Type;

public class BoundingBox implements Serializable {
    private final Point northeast;
    private final Point southwest;

    public static BoundingBox fromJson(String str) {
        Class cls = BoundingBox.class;
        return (BoundingBox) new f().registerTypeAdapter(cls, new BoundingBoxTypeAdapter()).create().fromJson(str, cls);
    }

    public static BoundingBox fromPoints(Point point, Point point2) {
        return new BoundingBox(point, point2);
    }

    @Deprecated
    public static BoundingBox fromCoordinates(double d, double d2, double d3, double d4) {
        return fromLngLats(d, d2, d3, d4);
    }

    @Deprecated
    public static BoundingBox fromCoordinates(double d, double d2, double d3, double d4, double d5, double d6) {
        return fromLngLats(d, d2, d3, d4, d5, d6);
    }

    public static BoundingBox fromLngLats(double d, double d2, double d3, double d4) {
        return new BoundingBox(Point.fromLngLat(d, d2), Point.fromLngLat(d3, d4));
    }

    public static BoundingBox fromLngLats(double d, double d2, double d3, double d4, double d5, double d6) {
        return new BoundingBox(Point.fromLngLat(d, d2, d3), Point.fromLngLat(d4, d5, d6));
    }

    BoundingBox(Point point, Point point2) {
        if (point != null) {
            this.southwest = point;
            if (point2 != null) {
                this.northeast = point2;
                return;
            }
            throw new NullPointerException("Null northeast");
        }
        throw new NullPointerException("Null southwest");
    }

    public Point southwest() {
        return this.southwest;
    }

    public Point northeast() {
        return this.northeast;
    }

    public final double west() {
        return southwest().longitude();
    }

    public final double south() {
        return southwest().latitude();
    }

    public final double east() {
        return northeast().longitude();
    }

    public final double north() {
        return northeast().latitude();
    }

    public static q<BoundingBox> typeAdapter(e eVar) {
        return new BoundingBoxTypeAdapter();
    }

    public final String toJson() {
        Class<BoundingBox> cls = BoundingBox.class;
        return new f().registerTypeAdapter(cls, new BoundingBoxTypeAdapter()).create().toJson((Object) this, (Type) cls);
    }

    public String toString() {
        return "BoundingBox{southwest=" + this.southwest + ", northeast=" + this.northeast + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BoundingBox) {
            BoundingBox boundingBox = (BoundingBox) obj;
            return this.southwest.equals(boundingBox.southwest()) && this.northeast.equals(boundingBox.northeast());
        }
    }

    public int hashCode() {
        return ((this.southwest.hashCode() ^ 1000003) * 1000003) ^ this.northeast.hashCode();
    }
}
