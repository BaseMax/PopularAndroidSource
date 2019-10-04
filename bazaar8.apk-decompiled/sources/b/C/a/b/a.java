package b.c.a.b;

import b.c.a.b.b;
import java.util.HashMap;
import java.util.Map;

/* compiled from: FastSafeIterableMap */
public class a<K, V> extends b<K, V> {

    /* renamed from: e  reason: collision with root package name */
    public HashMap<K, b.c<K, V>> f2279e = new HashMap<>();

    public b.c<K, V> a(K k2) {
        return this.f2279e.get(k2);
    }

    public V b(K k2, V v) {
        b.c a2 = a(k2);
        if (a2 != null) {
            return a2.f2285b;
        }
        this.f2279e.put(k2, a(k2, v));
        return null;
    }

    public boolean contains(K k2) {
        return this.f2279e.containsKey(k2);
    }

    public V remove(K k2) {
        V remove = super.remove(k2);
        this.f2279e.remove(k2);
        return remove;
    }

    public Map.Entry<K, V> b(K k2) {
        if (contains(k2)) {
            return this.f2279e.get(k2).f2287d;
        }
        return null;
    }
}
