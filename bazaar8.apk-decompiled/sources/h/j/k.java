package h.j;

import h.f.b.j;
import java.util.Iterator;

/* compiled from: Sequences.kt */
public class k extends i {
    public static final <T> d<T> a(Iterator<? extends T> it) {
        j.b(it, "$this$asSequence");
        return a(new j(it));
    }

    public static final <T> d<T> a(d<? extends T> dVar) {
        j.b(dVar, "$this$constrainOnce");
        return dVar instanceof a ? dVar : new a(dVar);
    }
}
