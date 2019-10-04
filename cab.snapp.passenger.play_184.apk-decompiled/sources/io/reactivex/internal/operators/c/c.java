package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.internal.util.d;
import io.reactivex.internal.util.h;
import io.reactivex.observers.b;
import io.reactivex.y;
import io.reactivex.z;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;

public final class c<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7270a;

    static final class a<T> extends b<y<T>> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        y<T> f7271a;

        /* renamed from: b  reason: collision with root package name */
        final Semaphore f7272b = new Semaphore(0);
        final AtomicReference<y<T>> c = new AtomicReference<>();

        public final void onComplete() {
        }

        a() {
        }

        public final void onNext(y<T> yVar) {
            if (this.c.getAndSet(yVar) == null) {
                this.f7272b.release();
            }
        }

        public final void onError(Throwable th) {
            io.reactivex.g.a.onError(th);
        }

        public final boolean hasNext() {
            y<T> yVar = this.f7271a;
            if (yVar == null || !yVar.isOnError()) {
                if (this.f7271a == null) {
                    try {
                        d.verifyNonBlocking();
                        this.f7272b.acquire();
                        y<T> andSet = this.c.getAndSet(null);
                        this.f7271a = andSet;
                        if (andSet.isOnError()) {
                            throw h.wrapOrThrow(andSet.getError());
                        }
                    } catch (InterruptedException e) {
                        dispose();
                        this.f7271a = y.createOnError(e);
                        throw h.wrapOrThrow(e);
                    }
                }
                return this.f7271a.isOnNext();
            }
            throw h.wrapOrThrow(this.f7271a.getError());
        }

        public final T next() {
            if (hasNext()) {
                T value = this.f7271a.getValue();
                this.f7271a = null;
                return value;
            }
            throw new NoSuchElementException();
        }

        public final void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public c(ae<T> aeVar) {
        this.f7270a = aeVar;
    }

    public final Iterator<T> iterator() {
        a aVar = new a();
        z.wrap(this.f7270a).materialize().subscribe(aVar);
        return aVar;
    }
}
