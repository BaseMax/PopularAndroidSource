package h.a;

import h.f.b.a.a;
import h.f.b.b;
import h.f.b.j;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: Collections.kt */
public final class e<T> implements Collection<T>, a {

    /* renamed from: a  reason: collision with root package name */
    public final T[] f14525a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f14526b;

    public e(T[] tArr, boolean z) {
        j.b(tArr, "values");
        this.f14525a = tArr;
        this.f14526b = z;
    }

    public int a() {
        return this.f14525a.length;
    }

    public boolean add(T t) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean contains(Object obj) {
        return i.b(this.f14525a, obj);
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
        return this.f14525a.length == 0;
    }

    public Iterator<T> iterator() {
        return b.a(this.f14525a);
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

    public final Object[] toArray() {
        return k.a(this.f14525a, this.f14526b);
    }

    public <T> T[] toArray(T[] tArr) {
        return h.f.b.e.a(this, tArr);
    }
}
