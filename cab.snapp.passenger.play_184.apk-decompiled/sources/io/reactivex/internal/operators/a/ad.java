package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.b.b;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.operators.a.ac;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class ad extends a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends g> f6898a;

    public ad(Iterable<? extends g> iterable) {
        this.f6898a = iterable;
    }

    public final void subscribeActual(d dVar) {
        b bVar = new b();
        dVar.onSubscribe(bVar);
        try {
            Iterator it = (Iterator) io.reactivex.internal.a.b.requireNonNull(this.f6898a.iterator(), "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            io.reactivex.internal.util.b bVar2 = new io.reactivex.internal.util.b();
            while (!bVar.isDisposed()) {
                try {
                    if (!it.hasNext()) {
                        if (atomicInteger.decrementAndGet() == 0) {
                            Throwable terminate = bVar2.terminate();
                            if (terminate == null) {
                                dVar.onComplete();
                                return;
                            }
                            dVar.onError(terminate);
                        }
                        return;
                    } else if (!bVar.isDisposed()) {
                        try {
                            g gVar = (g) io.reactivex.internal.a.b.requireNonNull(it.next(), "The iterator returned a null CompletableSource");
                            if (!bVar.isDisposed()) {
                                atomicInteger.getAndIncrement();
                                gVar.subscribe(new ac.a(dVar, bVar, bVar2, atomicInteger));
                            } else {
                                return;
                            }
                        } catch (Throwable th) {
                            io.reactivex.c.b.throwIfFatal(th);
                            bVar2.addThrowable(th);
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.c.b.throwIfFatal(th2);
                    bVar2.addThrowable(th2);
                }
            }
        } catch (Throwable th3) {
            io.reactivex.c.b.throwIfFatal(th3);
            dVar.onError(th3);
        }
    }
}
