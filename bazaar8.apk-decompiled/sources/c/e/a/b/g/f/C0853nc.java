package c.e.a.b.g.f;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: c.e.a.b.g.f.nc  reason: case insensitive filesystem */
public final class C0853nc implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    public int f10484a;

    /* renamed from: b  reason: collision with root package name */
    public Iterator<Map.Entry<K, V>> f10485b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C0845lc f10486c;

    public C0853nc(C0845lc lcVar) {
        this.f10486c = lcVar;
        this.f10484a = this.f10486c.f10454b.size();
    }

    public final Iterator<Map.Entry<K, V>> a() {
        if (this.f10485b == null) {
            this.f10485b = this.f10486c.f10458f.entrySet().iterator();
        }
        return this.f10485b;
    }

    public final boolean hasNext() {
        int i2 = this.f10484a;
        return (i2 > 0 && i2 <= this.f10486c.f10454b.size()) || a().hasNext();
    }

    public final /* synthetic */ Object next() {
        if (a().hasNext()) {
            return (Map.Entry) a().next();
        }
        List b2 = this.f10486c.f10454b;
        int i2 = this.f10484a - 1;
        this.f10484a = i2;
        return (Map.Entry) b2.get(i2);
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public /* synthetic */ C0853nc(C0845lc lcVar, C0849mc mcVar) {
        this(lcVar);
    }
}
