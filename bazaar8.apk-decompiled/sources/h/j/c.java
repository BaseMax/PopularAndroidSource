package h.j;

import h.f.a.b;
import h.f.b.j;
import java.util.Iterator;

/* compiled from: Sequences.kt */
public final class c<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    public final d<T> f14597a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f14598b;

    /* renamed from: c  reason: collision with root package name */
    public final b<T, Boolean> f14599c;

    public c(d<? extends T> dVar, boolean z, b<? super T, Boolean> bVar) {
        j.b(dVar, "sequence");
        j.b(bVar, "predicate");
        this.f14597a = dVar;
        this.f14598b = z;
        this.f14599c = bVar;
    }

    public Iterator<T> iterator() {
        return new b(this);
    }
}
