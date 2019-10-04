package com.mapbox.geojson;

import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class MultiPoint implements CoordinateContainer<List<Point>>, Serializable {
    private static final String TYPE = "MultiPoint";
    private final BoundingBox bbox;
    private final List<Point> coordinates;
    private final String type;

    static final class GsonTypeAdapter extends BaseGeometryTypeAdapter<MultiPoint, List<Point>> {
        GsonTypeAdapter(e eVar) {
            super(eVar, new ListOfPointCoordinatesTypeAdapter());
        }

        public final void write(JsonWriter jsonWriter, MultiPoint multiPoint) throws IOException {
            writeCoordinateContainer(jsonWriter, multiPoint);
        }

        public final MultiPoint read(JsonReader jsonReader) throws IOException {
            return (MultiPoint) readCoordinateContainer(jsonReader);
        }

        /* access modifiers changed from: package-private */
        public final CoordinateContainer<List<Point>> createCoordinateContainer(String str, BoundingBox boundingBox, List<Point> list) {
            if (str == null) {
                str = MultiPoint.TYPE;
            }
            return new MultiPoint(str, boundingBox, list);
        }
    }

    public static MultiPoint fromJson(String str) {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        return (MultiPoint) fVar.create().fromJson(str, MultiPoint.class);
    }

    public static MultiPoint fromLngLats(List<Point> list) {
        return new MultiPoint(TYPE, null, list);
    }

    public static MultiPoint fromLngLats(List<Point> list, BoundingBox boundingBox) {
        return new MultiPoint(TYPE, boundingBox, list);
    }

    static MultiPoint fromLngLats(double[][] dArr) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double[] fromLngLat : dArr) {
            arrayList.add(Point.fromLngLat(fromLngLat));
        }
        return new MultiPoint(TYPE, null, arrayList);
    }

    MultiPoint(String str, BoundingBox boundingBox, List<Point> list) {
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

    public static q<MultiPoint> typeAdapter(e eVar) {
        return new GsonTypeAdapter(eVar);
    }

    public final String toString() {
        return "MultiPoint{type=" + this.type + ", bbox=" + this.bbox + ", coordinates=" + this.coordinates + "}";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof MultiPoint) {
            MultiPoint multiPoint = (MultiPoint) obj;
            if (this.type.equals(multiPoint.type())) {
                BoundingBox boundingBox = this.bbox;
                if (boundingBox != null ? boundingBox.equals(multiPoint.bbox()) : multiPoint.bbox() == null) {
                    if (this.coordinates.equals(multiPoint.coordinates())) {
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
