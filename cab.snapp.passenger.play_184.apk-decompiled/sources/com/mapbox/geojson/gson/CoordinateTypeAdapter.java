package com.mapbox.geojson.gson;

import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.shifter.CoordinateShifterManager;
import com.mapbox.geojson.utils.GeoJsonUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public class CoordinateTypeAdapter extends q<List<Double>> {
    public void write(JsonWriter jsonWriter, List<Double> list) throws IOException {
        jsonWriter.beginArray();
        List<Double> unshiftPoint = CoordinateShifterManager.getCoordinateShifter().unshiftPoint(list);
        jsonWriter.value(GeoJsonUtils.trim(unshiftPoint.get(0).doubleValue()));
        jsonWriter.value(GeoJsonUtils.trim(unshiftPoint.get(1).doubleValue()));
        if (list.size() > 2) {
            jsonWriter.value((Number) unshiftPoint.get(2));
        }
        jsonWriter.endArray();
    }

    public List<Double> read(JsonReader jsonReader) throws IOException {
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
}
