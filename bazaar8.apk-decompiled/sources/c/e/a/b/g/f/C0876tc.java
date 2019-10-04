package c.e.a.b.g.f;

import java.util.Iterator;
import java.util.Map;

/* renamed from: c.e.a.b.g.f.tc  reason: case insensitive filesystem */
public final class C0876tc implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    public int f10534a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f10535b;

    /* renamed from: c  reason: collision with root package name */
    public Iterator<Map.Entry<K, V>> f10536c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0845lc f10537d;

    public C0876tc(C0845lc lcVar) {
        this.f10537d = lcVar;
        this.f10534a = -1;
    }

    public final Iterator<Map.Entry<K, V>> a() {
        if (this.f10536c == null) {
            this.f10536c = this.f10537d.f10455c.entrySet().iterator();
        }
        return this.f10536c;
    }

    public final boolean hasNext() {
        if (this.f10534a + 1 < this.f10537d.f10454b.size() || (!this.f10537d.f10455c.isEmpty() && a().hasNext())) {
            return true;
        }
        return false;
    }

    public final /* synthetic */ Object next() {
        this.f10535b = true;
        int i2 = this.f10534a + 1;
        this.f10534a = i2;
        if (i2 < this.f10537d.f10454b.size()) {
            return (Map.Entry) this.f10537d.f10454b.get(this.f10534a);
        }
        return (Map.Entry) a().next();
    }

    public final void remove() {
        if (this.f10535b) {
            this.f10535b = false;
            this.f10537d.f();
            if (this.f10534a < this.f10537d.f10454b.size()) {
                C0845lc lcVar = this.f10537d;
                int i2 = this.f10534a;
                this.f10534a = i2 - 1;
                Object unused = lcVar.c(i2);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }

    public /* synthetic */ C0876tc(C0845lc lcVar, C0849mc mcVar) {
        this(lcVar);
    }
}
