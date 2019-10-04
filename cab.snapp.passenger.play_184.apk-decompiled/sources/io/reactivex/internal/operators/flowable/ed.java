package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.subscriptions.c;
import io.reactivex.j;
import io.reactivex.o;
import org.b.d;

public final class ed<T> extends a<T, T> {

    static final class a<T> extends c<T> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        d f8241a;

        a(org.b.c<? super T> cVar) {
            super(cVar);
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f8241a, dVar)) {
                this.f8241a = dVar;
                this.h.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            this.i = t;
        }

        public final void onError(Throwable th) {
            this.i = null;
            this.h.onError(th);
        }

        public final void onComplete() {
            Object obj = this.i;
            if (obj != null) {
                complete(obj);
            } else {
                this.h.onComplete();
            }
        }

        public final void cancel() {
            super.cancel();
            this.f8241a.cancel();
        }
    }

    public ed(j<T> jVar) {
        super(jVar);
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar));
    }
}
