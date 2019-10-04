package b.i.j;

import android.util.SparseArray;
import h.f.b.a.a;
import java.util.Iterator;

/* compiled from: SparseArray.kt */
public final class i implements Iterator<T>, a {

    /* renamed from: a  reason: collision with root package name */
    public int f2760a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SparseArray f2761b;

    public i(SparseArray<T> sparseArray) {
        this.f2761b = sparseArray;
    }

    public boolean hasNext() {
        return this.f2760a < this.f2761b.size();
    }

    public T next() {
        SparseArray sparseArray = this.f2761b;
        int i2 = this.f2760a;
        this.f2760a = i2 + 1;
        return sparseArray.valueAt(i2);
    }

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
