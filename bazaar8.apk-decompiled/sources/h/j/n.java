package h.j;

import h.a.p;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* compiled from: _Sequences.kt */
public final class n implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f14607a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Comparator f14608b;

    public n(d<? extends T> dVar, Comparator comparator) {
        this.f14607a = dVar;
        this.f14608b = comparator;
    }

    public Iterator<T> iterator() {
        List d2 = o.d(this.f14607a);
        p.a(d2, this.f14608b);
        return d2.iterator();
    }
}
