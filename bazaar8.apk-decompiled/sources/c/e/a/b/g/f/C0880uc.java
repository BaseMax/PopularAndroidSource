package c.e.a.b.g.f;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* renamed from: c.e.a.b.g.f.uc  reason: case insensitive filesystem */
public class C0880uc extends AbstractSet<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0845lc f10543a;

    public C0880uc(C0845lc lcVar) {
        this.f10543a = lcVar;
    }

    public /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.f10543a.put((Comparable) entry.getKey(), entry.getValue());
        return true;
    }

    public void clear() {
        this.f10543a.clear();
    }

    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f10543a.get(entry.getKey());
        Object value = entry.getValue();
        return obj2 == value || (obj2 != null && obj2.equals(value));
    }

    public Iterator<Map.Entry<K, V>> iterator() {
        return new C0876tc(this.f10543a, null);
    }

    public boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.f10543a.remove(entry.getKey());
        return true;
    }

    public int size() {
        return this.f10543a.size();
    }

    public /* synthetic */ C0880uc(C0845lc lcVar, C0849mc mcVar) {
        this(lcVar);
    }
}
