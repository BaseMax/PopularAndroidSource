package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.internal.util.d;
import io.reactivex.internal.util.h;
import io.reactivex.y;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public final class e<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7478a;

    static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final b<T> f7479a;

        /* renamed from: b  reason: collision with root package name */
        private final ae<T> f7480b;
        private T c;
        private boolean d = true;
        private boolean e = true;
        private Throwable f;
        private boolean g;

        a(ae<T> aeVar, b<T> bVar) {
            this.f7480b = aeVar;
            this.f7479a = bVar;
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
            if (!this.g) {
                this.g = true;
                this.f7479a.a();
                new by(this.f7480b).subscribe(this.f7479a);
            }
            try {
                y<T> takeNext = this.f7479a.takeNext();
                if (takeNext.isOnNext()) {
                    this.e = false;
                    this.c = takeNext.getValue();
                    return true;
                }
                this.d = false;
                if (takeNext.isOnComplete()) {
                    return false;
                }
                this.f = takeNext.getError();
                throw h.wrapOrThrow(this.f);
            } catch (InterruptedException e2) {
                this.f7479a.dispose();
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

    static final class b<T> extends io.reactivex.observers.b<y<T>> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicInteger f7481a = new AtomicInteger();

        /* renamed from: b  reason: collision with root package name */
        private final BlockingQueue<y<T>> f7482b = new ArrayBlockingQueue(1);

        public final void onComplete() {
        }

        b() {
        }

        public final void onError(Throwable th) {
            io.reactivex.g.a.onError(th);
        }

        public final void onNext(y<T> yVar) {
            if (this.f7481a.getAndSet(0) == 1 || !yVar.isOnNext()) {
                while (!this.f7482b.offer(yVar)) {
                    y<T> yVar2 = (y) this.f7482b.poll();
                    if (yVar2 != null && !yVar2.isOnNext()) {
                        yVar = yVar2;
                    }
                }
            }
        }

        public final y<T> takeNext() throws InterruptedException {
            a();
            d.verifyNonBlocking();
            return this.f7482b.take();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.f7481a.set(1);
        }
    }

    public e(ae<T> aeVar) {
        this.f7478a = aeVar;
    }

    public final Iterator<T> iterator() {
        return new a(this.f7478a, new b());
    }
}
