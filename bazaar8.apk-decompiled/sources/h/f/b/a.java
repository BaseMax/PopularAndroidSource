package h.f.b;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: ArrayIterator.kt */
public final class a<T> implements Iterator<T>, h.f.b.a.a {

    /* renamed from: a  reason: collision with root package name */
    public int f14562a;

    /* renamed from: b  reason: collision with root package name */
    public final T[] f14563b;

    public a(T[] tArr) {
        j.b(tArr, "array");
        this.f14563b = tArr;
    }

    public boolean hasNext() {
        return this.f14562a < this.f14563b.length;
    }

    public T next() {
        try {
            T[] tArr = this.f14563b;
            int i2 = this.f14562a;
            this.f14562a = i2 + 1;
            return tArr[i2];
        } catch (ArrayIndexOutOfBoundsException e2) {
            this.f14562a--;
            throw new NoSuchElementException(e2.getMessage());
        }
    }

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
