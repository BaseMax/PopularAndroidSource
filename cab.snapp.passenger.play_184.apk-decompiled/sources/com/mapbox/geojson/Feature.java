package com.mapbox.geojson;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.a.b;
import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.gson.BoundingBoxTypeAdapter;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import java.io.IOException;

public final class Feature implements GeoJson {
    private static final String TYPE = "Feature";
    @b(BoundingBoxTypeAdapter.class)
    private final BoundingBox bbox;
    private final Geometry geometry;
    private final String id;
    private final JsonObject properties;
    private final String type;

    static final class GsonTypeAdapter extends q<Feature> {
        private volatile q<BoundingBox> boundingBoxTypeAdapter;
        private volatile q<Geometry> geometryTypeAdapter;
        private final e gson;
        private volatile q<JsonObject> jsonObjectTypeAdapter;
        private volatile q<String> stringTypeAdapter;

        GsonTypeAdapter(e eVar) {
            this.gson = eVar;
        }

        public final void write(JsonWriter jsonWriter, Feature feature) throws IOException {
            if (feature == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("type");
            if (feature.type() == null) {
                jsonWriter.nullValue();
            } else {
                q<String> qVar = this.stringTypeAdapter;
                if (qVar == null) {
                    qVar = this.gson.getAdapter(String.class);
                    this.stringTypeAdapter = qVar;
                }
                qVar.write(jsonWriter, feature.type());
            }
            jsonWriter.name("bbox");
            if (feature.bbox() == null) {
                jsonWriter.nullValue();
            } else {
                q<BoundingBox> qVar2 = this.boundingBoxTypeAdapter;
                if (qVar2 == null) {
                    qVar2 = this.gson.getAdapter(BoundingBox.class);
                    this.boundingBoxTypeAdapter = qVar2;
                }
                qVar2.write(jsonWriter, feature.bbox());
            }
            jsonWriter.name("id");
            if (feature.id() == null) {
                jsonWriter.nullValue();
            } else {
                q<String> qVar3 = this.stringTypeAdapter;
                if (qVar3 == null) {
                    qVar3 = this.gson.getAdapter(String.class);
                    this.stringTypeAdapter = qVar3;
                }
                qVar3.write(jsonWriter, feature.id());
            }
            jsonWriter.name("geometry");
            if (feature.geometry() == null) {
                jsonWriter.nullValue();
            } else {
                q<Geometry> qVar4 = this.geometryTypeAdapter;
                if (qVar4 == null) {
                    qVar4 = this.gson.getAdapter(Geometry.class);
                    this.geometryTypeAdapter = qVar4;
                }
                qVar4.write(jsonWriter, feature.geometry());
            }
            jsonWriter.name("properties");
            if (feature.properties() == null) {
                jsonWriter.nullValue();
            } else {
                q<JsonObject> qVar5 = this.jsonObjectTypeAdapter;
                if (qVar5 == null) {
                    qVar5 = this.gson.getAdapter(JsonObject.class);
                    this.jsonObjectTypeAdapter = qVar5;
                }
                qVar5.write(jsonWriter, feature.properties());
            }
            jsonWriter.endObject();
        }

        public final Feature read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str = null;
            BoundingBox boundingBox = null;
            String str2 = null;
            Geometry geometry = null;
            JsonObject jsonObject = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    char c = 65535;
                    switch (nextName.hashCode()) {
                        case -926053069:
                            if (nextName.equals("properties")) {
                                c = 4;
                                break;
                            }
                            break;
                        case 3355:
                            if (nextName.equals("id")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 3017257:
                            if (nextName.equals("bbox")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 3575610:
                            if (nextName.equals("type")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 1846020210:
                            if (nextName.equals("geometry")) {
                                c = 3;
                                break;
                            }
                            break;
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
                    } else if (c == 2) {
                        q<String> qVar3 = this.stringTypeAdapter;
                        if (qVar3 == null) {
                            qVar3 = this.gson.getAdapter(String.class);
                            this.stringTypeAdapter = qVar3;
                        }
                        str2 = qVar3.read(jsonReader);
                    } else if (c == 3) {
                        q<Geometry> qVar4 = this.geometryTypeAdapter;
                        if (qVar4 == null) {
                            qVar4 = this.gson.getAdapter(Geometry.class);
                            this.geometryTypeAdapter = qVar4;
                        }
                        geometry = qVar4.read(jsonReader);
                    } else if (c != 4) {
                        jsonReader.skipValue();
                    } else {
                        q<JsonObject> qVar5 = this.jsonObjectTypeAdapter;
                        if (qVar5 == null) {
                            qVar5 = this.gson.getAdapter(JsonObject.class);
                            this.jsonObjectTypeAdapter = qVar5;
                        }
                        jsonObject = qVar5.read(jsonReader);
                    }
                }
            }
            jsonReader.endObject();
            Feature feature = new Feature(str, boundingBox, str2, geometry, jsonObject);
            return feature;
        }
    }

    public static Feature fromJson(String str) {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        fVar.registerTypeAdapterFactory(GeometryAdapterFactory.create());
        Feature feature = (Feature) fVar.create().fromJson(str, Feature.class);
        if (feature.properties() != null) {
            return feature;
        }
        Feature feature2 = new Feature(TYPE, feature.bbox(), feature.id(), feature.geometry(), new JsonObject());
        return feature2;
    }

