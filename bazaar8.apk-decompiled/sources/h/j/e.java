package h.j;

import h.c.b;
import h.c.b.a.f;
import h.f.b.a.a;
import h.f.b.j;
import h.h;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Result;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: SequenceBuilder.kt */
public final class e<T> extends f<T> implements Iterator<T>, b<h>, a {

    /* renamed from: a  reason: collision with root package name */
    public int f14600a;

    /* renamed from: b  reason: collision with root package name */
    public T f14601b;

    /* renamed from: c  reason: collision with root package name */
    public Iterator<? extends T> f14602c;

    /* renamed from: d  reason: collision with root package name */
    public b<? super h> f14603d;

    public final void a(b<? super h> bVar) {
        this.f14603d = bVar;
    }

    public void b(Object obj) {
        h.e.a(obj);
        this.f14600a = 4;
    }

    public final T c() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    public boolean hasNext() {
        while (true) {
            int i2 = this.f14600a;
            if (i2 != 0) {
                if (i2 == 1) {
                    Iterator<? extends T> it = this.f14602c;
                    if (it == null) {
                        j.a();
                        throw null;
                    } else if (it.hasNext()) {
                        this.f14600a = 2;
                        return true;
                    } else {
                        this.f14602c = null;
                    }
                } else if (i2 == 2 || i2 == 3) {
                    return true;
                } else {
                    if (i2 == 4) {
                        return false;
                    }
                    throw a();
                }
            }
            this.f14600a = 5;
            b<? super h> bVar = this.f14603d;
            if (bVar != null) {
                this.f14603d = null;
                h hVar = h.f14579a;
                Result.a aVar = Result.f15776a;
                Result.a(hVar);
                bVar.b(hVar);
            } else {
                j.a();
                throw null;
            }
        }
    }

    public T next() {
        int i2 = this.f14600a;
        if (i2 == 0 || i2 == 1) {
            return c();
        }
        if (i2 == 2) {
            this.f14600a = 1;
            Iterator<? extends T> it = this.f14602c;
            if (it != null) {
                return it.next();
            }
            j.a();
            throw null;
        } else if (i2 == 3) {
            this.f14600a = 0;
            T t = this.f14601b;
            this.f14601b = null;
            return t;
        } else {
            throw a();
        }
    }

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Throwable a() {
        int i2 = this.f14600a;
        if (i2 == 4) {
            return new NoSuchElementException();
        }
        if (i2 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f14600a);
    }

    public h.c.e b() {
        return EmptyCoroutineContext.f15784a;
    }

    public Object a(T t, b<? super h> bVar) {
        this.f14601b = t;
        this.f14600a = 3;
        a(bVar);
        Object a2 = h.c.a.b.a();
        if (a2 == h.c.a.b.a()) {
            f.c(bVar);
        }
        return a2;
    }
}
