package io.reactivex.internal.operators.flowable;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.b.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import org.b.d;

public final class ae<T> extends ai<Long> implements b<Long> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f7932a;

    static final class a implements c, o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Long> f7933a;

        /* renamed from: b  reason: collision with root package name */
        d f7934b;
        long c;

        a(al<? super Long> alVar) {
            this.f7933a = alVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f7934b, dVar)) {
                this.f7934b = dVar;
                this.f7933a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(Object obj) {
            this.c++;
        }

        public final void onError(Throwable th) {
            this.f7934b = SubscriptionHelper.CANCELLED;
            this.f7933a.onError(th);
        }

        public final void onComplete() {
            this.f7934b = SubscriptionHelper.CANCELLED;
            this.f7933a.onSuccess(Long.valueOf(this.c));
        }

        public final void dispose() {
            this.f7934b.cancel();
            this.f7934b = SubscriptionHelper.CANCELLED;
        }

        public final boolean isDisposed() {
            return this.f7934b == SubscriptionHelper.CANCELLED;
        }
    }

    public ae(j<T> jVar) {
        this.f7932a = jVar;
    }

    public final void subscribeActual(al<? super Long> alVar) {
        this.f7932a.subscribe(new a(alVar));
    }

    public final j<Long> fuseToFlowable() {
        return io.reactivex.g.a.onAssembly(new ad(this.f7932a));
    }
}
