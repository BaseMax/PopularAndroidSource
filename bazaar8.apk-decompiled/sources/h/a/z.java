package h.a;

import h.f.b.j;
import java.util.Collections;
import java.util.Map;
import kotlin.Pair;

/* compiled from: MapsJVM.kt */
public class z extends y {
    public static final <K, V> Map<K, V> a(Pair<? extends K, ? extends V> pair) {
        j.b(pair, "pair");
        Map<K, V> singletonMap = Collections.singletonMap(pair.c(), pair.d());
        j.a((Object) singletonMap, "java.util.Collections.si…(pair.first, pair.second)");
        return singletonMap;
    }
}
