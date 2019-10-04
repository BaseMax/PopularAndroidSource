package h.a;

import h.f.b.a.a;
import h.f.b.e;
import h.f.b.j;
import java.util.Collection;
import java.util.Iterator;
import kotlin.TypeCastException;

/* renamed from: h.a.a  reason: case insensitive filesystem */
/* compiled from: AbstractCollection.kt */
public abstract class C1084a<E> implements Collection<E>, a {
    public abstract int a();

    public boolean add(E e2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean contains(Object obj) {
        if (isEmpty()) {
            return false;
        }
        for (Object a2 : this) {
            if (j.a(a2, obj)) {
                return true;
            }
        }
        return false;
    }

    public boolean containsAll(Collection<? extends Object> collection) {
        j.b(collection, "elements");
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* bridge */ int size() {
        return a();
    }

    public Object[] toArray() {
        return e.a(this);
    }

    public String toString() {
        return u.a(this, ", ", "[", "]", 0, null, new AbstractCollection$toString$1(this), 24, null);
    }

    public <T> T[] toArray(T[] tArr) {
        j.b(tArr, "array");
        T[] a2 = e.a(this, tArr);
        if (a2 != null) {
            return a2;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
