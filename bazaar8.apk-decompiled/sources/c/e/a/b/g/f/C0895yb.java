package c.e.a.b.g.f;

import java.util.Map;

/* renamed from: c.e.a.b.g.f.yb  reason: case insensitive filesystem */
public final class C0895yb<K> implements Map.Entry<K, Object> {

    /* renamed from: a  reason: collision with root package name */
    public Map.Entry<K, C0887wb> f10563a;

    public C0895yb(Map.Entry<K, C0887wb> entry) {
        this.f10563a = entry;
    }

    public final C0887wb a() {
        return this.f10563a.getValue();
    }

    public final K getKey() {
        return this.f10563a.getKey();
    }

    public final Object getValue() {
        if (this.f10563a.getValue() == null) {
            return null;
        }
        C0887wb.c();
        throw null;
    }

    public final Object setValue(Object obj) {
        if (obj instanceof Sb) {
            return this.f10563a.getValue().b((Sb) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
