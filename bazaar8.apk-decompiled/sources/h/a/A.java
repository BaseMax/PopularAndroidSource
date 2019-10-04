package h.a;

import h.f.b.j;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.EmptyMap;

/* compiled from: Maps.kt */
public class A extends z {
    public static final <K, V> Map<K, V> a() {
        EmptyMap emptyMap = EmptyMap.f15778a;
        if (emptyMap != null) {
            return emptyMap;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, V>");
    }

    public static final <K, V> Map<K, V> b(Pair<? extends K, ? extends V>... pairArr) {
        j.b(pairArr, "pairs");
        if (pairArr.length <= 0) {
            return a();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(a(pairArr.length));
        a(pairArr, linkedHashMap);
        return linkedHashMap;
    }

    public static final <K, V> Map<K, V> c(Pair<? extends K, ? extends V>... pairArr) {
        j.b(pairArr, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(a(pairArr.length));
        a(linkedHashMap, pairArr);
        return linkedHashMap;
    }

    public static final <K, V> HashMap<K, V> a(Pair<? extends K, ? extends V>... pairArr) {
        j.b(pairArr, "pairs");
        HashMap<K, V> hashMap = new HashMap<>(a(pairArr.length));
        a(hashMap, pairArr);
        return hashMap;
    }

    public static final <K, V> V b(Map<K, ? extends V> map, K k2) {
        j.b(map, "$this$getValue");
        return y.a(map, k2);
    }

    public static final int a(int i2) {
        if (i2 < 3) {
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return i2 + (i2 / 3);
        }
        return Integer.MAX_VALUE;
    }

    public static final <K, V> void a(Map<? super K, ? super V> map, Pair<? extends K, ? extends V>[] pairArr) {
        j.b(map, "$this$putAll");
        j.b(pairArr, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairArr) {
            map.put(pair.a(), pair.b());
        }
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M a(Pair<? extends K, ? extends V>[] pairArr, M m) {
        j.b(pairArr, "$this$toMap");
        j.b(m, "destination");
        a(m, pairArr);
        return m;
    }
}
