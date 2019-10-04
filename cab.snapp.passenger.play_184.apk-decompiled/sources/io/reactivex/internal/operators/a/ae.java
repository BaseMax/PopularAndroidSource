package io.reactivex.internal.operators.a;

import io.reactivex.b.b;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class ae extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends g> f6899a;

    static final class a extends AtomicBoolean implements d {

        /* renamed from: a  reason: collision with root package name */
        final b f6900a;

        /* renamed from: b  reason: collision with root package name */
        final d f6901b;
        final AtomicInteger c;

        a(d dVar, b bVar, AtomicInteger atomicInteger) {
            this.f6901b = dVar;
            this.f6900a = bVar;
            this.c = atomicInteger;
        }

        public final void onSubscribe(c cVar) {
            this.f6900a.add(cVar);
        }

        public final void onError(Throwable th) {
            this.f6900a.dispose();
            if (compareAndSet(false, true)) {
                this.f6901b.onError(th);
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            if (this.c.decrementAndGet() == 0 && compareAndSet(false, true)) {
                this.f6901b.onComplete();
            }
        }
    }

    public ae(Iterable<? extends g> iterable) {
        this.f6899a = iterable;
    }

    public final void subscribeActual(d dVar) {
        b bVar = new b();
        dVar.onSubscribe(bVar);
        try {
            Iterator it = (Iterator) io.reactivex.internal.a.b.requireNonNull(this.f6899a.iterator(), "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            a aVar = new a(dVar, bVar, atomicInteger);
            while (!bVar.isDisposed()) {
                try {
                    if (!it.hasNext()) {
                        aVar.onComplete();
                        return;
                    } else if (!bVar.isDisposed()) {
                        try {
                            g gVar = (g) io.reactivex.internal.a.b.requireNonNull(it.next(), "The iterator returned a null CompletableSource");
                            if (!bVar.isDisposed()) {
                                atomicInteger.getAndIncrement();
                                gVar.subscribe(aVar);
                            } else {
                                return;
                            }
                        } catch (Throwable th) {
                            io.reactivex.c.b.throwIfFatal(th);
                            bVar.dispose();
                            aVar.onError(th);
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.c.b.throwIfFatal(th2);
                    bVar.dispose();
                    aVar.onError(th2);
                    return;
                }
            }
        } catch (Throwable th3) {
            io.reactivex.c.b.throwIfFatal(th3);
            dVar.onError(th3);
        }
    }
}
