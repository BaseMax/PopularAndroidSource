package com.mapbox.geojson;

import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import com.mapbox.geojson.shifter.CoordinateShifterManager;
import java.io.IOException;
import java.io.Serializable;
import java.util.List;

public final class Point implements CoordinateContainer<List<Double>>, Serializable {
    private static final String TYPE = "Point";
    private final BoundingBox bbox;
    private final List<Double> coordinates;
    private final String type;

    static final class GsonTypeAdapter extends BaseGeometryTypeAdapter<Point, List<Double>> {
        GsonTypeAdapter(e eVar) {
            super(eVar, new ListOfDoublesCoordinatesTypeAdapter());
        }

        public final void write(JsonWriter jsonWriter, Point point) throws IOException {
            writeCoordinateContainer(jsonWriter, point);
        }

        public final Point read(JsonReader jsonReader) throws IOException {
            return (Point) readCoordinateContainer(jsonReader);
        }

        /* access modifiers changed from: package-private */
        public final CoordinateContainer<List<Double>> createCoordinateContainer(String str, BoundingBox boundingBox, List<Double> list) {
            if (str == null) {
                str = Point.TYPE;
            }
            return new Point(str, boundingBox, list);
        }
    }

    public static Point fromJson(String str) {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        return (Point) fVar.create().fromJson(str, Point.class);
    }

    public static Point fromLngLat(double d, double d2) {
        return new Point(TYPE, null, CoordinateShifterManager.getCoordinateShifter().shiftLonLat(d, d2));
    }

    public static Point fromLngLat(double d, double d2, BoundingBox boundingBox) {
        return new Point(TYPE, boundingBox, CoordinateShifterManager.getCoordinateShifter().shiftLonLat(d, d2));
    }

    public static Point fromLngLat(double d, double d2, double d3) {
        return new Point(TYPE, null, CoordinateShifterManager.getCoordinateShifter().shiftLonLatAlt(d, d2, d3));
    }

    public static Point fromLngLat(double d, double d2, double d3, BoundingBox boundingBox) {
        return new Point(TYPE, boundingBox, CoordinateShifterManager.getCoordinateShifter().shiftLonLatAlt(d, d2, d3));
    }

    static Point fromLngLat(double[] dArr) {
        if (dArr.length == 2) {
            return fromLngLat(dArr[0], dArr[1]);
        }
        if (dArr.length > 2) {
            return fromLngLat(dArr[0], dArr[1], dArr[2]);
        }
        return null;
    }

    Point(String str, BoundingBox boundingBox, List<Double> list) {
        if (str != null) {
            this.type = str;
            this.bbox = boundingBox;
            if (list == null || list.size() == 0) {
                throw new NullPointerException("Null coordinates");
            }
            this.coordinates = list;
            return;
        }
        throw new NullPointerException("Null type");
    }

    public final double longitude() {
        return ((Double) coordinates().get(0)).doubleValue();
    }

    public final double latitude() {
        return ((Double) coordinates().get(1)).doubleValue();
    }

    public final double altitude() {
        if (coordinates().size() < 3) {
            return Double.NaN;
        }
        return ((Double) coordinates().get(2)).doubleValue();
    }

    public final boolean hasAltitude() {
        return !Double.isNaN(altitude());
    }

    public final String type() {
        return this.type;
    }

    public final BoundingBox bbox() {
        return this.bbox;
    }

    public final List<Double> coordinates() {
        return this.coordinates;
    }

    public final String toJson() {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        return fVar.create().toJson((Object) this);
    }

    public static q<Point> typeAdapter(e eVar) {
        return new GsonTypeAdapter(eVar);
    }

    public final String toString() {
        return "Point{type=" + this.type + ", bbox=" + this.bbox + ", coordinates=" + this.coordinates + "}";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Point) {
            Point point = (Point) obj;
            if (this.type.equals(point.type())) {
                BoundingBox boundingBox = this.bbox;
                if (boundingBox != null ? boundingBox.equals(point.bbox()) : point.bbox() == null) {
                    if (this.coordinates.equals(point.coordinates())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        BoundingBox boundingBox = this.bbox;
        return ((hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003) ^ this.coordinates.hashCode();
    }
}
