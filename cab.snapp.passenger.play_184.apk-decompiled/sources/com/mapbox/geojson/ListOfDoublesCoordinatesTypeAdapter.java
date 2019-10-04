package com.mapbox.geojson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.List;

class ListOfDoublesCoordinatesTypeAdapter extends BaseCoordinatesTypeAdapter<List<Double>> {
    ListOfDoublesCoordinatesTypeAdapter() {
    }

    public void write(JsonWriter jsonWriter, List<Double> list) throws IOException {
        writePointList(jsonWriter, list);
    }

    public List<Double> read(JsonReader jsonReader) throws IOException {
        return readPointList(jsonReader);
    }
}
