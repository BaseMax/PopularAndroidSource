package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.operators.flowable.dd;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.j;
import org.b.b;
import org.b.c;
import org.b.d;

public final class dh<T> extends a<T, T> {
    final h<? super j<Throwable>, ? extends b<?>> c;

    static final class a<T> extends dd.c<T, Throwable> {
        a(c<? super T> cVar, io.reactivex.h.a<Throwable> aVar, d dVar) {
            super(cVar, aVar, dVar);
        }

        public final void onError(Throwable th) {
            a(th);
        }

        public final void onComplete() {
            this.c.cancel();
            this.f8157a.onComplete();
        }
    }

    public dh(j<T> jVar, h<? super j<Throwable>, ? extends b<?>> hVar) {
        super(jVar);
        this.c = hVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        io.reactivex.k.d dVar = new io.reactivex.k.d(cVar);
        io.reactivex.h.a serialized = io.reactivex.h.c.create(8).toSerialized();
        try {
            b bVar = (b) io.reactivex.internal.a.b.requireNonNull(this.c.apply(serialized), "handler returned a null Publisher");
            dd.b bVar2 = new dd.b(this.f7923b);
            a aVar = new a(dVar, serialized, bVar2);
            bVar2.d = aVar;
            cVar.onSubscribe(aVar);
            bVar.subscribe(bVar2);
            bVar2.onNext(0);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
