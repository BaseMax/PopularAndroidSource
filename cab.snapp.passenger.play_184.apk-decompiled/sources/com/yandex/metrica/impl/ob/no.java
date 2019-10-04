package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.bv;
import java.util.HashMap;
import java.util.Map;

public class no {
    public static String a(Map<String, String> map) {
        if (bv.a((Map) map)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry next : map.entrySet()) {
            if (!TextUtils.isEmpty((CharSequence) next.getKey())) {
                sb.append((String) next.getKey());
                sb.append(":");
                sb.append((String) next.getValue());
                sb.append(",");
            }
        }
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    public static Map<String, String> a(String str) {
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split(",")) {
                int indexOf = str2.indexOf(":");
                if (indexOf != -1) {
                    String substring = str2.substring(0, indexOf);
                    if (!TextUtils.isEmpty(substring)) {
                        hashMap.put(substring, str2.substring(indexOf + 1));
                    }
                }
            }
        }
        return hashMap;
    }

    public static boolean b(Map<String, String> map) {
        if (map.isEmpty()) {
            return false;
        }
        for (Map.Entry value : map.entrySet()) {
            try {
                Integer.parseInt((String) value.getValue());
            } catch (Exception unused) {
                return false;
            }
        }
        return true;
    }

    public static Map<String, String> c(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                String str = (String) next.getKey();
                boolean z = true;
                if (!TextUtils.isEmpty(str) && !str.contains(":") && !str.contains(",") && !str.contains("&")) {
                    String str2 = (String) next.getValue();
                    if (TextUtils.isEmpty(str2) || nj.a(str2, -1) == -1) {
                        z = false;
                    }
                    if (z) {
                        hashMap.put(next.getKey(), next.getValue());
                    }
                }
            }
        }
        return hashMap;
    }
}
