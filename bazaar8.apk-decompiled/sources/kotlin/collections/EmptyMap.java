package kotlin.collections;

import h.f.b.a.a;
import h.f.b.j;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: Maps.kt */
public final class EmptyMap implements Map, Serializable, a {

    /* renamed from: a  reason: collision with root package name */
    public static final EmptyMap f15778a = new EmptyMap();
    public static final long serialVersionUID = 8246714829545688274L;

    private final Object readResolve() {
        return f15778a;
    }

    public Set<Map.Entry> a() {
        return EmptySet.f15779a;
    }

    public boolean a(Void voidR) {
        j.b(voidR, "value");
        return false;
    }

    public Set<Object> b() {
        return EmptySet.f15779a;
    }

    public int c() {
        return 0;
    }

    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean containsKey(Object obj) {
        return false;
    }

    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof Void) {
            return a((Void) obj);
        }
        return false;
    }

    public Collection d() {
        return EmptyList.f15777a;
    }

    public final /* bridge */ Set<Map.Entry> entrySet() {
        return a();
    }

    public boolean equals(Object obj) {
        return (obj instanceof Map) && ((Map) obj).isEmpty();
    }

    public final /* bridge */ Object get(Object obj) {
        return get(obj);
    }

    public Void get(Object obj) {
        return null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isEmpty() {
        return true;
    }

    public final /* bridge */ Set<Object> keySet() {
        return b();
    }

    public /* synthetic */ Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* bridge */ int size() {
        return c();
    }

    public String toString() {
        return "{}";
    }

    public final /* bridge */ Collection values() {
        return d();
    }
}
