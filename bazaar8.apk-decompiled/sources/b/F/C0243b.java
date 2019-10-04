package b.f;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* renamed from: b.f.b  reason: case insensitive filesystem */
/* compiled from: ArrayMap */
public class C0243b<K, V> extends i<K, V> implements Map<K, V> {

    /* renamed from: h  reason: collision with root package name */
    public h<K, V> f2329h;

    public C0243b() {
    }

    public boolean a(Collection<?> collection) {
        return h.c(this, collection);
    }

    public final h<K, V> b() {
        if (this.f2329h == null) {
            this.f2329h = new C0242a(this);
        }
        return this.f2329h;
    }

    public Set<Map.Entry<K, V>> entrySet() {
        return b().d();
    }

    public Set<K> keySet() {
        return b().e();
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        b(this.f2378g + map.size());
        for (Map.Entry next : map.entrySet()) {
            put(next.getKey(), next.getValue());
        }
    }

    public Collection<V> values() {
        return b().f();
    }

    public C0243b(int i2) {
        super(i2);
    }

    public C0243b(i iVar) {
        super(iVar);
    }
}
