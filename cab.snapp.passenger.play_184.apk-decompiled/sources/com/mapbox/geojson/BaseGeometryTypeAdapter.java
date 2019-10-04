package com.mapbox.geojson;

import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.exception.GeoJsonException;
import com.mapbox.geojson.gson.BoundingBoxTypeAdapter;
import java.io.IOException;

abstract class BaseGeometryTypeAdapter<G, T> extends q<G> {
    private volatile q<BoundingBox> boundingBoxAdapter = new BoundingBoxTypeAdapter();
    private volatile q<T> coordinatesAdapter;
    private final e gson;
    private volatile q<String> stringAdapter;

    /* access modifiers changed from: package-private */
    public abstract CoordinateContainer<T> createCoordinateContainer(String str, BoundingBox boundingBox, T t);

    BaseGeometryTypeAdapter(e eVar, q<T> qVar) {
        this.gson = eVar;
        this.coordinatesAdapter = qVar;
    }

    public void writeCoordinateContainer(JsonWriter jsonWriter, CoordinateContainer<T> coordinateContainer) throws IOException {
        if (coordinateContainer == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginObject();
        jsonWriter.name("type");
        if (coordinateContainer.type() == null) {
            jsonWriter.nullValue();
        } else {
            q<String> qVar = this.stringAdapter;
            if (qVar == null) {
                qVar = this.gson.getAdapter(String.class);
                this.stringAdapter = qVar;
            }
            qVar.write(jsonWriter, coordinateContainer.type());
        }
        jsonWriter.name("bbox");
        if (coordinateContainer.bbox() == null) {
            jsonWriter.nullValue();
        } else {
            q<BoundingBox> qVar2 = this.boundingBoxAdapter;
            if (qVar2 == null) {
                qVar2 = this.gson.getAdapter(BoundingBox.class);
                this.boundingBoxAdapter = qVar2;
            }
            qVar2.write(jsonWriter, coordinateContainer.bbox());
        }
        jsonWriter.name("coordinates");
        if (coordinateContainer.coordinates() == null) {
            jsonWriter.nullValue();
        } else {
            q<T> qVar3 = this.coordinatesAdapter;
            if (qVar3 != null) {
                qVar3.write(jsonWriter, coordinateContainer.coordinates());
            } else {
                throw new GeoJsonException("Coordinates type adapter is null");
            }
        }
        jsonWriter.endObject();
    }

    public CoordinateContainer<T> readCoordinateContainer(JsonReader jsonReader) throws IOException {
        String str = null;
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        jsonReader.beginObject();
        BoundingBox boundingBox = null;
        T t = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
            } else {
                char c = 65535;
                int hashCode = nextName.hashCode();
                if (hashCode != 3017257) {
                    if (hashCode != 3575610) {
                        if (hashCode == 1871919611 && nextName.equals("coordinates")) {
                            c = 2;
                        }
                    } else if (nextName.equals("type")) {
                        c = 0;
                    }
                } else if (nextName.equals("bbox")) {
                    c = 1;
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
                    q<T> qVar3 = this.coordinatesAdapter;
                    if (qVar3 != null) {
                        t = qVar3.read(jsonReader);
                    } else {
                        throw new GeoJsonException("Coordinates type adapter is null");
                    }
                }
            }
        }
        jsonReader.endObject();
        return createCoordinateContainer(str, boundingBox, t);
    }
}