    public static Feature fromGeometry(Geometry geometry2) {
        Feature feature = new Feature(TYPE, null, null, geometry2, new JsonObject());
        return feature;
    }

    public static Feature fromGeometry(Geometry geometry2, BoundingBox boundingBox) {
        Feature feature = new Feature(TYPE, boundingBox, null, geometry2, new JsonObject());
        return feature;
    }

    public static Feature fromGeometry(Geometry geometry2, JsonObject jsonObject) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        Feature feature = new Feature(TYPE, null, null, geometry2, jsonObject);
        return feature;
    }

    public static Feature fromGeometry(Geometry geometry2, JsonObject jsonObject, BoundingBox boundingBox) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        Feature feature = new Feature(TYPE, boundingBox, null, geometry2, jsonObject);
        return feature;
    }

    public static Feature fromGeometry(Geometry geometry2, JsonObject jsonObject, String str) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        Feature feature = new Feature(TYPE, null, str, geometry2, jsonObject);
        return feature;
    }

    public static Feature fromGeometry(Geometry geometry2, JsonObject jsonObject, String str, BoundingBox boundingBox) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        Feature feature = new Feature(TYPE, boundingBox, str, geometry2, jsonObject);
        return feature;
    }

    Feature(String str, BoundingBox boundingBox, String str2, Geometry geometry2, JsonObject jsonObject) {
        if (str != null) {
            this.type = str;
            this.bbox = boundingBox;
            this.id = str2;
            this.geometry = geometry2;
            this.properties = jsonObject;
            return;
        }
        throw new NullPointerException("Null type");
    }

    public final String type() {
        return this.type;
    }

    public final BoundingBox bbox() {
        return this.bbox;
    }

    public final String id() {
        return this.id;
    }

    public final Geometry geometry() {
        return this.geometry;
    }

    public final JsonObject properties() {
        return this.properties;
    }

    public final String toJson() {
        return new f().registerTypeAdapterFactory(GeoJsonAdapterFactory.create()).registerTypeAdapterFactory(GeometryAdapterFactory.create()).create().toJson((Object) properties().size() == 0 ? new Feature(TYPE, bbox(), id(), geometry(), null) : this);
    }

    public static q<Feature> typeAdapter(e eVar) {
        return new GsonTypeAdapter(eVar);
    }

    public final void addStringProperty(String str, String str2) {
        properties().addProperty(str, str2);
    }

    public final void addNumberProperty(String str, Number number) {
        properties().addProperty(str, number);
    }

    public final void addBooleanProperty(String str, Boolean bool) {
        properties().addProperty(str, bool);
    }

    public final void addCharacterProperty(String str, Character ch) {
        properties().addProperty(str, ch);
    }

    public final void addProperty(String str, JsonElement jsonElement) {
        properties().add(str, jsonElement);
    }

    public final String getStringProperty(String str) {
        JsonElement jsonElement = properties().get(str);
        if (jsonElement == null) {
            return null;
        }
        return jsonElement.getAsString();
    }

    public final Number getNumberProperty(String str) {
        JsonElement jsonElement = properties().get(str);
        if (jsonElement == null) {
            return null;
        }
        return jsonElement.getAsNumber();
    }

    public final Boolean getBooleanProperty(String str) {
        JsonElement jsonElement = properties().get(str);
        if (jsonElement == null) {
            return null;
        }
        return Boolean.valueOf(jsonElement.getAsBoolean());
    }

    public final Character getCharacterProperty(String str) {
        JsonElement jsonElement = properties().get(str);
        if (jsonElement == null) {
            return null;
        }
        return Character.valueOf(jsonElement.getAsCharacter());
    }

    public final JsonElement getProperty(String str) {
        return properties().get(str);
    }

    public final JsonElement removeProperty(String str) {
        return properties().remove(str);
    }

    public final boolean hasProperty(String str) {
        return properties().has(str);
    }

    public final boolean hasNonNullValueForProperty(String str) {
        return hasProperty(str) && !getProperty(str).isJsonNull();
    }

    public final String toString() {
        return "Feature{type=" + this.type + ", bbox=" + this.bbox + ", id=" + this.id + ", geometry=" + this.geometry + ", properties=" + this.properties + "}";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (this.type.equals(feature.type())) {
                BoundingBox boundingBox = this.bbox;
                if (boundingBox != null ? boundingBox.equals(feature.bbox()) : feature.bbox() == null) {
                    String str = this.id;
                    if (str != null ? str.equals(feature.id()) : feature.id() == null) {
                        Geometry geometry2 = this.geometry;
                        if (geometry2 != null ? geometry2.equals(feature.geometry()) : feature.geometry() == null) {
                            JsonObject jsonObject = this.properties;
                            return jsonObject != null ? jsonObject.equals(feature.properties()) : feature.properties() == null;
                        }
                    }
                }
            }
        }
    }

    public final int hashCode() {
        int hashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        BoundingBox boundingBox = this.bbox;
        int i = 0;
        int hashCode2 = (hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003;
        String str = this.id;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        Geometry geometry2 = this.geometry;
        int hashCode4 = (hashCode3 ^ (geometry2 == null ? 0 : geometry2.hashCode())) * 1000003;
        JsonObject jsonObject = this.properties;
        if (jsonObject != null) {
            i = jsonObject.hashCode();
        }
        return hashCode4 ^ i;
    }
}
