package com.mapbox.geojson;

import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import com.mapbox.geojson.utils.PolylineUtils;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class LineString implements CoordinateContainer<List<Point>>, Serializable {
    private static final String TYPE = "LineString";
    private final BoundingBox bbox;
    private final List<Point> coordinates;
    private final String type;

    static final class GsonTypeAdapter extends BaseGeometryTypeAdapter<LineString, List<Point>> {
        GsonTypeAdapter(e eVar) {
            super(eVar, new ListOfPointCoordinatesTypeAdapter());
        }

        public final void write(JsonWriter jsonWriter, LineString lineString) throws IOException {
            writeCoordinateContainer(jsonWriter, lineString);
        }

        public final LineString read(JsonReader jsonReader) throws IOException {
            return (LineString) readCoordinateContainer(jsonReader);
        }

        /* access modifiers changed from: package-private */
        public final CoordinateContainer<List<Point>> createCoordinateContainer(String str, BoundingBox boundingBox, List<Point> list) {
            if (str == null) {
                str = LineString.TYPE;
            }
            return new LineString(str, boundingBox, list);
        }
    }

    public static LineString fromJson(String str) {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        return (LineString) fVar.create().fromJson(str, LineString.class);
    }

    public static LineString fromLngLats(MultiPoint multiPoint) {
        return new LineString(TYPE, null, multiPoint.coordinates());
    }

    public static LineString fromLngLats(List<Point> list) {
        return new LineString(TYPE, null, list);
    }

    public static LineString fromLngLats(List<Point> list, BoundingBox boundingBox) {
        return new LineString(TYPE, boundingBox, list);
    }

    public static LineString fromLngLats(MultiPoint multiPoint, BoundingBox boundingBox) {
        return new LineString(TYPE, boundingBox, multiPoint.coordinates());
    }

    LineString(String str, BoundingBox boundingBox, List<Point> list) {
        if (str != null) {
            this.type = str;
            this.bbox = boundingBox;
            if (list != null) {
                this.coordinates = list;
                return;
            }
            throw new NullPointerException("Null coordinates");
        }
        throw new NullPointerException("Null type");
    }

    static LineString fromLngLats(double[][] dArr) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double[] fromLngLat : dArr) {
            arrayList.add(Point.fromLngLat(fromLngLat));
        }
        return fromLngLats((List<Point>) arrayList);
    }

    public static LineString fromPolyline(String str, int i) {
        return fromLngLats(PolylineUtils.decode(str, i), (BoundingBox) null);
    }

    public final String type() {
        return this.type;
    }

    public final BoundingBox bbox() {
        return this.bbox;
    }

    public final List<Point> coordinates() {
        return this.coordinates;
    }

    public final String toJson() {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        return fVar.create().toJson((Object) this);
    }

    public final String toPolyline(int i) {
        return PolylineUtils.encode((List<Point>) coordinates(), i);
    }

    public static q<LineString> typeAdapter(e eVar) {
        return new GsonTypeAdapter(eVar);
    }

    public final String toString() {
        return "LineString{type=" + this.type + ", bbox=" + this.bbox + ", coordinates=" + this.coordinates + "}";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LineString) {
            LineString lineString = (LineString) obj;
            if (this.type.equals(lineString.type())) {
                BoundingBox boundingBox = this.bbox;
                if (boundingBox != null ? boundingBox.equals(lineString.bbox()) : lineString.bbox() == null) {
                    if (this.coordinates.equals(lineString.coordinates())) {
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
