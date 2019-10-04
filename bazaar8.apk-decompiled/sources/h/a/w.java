package h.a;

import h.f.b.a.a;
import java.util.Iterator;

/* compiled from: Iterators.kt */
public abstract class w implements Iterator<Integer>, a {
    public abstract int nextInt();

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Integer next() {
        return Integer.valueOf(nextInt());
    }
}
