package com.webengage.sdk.android.utils;

import java.util.HashMap;
import java.util.Map;

public class g<K, V> extends HashMap<K, V> {
    public V a(K k, V v) {
        if (k == null || v == null) {
            return null;
        }
        return super.put(k, v);
    }

    public V a(K k, V v, V v2) {
        return v == null ? super.put(k, v2) : super.put(k, v);
    }

    public void a(Map<? extends K, ? extends V> map) {
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                a(next.getKey(), next.getValue());
            }
        }
    }
}
