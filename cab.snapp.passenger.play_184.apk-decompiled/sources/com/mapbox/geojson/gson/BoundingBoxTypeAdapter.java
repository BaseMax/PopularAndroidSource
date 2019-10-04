package com.mapbox.geojson.gson;

import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mapbox.geojson.BoundingBox;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.exception.GeoJsonException;
import com.mapbox.geojson.shifter.CoordinateShifterManager;
import com.mapbox.geojson.utils.GeoJsonUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class BoundingBoxTypeAdapter extends q<BoundingBox> {
    public void write(JsonWriter jsonWriter, BoundingBox boundingBox) throws IOException {
        if (boundingBox == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        Point southwest = boundingBox.southwest();
        List<Double> unshiftPoint = CoordinateShifterManager.getCoordinateShifter().unshiftPoint(southwest);
        jsonWriter.value(GeoJsonUtils.trim(unshiftPoint.get(0).doubleValue()));
        jsonWriter.value(GeoJsonUtils.trim(unshiftPoint.get(1).doubleValue()));
        if (southwest.hasAltitude()) {
            jsonWriter.value((Number) unshiftPoint.get(2));
        }
        Point northeast = boundingBox.northeast();
        List<Double> unshiftPoint2 = CoordinateShifterManager.getCoordinateShifter().unshiftPoint(northeast);
        jsonWriter.value(GeoJsonUtils.trim(unshiftPoint2.get(0).doubleValue()));
        jsonWriter.value(GeoJsonUtils.trim(unshiftPoint2.get(1).doubleValue()));
        if (northeast.hasAltitude()) {
            jsonWriter.value((Number) unshiftPoint2.get(2));
        }
        jsonWriter.endArray();
    }

    public BoundingBox read(JsonReader jsonReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(Double.valueOf(jsonReader.nextDouble()));
        }
        jsonReader.endArray();
        if (arrayList.size() == 6) {
            return BoundingBox.fromLngLats(((Double) arrayList.get(0)).doubleValue(), ((Double) arrayList.get(1)).doubleValue(), ((Double) arrayList.get(2)).doubleValue(), ((Double) arrayList.get(3)).doubleValue(), ((Double) arrayList.get(4)).doubleValue(), ((Double) arrayList.get(5)).doubleValue());
        }
        if (arrayList.size() == 4) {
            return BoundingBox.fromLngLats(((Double) arrayList.get(0)).doubleValue(), ((Double) arrayList.get(1)).doubleValue(), ((Double) arrayList.get(2)).doubleValue(), ((Double) arrayList.get(3)).doubleValue());
        }
        throw new GeoJsonException("The value of the bbox member MUST be an array of length 2*n where n is the number of dimensions represented in the contained geometries,with all axes of the most southwesterly point followed  by all axes of the more northeasterly point. The axes order of a bbox follows the axes order of geometries.");
    }
}
