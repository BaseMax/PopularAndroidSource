package d.b;

import java.util.Collections;
import java.util.Map;

/* compiled from: MapBuilder */
public final class e<K, V> {

    /* renamed from: a  reason: collision with root package name */
    public final Map<K, V> f13659a;

    public e(int i2) {
        this.f13659a = a.b(i2);
    }

    public static <K, V> e<K, V> a(int i2) {
        return new e<>(i2);
    }

    public e<K, V> a(K k2, V v) {
        this.f13659a.put(k2, v);
        return this;
    }

    public Map<K, V> a() {
        if (this.f13659a.size() != 0) {
            return Collections.unmodifiableMap(this.f13659a);
        }
        return Collections.emptyMap();
    }
}
