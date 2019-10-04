package com.mapbox.geojson.gson;

import com.google.gson.JsonElement;
import com.google.gson.h;
import com.google.gson.i;
import com.google.gson.l;
import com.mapbox.geojson.Geometry;
import java.lang.reflect.Type;

@Deprecated
public class GeometryDeserializer implements i<Geometry> {
    public Geometry deserialize(JsonElement jsonElement, Type type, h hVar) {
        String str;
        if (jsonElement.isJsonObject()) {
            str = jsonElement.getAsJsonObject().get("type").getAsString();
        } else {
            str = jsonElement.getAsJsonArray().get(0).getAsJsonObject().get("type").getAsString();
        }
        try {
            return (Geometry) hVar.deserialize(jsonElement, Class.forName("com.mapbox.geojson.".concat(String.valueOf(str))));
        } catch (ClassNotFoundException e) {
            throw new l((Throwable) e);
        }
    }
}
