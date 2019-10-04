package com.mapbox.geojson;

import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.exception.GeoJsonException;
import com.mapbox.geojson.shifter.CoordinateShifterManager;
import com.mapbox.geojson.utils.GeoJsonUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

abstract class BaseCoordinatesTypeAdapter<T> extends q<T> {
    BaseCoordinatesTypeAdapter() {
    }

    /* access modifiers changed from: protected */
    public void writePoint(JsonWriter jsonWriter, Point point) throws IOException {
        writePointList(jsonWriter, point.coordinates());
    }

    /* access modifiers changed from: protected */
    public Point readPoint(JsonReader jsonReader) throws IOException {
        List<Double> readPointList = readPointList(jsonReader);
        if (readPointList != null && readPointList.size() > 1) {
            return new Point("Point", null, readPointList);
        }
        throw new GeoJsonException(" Point coordinates should be non-null double array");
    }

    /* access modifiers changed from: protected */
    public void writePointList(JsonWriter jsonWriter, List<Double> list) throws IOException {
        if (list != null) {
            jsonWriter.beginArray();
            List<Double> unshiftPoint = CoordinateShifterManager.getCoordinateShifter().unshiftPoint(list);
            jsonWriter.value(GeoJsonUtils.trim(unshiftPoint.get(0).doubleValue()));
            jsonWriter.value(GeoJsonUtils.trim(unshiftPoint.get(1).doubleValue()));
            if (list.size() > 2) {
                jsonWriter.value((Number) unshiftPoint.get(2));
            }
            jsonWriter.endArray();
        }
    }

    /* access modifiers changed from: protected */
    public List<Double> readPointList(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() != JsonToken.NULL) {
            ArrayList arrayList = new ArrayList();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                arrayList.add(Double.valueOf(jsonReader.nextDouble()));
            }
            jsonReader.endArray();
            if (arrayList.size() > 2) {
                return CoordinateShifterManager.getCoordinateShifter().shiftLonLatAlt(((Double) arrayList.get(0)).doubleValue(), ((Double) arrayList.get(1)).doubleValue(), ((Double) arrayList.get(2)).doubleValue());
            }
            return CoordinateShifterManager.getCoordinateShifter().shiftLonLat(((Double) arrayList.get(0)).doubleValue(), ((Double) arrayList.get(1)).doubleValue());
        }
        throw new NullPointerException();
    }
}
