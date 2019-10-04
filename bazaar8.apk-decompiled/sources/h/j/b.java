package h.j;

import h.f.b.a.a;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: Sequences.kt */
public final class b implements Iterator<T>, a {

    /* renamed from: a  reason: collision with root package name */
    public final Iterator<T> f14593a;

    /* renamed from: b  reason: collision with root package name */
    public int f14594b = -1;

    /* renamed from: c  reason: collision with root package name */
    public T f14595c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ c f14596d;

    public b(c cVar) {
        this.f14596d = cVar;
        this.f14593a = cVar.f14597a.iterator();
    }

    public final void a() {
        while (this.f14593a.hasNext()) {
            T next = this.f14593a.next();
            if (((Boolean) this.f14596d.f14599c.a(next)).booleanValue() == this.f14596d.f14598b) {
                this.f14595c = next;
                this.f14594b = 1;
                return;
            }
        }
        this.f14594b = 0;
    }

    public boolean hasNext() {
        if (this.f14594b == -1) {
            a();
        }
        return this.f14594b == 1;
    }

    public T next() {
        if (this.f14594b == -1) {
            a();
        }
        if (this.f14594b != 0) {
            T t = this.f14595c;
            this.f14595c = null;
            this.f14594b = -1;
            return t;
        }
        throw new NoSuchElementException();
    }

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
