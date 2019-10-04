package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.a.b;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.subscriptions.c;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Collection;
import java.util.concurrent.Callable;
import org.b.d;

public final class ep<T, U extends Collection<? super T>> extends a<T, U> {
    final Callable<U> c;

    static final class a<T, U extends Collection<? super T>> extends c<U> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        d f8275a;

        a(org.b.c<? super U> cVar, U u) {
            super(cVar);
            this.i = u;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f8275a, dVar)) {
                this.f8275a = dVar;
                this.h.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            Collection collection = (Collection) this.i;
            if (collection != null) {
                collection.add(t);
            }
        }

        public final void onError(Throwable th) {
            this.i = null;
            this.h.onError(th);
        }

        public final void onComplete() {
            complete(this.i);
        }

        public final void cancel() {
            super.cancel();
            this.f8275a.cancel();
        }
    }

    public ep(j<T> jVar, Callable<U> callable) {
        super(jVar);
        this.c = callable;
    }

    public final void subscribeActual(org.b.c<? super U> cVar) {
        try {
            this.f7923b.subscribe(new a(cVar, (Collection) b.requireNonNull(this.c.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
