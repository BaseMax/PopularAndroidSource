package com.mapbox.mapboxsdk.plugins.annotation;

import com.google.gson.JsonArray;

class ConvertUtils {
    ConvertUtils() {
    }

    static JsonArray convertArray(Float[] fArr) {
        if (fArr == null) {
            return null;
        }
        JsonArray jsonArray = new JsonArray();
        for (Float add : fArr) {
            jsonArray.add((Number) add);
        }
        return jsonArray;
    }

    static JsonArray convertArray(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        JsonArray jsonArray = new JsonArray();
        for (String add : strArr) {
            jsonArray.add(add);
        }
        return jsonArray;
    }

    static Float[] toFloatArray(JsonArray jsonArray) {
        if (jsonArray == null) {
            return null;
        }
        Float[] fArr = new Float[jsonArray.size()];
        for (int i = 0; i < jsonArray.size(); i++) {
            fArr[i] = Float.valueOf(jsonArray.get(i).getAsFloat());
        }
        return fArr;
    }

    static String[] toStringArray(JsonArray jsonArray) {
        if (jsonArray == null) {
            return null;
        }
        String[] strArr = new String[jsonArray.size()];
        for (int i = 0; i < jsonArray.size(); i++) {
            strArr[i] = jsonArray.get(i).getAsString();
        }
        return strArr;
    }
}
