package h.j;

import h.f.b.j;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SequencesJVM.kt */
public final class a<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicReference<d<T>> f14592a;

    public a(d<? extends T> dVar) {
        j.b(dVar, "sequence");
        this.f14592a = new AtomicReference<>(dVar);
    }

    public Iterator<T> iterator() {
        d andSet = this.f14592a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
