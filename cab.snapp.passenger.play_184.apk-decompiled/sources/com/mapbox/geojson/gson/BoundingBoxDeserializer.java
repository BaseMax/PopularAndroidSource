package com.mapbox.geojson.gson;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.h;
import com.google.gson.i;
import com.mapbox.geojson.BoundingBox;
import com.mapbox.geojson.exception.GeoJsonException;
import java.lang.reflect.Type;

@Deprecated
public class BoundingBoxDeserializer implements i<BoundingBox> {
    public BoundingBox deserialize(JsonElement jsonElement, Type type, h hVar) {
        JsonArray asJsonArray = jsonElement.getAsJsonArray();
        if (asJsonArray.size() == 6) {
            return BoundingBox.fromLngLats(asJsonArray.get(0).getAsDouble(), asJsonArray.get(1).getAsDouble(), asJsonArray.get(2).getAsDouble(), asJsonArray.get(3).getAsDouble(), asJsonArray.get(4).getAsDouble(), asJsonArray.get(5).getAsDouble());
        }
        if (asJsonArray.size() == 4) {
            return BoundingBox.fromLngLats(asJsonArray.get(0).getAsDouble(), asJsonArray.get(1).getAsDouble(), asJsonArray.get(2).getAsDouble(), asJsonArray.get(3).getAsDouble());
        }
        throw new GeoJsonException("The value of the bbox member MUST be an array of length 2*n where n is the number of dimensions represented in the contained geometries, with all axes of the most southwesterly point followed by all axes of the more northeasterly point. The axes order of a bbox follows the axes order of geometries.");
    }
}
