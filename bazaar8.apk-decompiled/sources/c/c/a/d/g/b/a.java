package c.c.a.d.g.b;

import h.f.b.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: JSONUtil.kt */
public final class a {
    public static final Map<String, Object> a(JSONObject jSONObject) {
        j.b(jSONObject, "$this$convertToMap");
        return j.a((Object) jSONObject, JSONObject.NULL) ? b(jSONObject) : new HashMap();
    }

    public static final Map<String, Object> b(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONArray) {
                obj = a((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = b((JSONObject) obj);
            }
            j.a((Object) next, "key");
            j.a(obj, "value");
            hashMap.put(next, obj);
        }
        return hashMap;
    }

    public static final List<Object> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = jSONArray.get(i2);
            if (obj instanceof JSONArray) {
                obj = a((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = b((JSONObject) obj);
            }
            arrayList.add(obj);
        }
        return arrayList;
    }
}
