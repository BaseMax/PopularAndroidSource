package com.mapbox.geojson;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import java.io.IOException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

public final class GeometryCollection implements Geometry, Serializable {
    private static final String TYPE = "GeometryCollection";
    private final BoundingBox bbox;
    private final List<Geometry> geometries;
    private final String type;

    static final class GsonTypeAdapter extends q<GeometryCollection> {
        private volatile q<BoundingBox> boundingBoxTypeAdapter;
        private final e gson;
        private volatile q<List<Geometry>> listGeometryAdapter;
        private volatile q<String> stringTypeAdapter;

        GsonTypeAdapter(e eVar) {
            this.gson = eVar;
        }

        public final void write(JsonWriter jsonWriter, GeometryCollection geometryCollection) throws IOException {
            if (geometryCollection == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("type");
            if (geometryCollection.type() == null) {
                jsonWriter.nullValue();
            } else {
                q<String> qVar = this.stringTypeAdapter;
                if (qVar == null) {
                    qVar = this.gson.getAdapter(String.class);
                    this.stringTypeAdapter = qVar;
                }
                qVar.write(jsonWriter, geometryCollection.type());
            }
            jsonWriter.name("bbox");
            if (geometryCollection.bbox() == null) {
                jsonWriter.nullValue();
            } else {
                q<BoundingBox> qVar2 = this.boundingBoxTypeAdapter;
                if (qVar2 == null) {
                    qVar2 = this.gson.getAdapter(BoundingBox.class);
                    this.boundingBoxTypeAdapter = qVar2;
                }
                qVar2.write(jsonWriter, geometryCollection.bbox());
            }
            jsonWriter.name("geometries");
            if (geometryCollection.geometries() == null) {
                jsonWriter.nullValue();
            } else {
                q<List<Geometry>> qVar3 = this.listGeometryAdapter;
                if (qVar3 == null) {
                    qVar3 = this.gson.getAdapter(a.getParameterized(List.class, Geometry.class));
                    this.listGeometryAdapter = qVar3;
                }
                qVar3.write(jsonWriter, geometryCollection.geometries());
            }
            jsonWriter.endObject();
        }

        public final GeometryCollection read(JsonReader jsonReader) throws IOException {
            String str = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            BoundingBox boundingBox = null;
            List list = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    char c = 65535;
                    int hashCode = nextName.hashCode();
                    if (hashCode != 3017257) {
                        if (hashCode != 3575610) {
                            if (hashCode == 203916432 && nextName.equals("geometries")) {
                                c = 2;
                            }
                        } else if (nextName.equals("type")) {
                            c = 0;
                        }
                    } else if (nextName.equals("bbox")) {
                        c = 1;
                    }
                    if (c == 0) {
                        q<String> qVar = this.stringTypeAdapter;
                        if (qVar == null) {
                            qVar = this.gson.getAdapter(String.class);
                            this.stringTypeAdapter = qVar;
                        }
                        str = qVar.read(jsonReader);
                    } else if (c == 1) {
                        q<BoundingBox> qVar2 = this.boundingBoxTypeAdapter;
                        if (qVar2 == null) {
                            qVar2 = this.gson.getAdapter(BoundingBox.class);
                            this.boundingBoxTypeAdapter = qVar2;
                        }
                        boundingBox = qVar2.read(jsonReader);
                    } else if (c != 2) {
                        jsonReader.skipValue();
                    } else {
                        q<List<Geometry>> qVar3 = this.listGeometryAdapter;
                        if (qVar3 == null) {
                            qVar3 = this.gson.getAdapter(a.getParameterized(List.class, Geometry.class));
                            this.listGeometryAdapter = qVar3;
                        }
                        list = qVar3.read(jsonReader);
                    }
                }
            }
            jsonReader.endObject();
            if (str == null) {
                str = GeometryCollection.TYPE;
            }
            return new GeometryCollection(str, boundingBox, list);
        }
    }

    public static GeometryCollection fromJson(String str) {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        fVar.registerTypeAdapterFactory(GeometryAdapterFactory.create());
        return (GeometryCollection) fVar.create().fromJson(str, GeometryCollection.class);
    }

    public static GeometryCollection fromGeometries(List<Geometry> list) {
        return new GeometryCollection(TYPE, null, list);
    }

    public static GeometryCollection fromGeometries(List<Geometry> list, BoundingBox boundingBox) {
        return new GeometryCollection(TYPE, boundingBox, list);
    }

    public static GeometryCollection fromGeometry(Geometry geometry) {
        return new GeometryCollection(TYPE, null, Arrays.asList(new Geometry[]{geometry}));
    }

    public static GeometryCollection fromGeometry(Geometry geometry, BoundingBox boundingBox) {
        return new GeometryCollection(TYPE, boundingBox, Arrays.asList(new Geometry[]{geometry}));
    }

    GeometryCollection(String str, BoundingBox boundingBox, List<Geometry> list) {
        if (str != null) {
            this.type = str;
            this.bbox = boundingBox;
            if (list != null) {
                this.geometries = list;
                return;
            }
            throw new NullPointerException("Null geometries");
        }
        throw new NullPointerException("Null type");
    }

    public final String type() {
        return this.type;
    }

    public final BoundingBox bbox() {
        return this.bbox;
    }

    public final List<Geometry> geometries() {
        return this.geometries;
    }

    public final String toJson() {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        fVar.registerTypeAdapterFactory(GeometryAdapterFactory.create());
        return fVar.create().toJson((Object) this);
    }

    public static q<GeometryCollection> typeAdapter(e eVar) {
        return new GsonTypeAdapter(eVar);
    }

    public final String toString() {
        return "GeometryCollection{type=" + this.type + ", bbox=" + this.bbox + ", geometries=" + this.geometries + "}";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof GeometryCollection) {
            GeometryCollection geometryCollection = (GeometryCollection) obj;
            if (this.type.equals(geometryCollection.type())) {
                BoundingBox boundingBox = this.bbox;
                if (boundingBox != null ? boundingBox.equals(geometryCollection.bbox()) : geometryCollection.bbox() == null) {
                    if (this.geometries.equals(geometryCollection.geometries())) {
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
        return ((hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003) ^ this.geometries.hashCode();
    }
}
