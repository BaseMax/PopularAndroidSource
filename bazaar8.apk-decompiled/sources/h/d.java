package h;

import h.f.a.a;
import h.f.b.j;
import kotlin.SynchronizedLazyImpl;

/* compiled from: LazyJVM.kt */
public class d {
    public static final <T> c<T> a(a<? extends T> aVar) {
        j.b(aVar, "initializer");
        return new SynchronizedLazyImpl(aVar, null, 2, null);
    }
}
