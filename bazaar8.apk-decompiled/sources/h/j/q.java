package h.j;

import h.f.a.b;
import h.f.b.j;
import java.util.Iterator;

/* compiled from: Sequences.kt */
public final class q<T, R> implements d<R> {

    /* renamed from: a  reason: collision with root package name */
    public final d<T> f14611a;

    /* renamed from: b  reason: collision with root package name */
    public final b<T, R> f14612b;

    public q(d<? extends T> dVar, b<? super T, ? extends R> bVar) {
        j.b(dVar, "sequence");
        j.b(bVar, "transformer");
        this.f14611a = dVar;
        this.f14612b = bVar;
    }

    public Iterator<R> iterator() {
        return new p(this);
    }
}
