package com.mapbox.geojson.gson;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.n;
import com.google.gson.o;
import com.mapbox.geojson.BoundingBox;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.shifter.CoordinateShifterManager;
import com.mapbox.geojson.utils.GeoJsonUtils;
import java.lang.reflect.Type;
import java.util.List;

@Deprecated
public class BoundingBoxSerializer implements o<BoundingBox> {
    public JsonElement serialize(BoundingBox boundingBox, Type type, n nVar) {
        JsonArray jsonArray = new JsonArray();
        Point southwest = boundingBox.southwest();
        List<Double> unshiftPoint = CoordinateShifterManager.getCoordinateShifter().unshiftPoint(southwest);
        jsonArray.add((JsonElement) new JsonPrimitive((Number) Double.valueOf(GeoJsonUtils.trim(unshiftPoint.get(0).doubleValue()))));
        jsonArray.add((JsonElement) new JsonPrimitive((Number) Double.valueOf(GeoJsonUtils.trim(unshiftPoint.get(1).doubleValue()))));
        if (southwest.hasAltitude()) {
            jsonArray.add((JsonElement) new JsonPrimitive((Number) unshiftPoint.get(2)));
        }
        Point northeast = boundingBox.northeast();
        List<Double> unshiftPoint2 = CoordinateShifterManager.getCoordinateShifter().unshiftPoint(northeast);
        jsonArray.add((JsonElement) new JsonPrimitive((Number) Double.valueOf(GeoJsonUtils.trim(unshiftPoint2.get(0).doubleValue()))));
        jsonArray.add((JsonElement) new JsonPrimitive((Number) Double.valueOf(GeoJsonUtils.trim(unshiftPoint2.get(1).doubleValue()))));
        if (northeast.hasAltitude()) {
            jsonArray.add((JsonElement) new JsonPrimitive((Number) unshiftPoint2.get(2)));
        }
        return jsonArray;
    }
}
