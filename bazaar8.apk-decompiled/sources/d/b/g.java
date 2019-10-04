package d.b;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: MapProviderFactory */
public final class g<K, V> implements c<Map<K, g.a.a<V>>>, d.a<Map<K, g.a.a<V>>> {

    /* renamed from: a  reason: collision with root package name */
    public final Map<K, g.a.a<V>> f13660a;

    /* compiled from: MapProviderFactory */
    public static final class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public final LinkedHashMap<K, g.a.a<V>> f13661a;

        public a<K, V> a(K k2, g.a.a<V> aVar) {
            LinkedHashMap<K, g.a.a<V>> linkedHashMap = this.f13661a;
            h.a(k2, "key");
            h.a(aVar, "provider");
            linkedHashMap.put(k2, aVar);
            return this;
        }

        public a(int i2) {
            this.f13661a = a.b(i2);
        }

        public g<K, V> a() {
            return new g<>(this.f13661a);
        }
    }

    public static <K, V> a<K, V> a(int i2) {
        return new a<>(i2);
    }

    public g(Map<K, g.a.a<V>> map) {
        this.f13660a = Collections.unmodifiableMap(map);
    }

    public Map<K, g.a.a<V>> get() {
        return this.f13660a;
    }
}
