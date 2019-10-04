package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.subscriptions.c;
import io.reactivex.j;
import io.reactivex.o;
import org.b.d;

public final class ad<T> extends a<T, Long> {

    static final class a extends c<Long> implements o<Object> {

        /* renamed from: a  reason: collision with root package name */
        d f7930a;

        /* renamed from: b  reason: collision with root package name */
        long f7931b;

        a(org.b.c<? super Long> cVar) {
            super(cVar);
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f7930a, dVar)) {
                this.f7930a = dVar;
                this.h.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(Object obj) {
            this.f7931b++;
        }

        public final void onError(Throwable th) {
            this.h.onError(th);
        }

        public final void onComplete() {
            complete(Long.valueOf(this.f7931b));
        }

        public final void cancel() {
            super.cancel();
            this.f7930a.cancel();
        }
    }

    public ad(j<T> jVar) {
        super(jVar);
    }

    public final void subscribeActual(org.b.c<? super Long> cVar) {
        this.f7923b.subscribe(new a(cVar));
    }
}
