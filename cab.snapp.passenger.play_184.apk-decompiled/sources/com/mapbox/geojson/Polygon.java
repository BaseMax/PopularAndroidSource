package com.mapbox.geojson;

import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.exception.GeoJsonException;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class Polygon implements CoordinateContainer<List<List<Point>>>, Serializable {
    private static final String TYPE = "Polygon";
    private final BoundingBox bbox;
    private final List<List<Point>> coordinates;
    private final String type;

    static final class GsonTypeAdapter extends BaseGeometryTypeAdapter<Polygon, List<List<Point>>> {
        GsonTypeAdapter(e eVar) {
            super(eVar, new ListOfListOfPointCoordinatesTypeAdapter());
        }

        public final void write(JsonWriter jsonWriter, Polygon polygon) throws IOException {
            writeCoordinateContainer(jsonWriter, polygon);
        }

        public final Polygon read(JsonReader jsonReader) throws IOException {
            return (Polygon) readCoordinateContainer(jsonReader);
        }

        /* access modifiers changed from: package-private */
        public final CoordinateContainer<List<List<Point>>> createCoordinateContainer(String str, BoundingBox boundingBox, List<List<Point>> list) {
            if (str == null) {
                str = Polygon.TYPE;
            }
            return new Polygon(str, boundingBox, list);
        }
    }

    public static Polygon fromJson(String str) {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        return (Polygon) fVar.create().fromJson(str, Polygon.class);
    }

    public static Polygon fromLngLats(List<List<Point>> list) {
        return new Polygon(TYPE, null, list);
    }

    public static Polygon fromLngLats(List<List<Point>> list, BoundingBox boundingBox) {
        return new Polygon(TYPE, boundingBox, list);
    }

    static Polygon fromLngLats(double[][][] dArr) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double[][] dArr2 : dArr) {
            ArrayList arrayList2 = new ArrayList(dArr2.length);
            for (double[] fromLngLat : dArr2) {
                arrayList2.add(Point.fromLngLat(fromLngLat));
            }
            arrayList.add(arrayList2);
        }
        return new Polygon(TYPE, null, arrayList);
    }

    public static Polygon fromOuterInner(LineString lineString, LineString... lineStringArr) {
        isLinearRing(lineString);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lineString.coordinates());
        if (lineStringArr == null) {
            return new Polygon(TYPE, null, arrayList);
        }
        for (LineString lineString2 : lineStringArr) {
            isLinearRing(lineString2);
            arrayList.add(lineString2.coordinates());
        }
        return new Polygon(TYPE, null, arrayList);
    }

    public static Polygon fromOuterInner(LineString lineString, BoundingBox boundingBox, LineString... lineStringArr) {
        isLinearRing(lineString);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lineString.coordinates());
        if (lineStringArr == null) {
            return new Polygon(TYPE, boundingBox, arrayList);
        }
        for (LineString lineString2 : lineStringArr) {
            isLinearRing(lineString2);
            arrayList.add(lineString2.coordinates());
        }
        return new Polygon(TYPE, boundingBox, arrayList);
    }

    public static Polygon fromOuterInner(LineString lineString, List<LineString> list) {
        isLinearRing(lineString);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lineString.coordinates());
        if (list == null || list.isEmpty()) {
            return new Polygon(TYPE, null, arrayList);
        }
        for (LineString next : list) {
            isLinearRing(next);
            arrayList.add(next.coordinates());
        }
        return new Polygon(TYPE, null, arrayList);
    }

    public static Polygon fromOuterInner(LineString lineString, BoundingBox boundingBox, List<LineString> list) {
        isLinearRing(lineString);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lineString.coordinates());
        if (list == null) {
            return new Polygon(TYPE, boundingBox, arrayList);
        }
        for (LineString next : list) {
            isLinearRing(next);
            arrayList.add(next.coordinates());
        }
        return new Polygon(TYPE, boundingBox, arrayList);
    }

    Polygon(String str, BoundingBox boundingBox, List<List<Point>> list) {
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

    public final LineString outer() {
        return LineString.fromLngLats((List<Point>) (List) coordinates().get(0));
    }

    public final List<LineString> inner() {
        List coordinates2 = coordinates();
        if (coordinates2.size() <= 1) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(coordinates2.size() - 1);
        for (List fromLngLats : coordinates2.subList(1, coordinates2.size())) {
            arrayList.add(LineString.fromLngLats((List<Point>) fromLngLats));
        }
        return arrayList;
    }

    public final String type() {
        return this.type;
    }

    public final BoundingBox bbox() {
        return this.bbox;
    }

    public final List<List<Point>> coordinates() {
        return this.coordinates;
    }

    public final String toJson() {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        return fVar.create().toJson((Object) this);
    }

    public static q<Polygon> typeAdapter(e eVar) {
        return new GsonTypeAdapter(eVar);
    }

    private static boolean isLinearRing(LineString lineString) {
        if (lineString.coordinates().size() < 4) {
            throw new GeoJsonException("LinearRings need to be made up of 4 or more coordinates.");
        } else if (((Point) lineString.coordinates().get(0)).equals(lineString.coordinates().get(lineString.coordinates().size() - 1))) {
            return true;
        } else {
            throw new GeoJsonException("LinearRings require first and last coordinate to be identical.");
        }
    }

    public final String toString() {
        return "Polygon{type=" + this.type + ", bbox=" + this.bbox + ", coordinates=" + this.coordinates + "}";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Polygon) {
            Polygon polygon = (Polygon) obj;
            if (this.type.equals(polygon.type())) {
                BoundingBox boundingBox = this.bbox;
                if (boundingBox != null ? boundingBox.equals(polygon.bbox()) : polygon.bbox() == null) {
                    if (this.coordinates.equals(polygon.coordinates())) {
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
