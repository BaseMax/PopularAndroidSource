package h.a;

import h.f.b.j;
import java.util.Map;
import java.util.NoSuchElementException;

/* compiled from: MapWithDefault.kt */
public class y {
    public static final <K, V> V a(Map<K, ? extends V> map, K k2) {
        j.b(map, "$this$getOrImplicitDefault");
        if (map instanceof x) {
            return ((x) map).a(k2);
        }
        V v = map.get(k2);
        if (v != null || map.containsKey(k2)) {
            return v;
        }
        throw new NoSuchElementException("Key " + k2 + " is missing in the map.");
    }
}
