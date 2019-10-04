package com.mapbox.geojson.gson;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.n;
import com.google.gson.o;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.shifter.CoordinateShifterManager;
import com.mapbox.geojson.utils.GeoJsonUtils;
import java.lang.reflect.Type;
import java.util.List;

@Deprecated
public class PointSerializer implements o<Point> {
    public JsonElement serialize(Point point, Type type, n nVar) {
        JsonArray jsonArray = new JsonArray();
        List<Double> unshiftPoint = CoordinateShifterManager.getCoordinateShifter().unshiftPoint(point);
        jsonArray.add((JsonElement) new JsonPrimitive((Number) Double.valueOf(GeoJsonUtils.trim(unshiftPoint.get(0).doubleValue()))));
        jsonArray.add((JsonElement) new JsonPrimitive((Number) Double.valueOf(GeoJsonUtils.trim(unshiftPoint.get(1).doubleValue()))));
        if (point.hasAltitude()) {
            jsonArray.add((JsonElement) new JsonPrimitive((Number) unshiftPoint.get(2)));
        }
        return jsonArray;
    }
}
