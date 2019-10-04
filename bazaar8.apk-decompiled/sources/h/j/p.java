package h.j;

import h.f.b.a.a;
import java.util.Iterator;

/* compiled from: Sequences.kt */
public final class p implements Iterator<R>, a {

    /* renamed from: a  reason: collision with root package name */
    public final Iterator<T> f14609a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ q f14610b;

    public p(q qVar) {
        this.f14610b = qVar;
        this.f14609a = qVar.f14611a.iterator();
    }

    public boolean hasNext() {
        return this.f14609a.hasNext();
    }

    public R next() {
        return this.f14610b.f14612b.a(this.f14609a.next());
    }

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
