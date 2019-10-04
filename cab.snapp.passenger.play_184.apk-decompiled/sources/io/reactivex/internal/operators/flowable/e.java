package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.d;
import io.reactivex.internal.util.h;
import io.reactivex.j;
import io.reactivex.y;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public final class e<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.b.b<? extends T> f8228a;

    static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final b<T> f8229a;

        /* renamed from: b  reason: collision with root package name */
        private final org.b.b<? extends T> f8230b;
        private T c;
        private boolean d = true;
        private boolean e = true;
        private Throwable f;
        private boolean g;

        a(org.b.b<? extends T> bVar, b<T> bVar2) {
            this.f8230b = bVar;
            this.f8229a = bVar2;
        }

        public final boolean hasNext() {
            Throwable th = this.f;
            if (th != null) {
                throw h.wrapOrThrow(th);
            } else if (!this.d) {
                return false;
            } else {
                if (!this.e || a()) {
                    return true;
                }
                return false;
            }
        }

        private boolean a() {
            try {
                if (!this.g) {
                    this.g = true;
                    this.f8229a.a();
                    j.fromPublisher(this.f8230b).materialize().subscribe(this.f8229a);
                }
                y<T> takeNext = this.f8229a.takeNext();
                if (takeNext.isOnNext()) {
                    this.e = false;
                    this.c = takeNext.getValue();
                    return true;
                }
                this.d = false;
                if (takeNext.isOnComplete()) {
                    return false;
                }
                if (takeNext.isOnError()) {
                    this.f = takeNext.getError();
                    throw h.wrapOrThrow(this.f);
                }
                throw new IllegalStateException("Should not reach here");
            } catch (InterruptedException e2) {
                this.f8229a.dispose();
                this.f = e2;
                throw h.wrapOrThrow(e2);
            }
        }

        public final T next() {
            Throwable th = this.f;
            if (th != null) {
                throw h.wrapOrThrow(th);
            } else if (hasNext()) {
                this.e = true;
                return this.c;
            } else {
                throw new NoSuchElementException("No more elements");
            }
        }

        public final void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    static final class b<T> extends io.reactivex.k.b<y<T>> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicInteger f8231a = new AtomicInteger();

        /* renamed from: b  reason: collision with root package name */
        private final BlockingQueue<y<T>> f8232b = new ArrayBlockingQueue(1);

        public final void onComplete() {
        }

        b() {
        }

        public final void onError(Throwable th) {
            io.reactivex.g.a.onError(th);
        }

        public final void onNext(y<T> yVar) {
            if (this.f8231a.getAndSet(0) == 1 || !yVar.isOnNext()) {
                while (!this.f8232b.offer(yVar)) {
                    y<T> yVar2 = (y) this.f8232b.poll();
                    if (yVar2 != null && !yVar2.isOnNext()) {
                        yVar = yVar2;
                    }
                }
            }
        }

        public final y<T> takeNext() throws InterruptedException {
            a();
            d.verifyNonBlocking();
            return this.f8232b.take();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.f8231a.set(1);
        }
    }

    public e(org.b.b<? extends T> bVar) {
        this.f8228a = bVar;
    }

    public final Iterator<T> iterator() {
        return new a(this.f8228a, new b());
    }
}
