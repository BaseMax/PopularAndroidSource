package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.d;
import io.reactivex.internal.util.h;
import io.reactivex.j;
import io.reactivex.y;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;

public final class c<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final b<? extends T> f8073a;

    static final class a<T> extends io.reactivex.k.b<y<T>> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final Semaphore f8074a = new Semaphore(0);

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<y<T>> f8075b = new AtomicReference<>();
        y<T> c;

        public final void onComplete() {
        }

        a() {
        }

        public final void onNext(y<T> yVar) {
            if (this.f8075b.getAndSet(yVar) == null) {
                this.f8074a.release();
            }
        }

        public final void onError(Throwable th) {
            io.reactivex.g.a.onError(th);
        }

        public final boolean hasNext() {
            y<T> yVar = this.c;
            if (yVar == null || !yVar.isOnError()) {
                y<T> yVar2 = this.c;
                if ((yVar2 == null || yVar2.isOnNext()) && this.c == null) {
                    try {
                        d.verifyNonBlocking();
                        this.f8074a.acquire();
                        y<T> andSet = this.f8075b.getAndSet(null);
                        this.c = andSet;
                        if (andSet.isOnError()) {
                            throw h.wrapOrThrow(andSet.getError());
                        }
                    } catch (InterruptedException e) {
                        dispose();
                        this.c = y.createOnError(e);
                        throw h.wrapOrThrow(e);
                    }
                }
                return this.c.isOnNext();
            }
            throw h.wrapOrThrow(this.c.getError());
        }

        public final T next() {
            if (!hasNext() || !this.c.isOnNext()) {
                throw new NoSuchElementException();
            }
            T value = this.c.getValue();
            this.c = null;
            return value;
        }

        public final void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public c(b<? extends T> bVar) {
        this.f8073a = bVar;
    }

    public final Iterator<T> iterator() {
        a aVar = new a();
        j.fromPublisher(this.f8073a).materialize().subscribe(aVar);
        return aVar;
    }
}
