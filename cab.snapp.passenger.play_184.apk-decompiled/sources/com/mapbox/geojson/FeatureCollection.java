package com.mapbox.geojson;

import com.google.gson.a.b;
import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.gson.BoundingBoxTypeAdapter;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import io.fabric.sdk.android.services.settings.t;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public final class FeatureCollection implements GeoJson {
    private static final String TYPE = "FeatureCollection";
    @b(BoundingBoxTypeAdapter.class)
    private final BoundingBox bbox;
    private final List<Feature> features;
    private final String type;

    static final class GsonTypeAdapter extends q<FeatureCollection> {
        private volatile q<BoundingBox> boundingBoxAdapter;
        private final e gson;
        private volatile q<List<Feature>> listFeatureAdapter;
        private volatile q<String> stringAdapter;

        GsonTypeAdapter(e eVar) {
            this.gson = eVar;
        }

        public final void write(JsonWriter jsonWriter, FeatureCollection featureCollection) throws IOException {
            if (featureCollection == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("type");
            if (featureCollection.type() == null) {
                jsonWriter.nullValue();
            } else {
                q<String> qVar = this.stringAdapter;
                if (qVar == null) {
                    qVar = this.gson.getAdapter(String.class);
                    this.stringAdapter = qVar;
                }
                qVar.write(jsonWriter, featureCollection.type());
            }
            jsonWriter.name("bbox");
            if (featureCollection.bbox() == null) {
                jsonWriter.nullValue();
            } else {
                q<BoundingBox> qVar2 = this.boundingBoxAdapter;
                if (qVar2 == null) {
                    qVar2 = this.gson.getAdapter(BoundingBox.class);
                    this.boundingBoxAdapter = qVar2;
                }
                qVar2.write(jsonWriter, featureCollection.bbox());
            }
            jsonWriter.name(t.FEATURES_KEY);
            if (featureCollection.features() == null) {
                jsonWriter.nullValue();
            } else {
                q<List<Feature>> qVar3 = this.listFeatureAdapter;
                if (qVar3 == null) {
                    qVar3 = this.gson.getAdapter(a.getParameterized(List.class, Feature.class));
                    this.listFeatureAdapter = qVar3;
                }
                qVar3.write(jsonWriter, featureCollection.features());
            }
            jsonWriter.endObject();
        }

        public final FeatureCollection read(JsonReader jsonReader) throws IOException {
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
                    if (hashCode != -290659267) {
                        if (hashCode != 3017257) {
                            if (hashCode == 3575610 && nextName.equals("type")) {
                                c = 0;
                            }
                        } else if (nextName.equals("bbox")) {
                            c = 1;
                        }
                    } else if (nextName.equals(t.FEATURES_KEY)) {
                        c = 2;
                    }
                    if (c == 0) {
                        q<String> qVar = this.stringAdapter;
                        if (qVar == null) {
                            qVar = this.gson.getAdapter(String.class);
                            this.stringAdapter = qVar;
                        }
                        str = qVar.read(jsonReader);
                    } else if (c == 1) {
                        q<BoundingBox> qVar2 = this.boundingBoxAdapter;
                        if (qVar2 == null) {
                            qVar2 = this.gson.getAdapter(BoundingBox.class);
                            this.boundingBoxAdapter = qVar2;
                        }
                        boundingBox = qVar2.read(jsonReader);
                    } else if (c != 2) {
                        jsonReader.skipValue();
                    } else {
                        q<List<Feature>> qVar3 = this.listFeatureAdapter;
                        if (qVar3 == null) {
                            qVar3 = this.gson.getAdapter(a.getParameterized(List.class, Feature.class));
                            this.listFeatureAdapter = qVar3;
                        }
                        list = qVar3.read(jsonReader);
                    }
                }
            }
            jsonReader.endObject();
            return new FeatureCollection(str, boundingBox, list);
        }
    }

    public static FeatureCollection fromJson(String str) {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        fVar.registerTypeAdapterFactory(GeometryAdapterFactory.create());
        return (FeatureCollection) fVar.create().fromJson(str, FeatureCollection.class);
    }

    public static FeatureCollection fromFeatures(Feature[] featureArr) {
        return new FeatureCollection(TYPE, null, Arrays.asList(featureArr));
    }

    public static FeatureCollection fromFeatures(List<Feature> list) {
        return new FeatureCollection(TYPE, null, list);
    }

    public static FeatureCollection fromFeatures(Feature[] featureArr, BoundingBox boundingBox) {
        return new FeatureCollection(TYPE, boundingBox, Arrays.asList(featureArr));
    }

    public static FeatureCollection fromFeatures(List<Feature> list, BoundingBox boundingBox) {
        return new FeatureCollection(TYPE, boundingBox, list);
    }

    public static FeatureCollection fromFeature(Feature feature) {
        return new FeatureCollection(TYPE, null, Arrays.asList(new Feature[]{feature}));
    }

    public static FeatureCollection fromFeature(Feature feature, BoundingBox boundingBox) {
        return new FeatureCollection(TYPE, boundingBox, Arrays.asList(new Feature[]{feature}));
    }

    FeatureCollection(String str, BoundingBox boundingBox, List<Feature> list) {
        if (str != null) {
            this.type = str;
            this.bbox = boundingBox;
            this.features = list;
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

    public final List<Feature> features() {
        return this.features;
    }

    public final String toJson() {
        f fVar = new f();
        fVar.registerTypeAdapterFactory(GeoJsonAdapterFactory.create());
        fVar.registerTypeAdapterFactory(GeometryAdapterFactory.create());
        return fVar.create().toJson((Object) this);
    }

    public static q<FeatureCollection> typeAdapter(e eVar) {
        return new GsonTypeAdapter(eVar);
    }

    public final String toString() {
        return "FeatureCollection{type=" + this.type + ", bbox=" + this.bbox + ", features=" + this.features + "}";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FeatureCollection) {
            FeatureCollection featureCollection = (FeatureCollection) obj;
            if (this.type.equals(featureCollection.type())) {
                BoundingBox boundingBox = this.bbox;
                if (boundingBox != null ? boundingBox.equals(featureCollection.bbox()) : featureCollection.bbox() == null) {
                    List<Feature> list = this.features;
                    return list != null ? list.equals(featureCollection.features()) : featureCollection.features() == null;
                }
            }
        }
    }

    public final int hashCode() {
        int hashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        BoundingBox boundingBox = this.bbox;
        int i = 0;
        int hashCode2 = (hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003;
        List<Feature> list = this.features;
        if (list != null) {
            i = list.hashCode();
        }
        return hashCode2 ^ i;
    }
}
