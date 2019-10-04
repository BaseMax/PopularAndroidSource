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
import java.util.Arrays;
import java.util.List;

public final class MultiLineString implements CoordinateContainer<List<List<Point>>>, Serializable {
    private static final String TYPE = "MultiLineString";
    private final BoundingBox bbox;
    private final List<List<Point>> coordinates;
    private final String type;

    static final class GsonTypeAdapter extends BaseGeometryTypeAdapter<MultiLineString, List<List<Point>>> {
        GsonTypeAdapter(e eVar) {
            super(eVar, new ListOfListOfPointCoordinatesTypeAdapter());
        }

        public final void write(JsonWriter jsonWriter, MultiLineString multiLineString) throws IOException {
            writeCoordinateContainer(jsonWriter, multiLineString);
        }

        public final MultiLineString read(JsonReader jsonReader) throws IOException {
            return (MultiLineString) readCoordinateContainer(jsonReader);
        }

        /* access modifiers changed from: package-private */
        public final CoordinateContainer<List<List<Point>>> createCoordinateContainer(String str, BoundingBox boundingBox, List<List<Point>> list) {
            if (str == null) {
                str = MultiLineString.TYPE;
            }
            return new MultiLineString(str, boundingBox, list);
        }
    }

    public static MultiLineString fromJson(String str) {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        return (MultiLineString) fVar.create().fromJson(str, MultiLineString.class);
    }

    public static MultiLineString fromLineStrings(List<LineString> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (LineString coordinates2 : list) {
            arrayList.add(coordinates2.coordinates());
        }
        return new MultiLineString(TYPE, null, arrayList);
    }

    public static MultiLineString fromLineStrings(List<LineString> list, BoundingBox boundingBox) {
        ArrayList arrayList = new ArrayList(list.size());
        for (LineString coordinates2 : list) {
            arrayList.add(coordinates2.coordinates());
        }
        return new MultiLineString(TYPE, boundingBox, arrayList);
    }

    public static MultiLineString fromLineString(LineString lineString) {
        return new MultiLineString(TYPE, null, Arrays.asList(new List[]{lineString.coordinates()}));
    }

    public static MultiLineString fromLineString(LineString lineString, BoundingBox boundingBox) {
        return new MultiLineString(TYPE, boundingBox, Arrays.asList(new List[]{lineString.coordinates()}));
    }

    public static MultiLineString fromLngLats(List<List<Point>> list) {
        return new MultiLineString(TYPE, null, list);
    }

    public static MultiLineString fromLngLats(List<List<Point>> list, BoundingBox boundingBox) {
        return new MultiLineString(TYPE, boundingBox, list);
    }

    static MultiLineString fromLngLats(double[][][] dArr) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (int i = 0; i < dArr.length; i++) {
            ArrayList arrayList2 = new ArrayList(dArr[i].length);
            for (double[] fromLngLat : dArr[i]) {
                arrayList2.add(Point.fromLngLat(fromLngLat));
            }
            arrayList.add(arrayList2);
        }
        return new MultiLineString(TYPE, null, arrayList);
    }

    MultiLineString(String str, BoundingBox boundingBox, List<List<Point>> list) {
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

    public final List<List<Point>> coordinates() {
        return this.coordinates;
    }

    public final List<LineString> lineStrings() {
        List<List> coordinates2 = coordinates();
        ArrayList arrayList = new ArrayList(coordinates2.size());
        for (List fromLngLats : coordinates2) {
            arrayList.add(LineString.fromLngLats((List<Point>) fromLngLats));
        }
        return arrayList;
    }

    public final String toJson() {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        return fVar.create().toJson((Object) this);
    }

    public static q<MultiLineString> typeAdapter(e eVar) {
        return new GsonTypeAdapter(eVar);
    }

    public final String toString() {
        return "MultiLineString{type=" + this.type + ", bbox=" + this.bbox + ", coordinates=" + this.coordinates + "}";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof MultiLineString) {
            MultiLineString multiLineString = (MultiLineString) obj;
            if (this.type.equals(multiLineString.type())) {
                BoundingBox boundingBox = this.bbox;
                if (boundingBox != null ? boundingBox.equals(multiLineString.bbox()) : multiLineString.bbox() == null) {
                    if (this.coordinates.equals(multiLineString.coordinates())) {
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
