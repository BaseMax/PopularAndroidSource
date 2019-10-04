package io.reactivex.internal.operators.flowable;

import io.reactivex.e.b;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.subscriptions.c;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.Callable;
import org.b.d;

public final class s<T, U> extends a<T, U> {
    final Callable<? extends U> c;
    final b<? super U, ? super T> d;

    static final class a<T, U> extends c<U> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final b<? super U, ? super T> f8383a;

        /* renamed from: b  reason: collision with root package name */
        final U f8384b;
        d c;
        boolean d;

        a(org.b.c<? super U> cVar, U u, b<? super U, ? super T> bVar) {
            super(cVar);
            this.f8383a = bVar;
            this.f8384b = u;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.h.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                try {
                    this.f8383a.accept(this.f8384b, t);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.c.cancel();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.h.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                complete(this.f8384b);
            }
        }

        public final void cancel() {
            super.cancel();
            this.c.cancel();
        }
    }

    public s(j<T> jVar, Callable<? extends U> callable, b<? super U, ? super T> bVar) {
        super(jVar);
        this.c = callable;
        this.d = bVar;
    }

    public final void subscribeActual(org.b.c<? super U> cVar) {
        try {
            this.f7923b.subscribe(new a(cVar, io.reactivex.internal.a.b.requireNonNull(this.c.call(), "The initial value supplied is null"), this.d));
        } catch (Throwable th) {
            EmptySubscription.error(th, cVar);
        }
    }
}
