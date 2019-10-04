package c.e.a.b.g.f;

import java.util.Iterator;
import java.util.Map;

/* renamed from: c.e.a.b.g.f.zb  reason: case insensitive filesystem */
public final class C0899zb<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a  reason: collision with root package name */
    public Iterator<Map.Entry<K, Object>> f10572a;

    public C0899zb(Iterator<Map.Entry<K, Object>> it) {
        this.f10572a = it;
    }

    public final boolean hasNext() {
        return this.f10572a.hasNext();
    }

    public final /* synthetic */ Object next() {
        Map.Entry next = this.f10572a.next();
        return next.getValue() instanceof C0887wb ? new C0895yb(next) : next;
    }

    public final void remove() {
        this.f10572a.remove();
    }
}
