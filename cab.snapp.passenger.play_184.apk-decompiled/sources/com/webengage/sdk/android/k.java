package com.webengage.sdk.android;

import android.content.Context;
import com.webengage.sdk.android.utils.DataType;
import java.util.HashMap;
import java.util.Map;

public class k {
    public static l a(String str, Map<String, Object> map, Map<String, Object> map2, Map<String, Object> map3, Context context) {
        String str2;
        Map map4;
        Map map5;
        if (str == null) {
            return null;
        }
        l lVar = new l();
        lVar.g(com.webengage.sdk.android.utils.k.a(str, 50));
        if (map == null) {
            map = new HashMap<>();
            str2 = "Processing event: ".concat(String.valueOf(str));
        } else {
            str2 = "Processing event: " + str + ", data: " + map;
        }
        Logger.d("WebEngage", str2);
        map.put("sdk_id", 2);
        map.put("sdk_version", Double.valueOf(31203.0d));
        map.put("app_id", context.getApplicationContext().getPackageName());
        try {
            map4 = (Map) DataType.cloneExternal(str, map);
        } catch (Exception unused) {
            map4 = null;
        }
        lVar.b((Map<String, Object>) map4);
        if (map2 == null) {
            map2 = new HashMap<>();
        }
        if (map2 != null) {
            try {
                map5 = (Map) DataType.cloneExternal(str, map2);
            } catch (Exception unused2) {
            }
            lVar.a((Map<String, Object>) map5);
            lVar.e("system");
            lVar.c(map3);
            return lVar;
        }
        map5 = null;
        lVar.a((Map<String, Object>) map5);
        lVar.e("system");
        lVar.c(map3);
        return lVar;
    }

    public static l b(String str, Map<String, Object> map, Map<String, Object> map2, Map<String, Object> map3, Context context) {
        Map map4;
        String str2;
        Map map5;
        Map map6;
        if (str == null) {
            return null;
        }
        l lVar = new l();
        lVar.g(com.webengage.sdk.android.utils.k.a(str, 50));
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("sdk_id", 2);
        map.put("sdk_version", Double.valueOf(31203.0d));
        map.put("app_id", context.getApplicationContext().getPackageName());
        try {
            map4 = (Map) DataType.cloneExternal(str, map);
        } catch (Exception unused) {
            map4 = null;
        }
        lVar.b((Map<String, Object>) map4);
        if (map2 == null) {
            map2 = new HashMap<>();
            str2 = "Processing event: ".concat(String.valueOf(str));
        } else {
            str2 = "Processing event: " + str + ", data: " + map2;
        }
        Logger.d("WebEngage", str2);
        try {
            map5 = (Map) DataType.cloneExternal(str, map2);
        } catch (Exception unused2) {
            map5 = null;
        }
        if (map3 != null) {
            try {
                map6 = (Map) DataType.cloneExternal(str, map3);
            } catch (Exception unused3) {
            }
            lVar.a((Map<String, Object>) map5);
            lVar.e("application");
            lVar.c((Map<String, Object>) map6);
            return lVar;
        }
        map6 = null;
        lVar.a((Map<String, Object>) map5);
        lVar.e("application");
        lVar.c((Map<String, Object>) map6);
        return lVar;
    }
}
