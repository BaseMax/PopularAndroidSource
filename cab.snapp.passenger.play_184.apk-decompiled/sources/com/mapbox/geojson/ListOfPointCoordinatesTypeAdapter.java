package com.mapbox.geojson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.exception.GeoJsonException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

class ListOfPointCoordinatesTypeAdapter extends BaseCoordinatesTypeAdapter<List<Point>> {
    ListOfPointCoordinatesTypeAdapter() {
    }

    public void write(JsonWriter jsonWriter, List<Point> list) throws IOException {
        if (list == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        for (Point writePoint : list) {
            writePoint(jsonWriter, writePoint);
        }
        jsonWriter.endArray();
    }

    public List<Point> read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            throw new NullPointerException();
        } else if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            ArrayList arrayList = new ArrayList();
            jsonReader.beginArray();
            while (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                arrayList.add(readPoint(jsonReader));
            }
            jsonReader.endArray();
            return arrayList;
        } else {
            throw new GeoJsonException("coordinates should be non-null array of array of double");
        }
    }
}
