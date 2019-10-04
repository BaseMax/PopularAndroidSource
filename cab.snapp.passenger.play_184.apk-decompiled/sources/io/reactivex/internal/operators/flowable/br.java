package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.internal.b.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;

public final class br<T> extends io.reactivex.a implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f8052a;

    static final class a<T> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final d f8053a;

        /* renamed from: b  reason: collision with root package name */
        org.b.d f8054b;

        public final void onNext(T t) {
        }

        a(d dVar) {
            this.f8053a = dVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.f8054b, dVar)) {
                this.f8054b = dVar;
                this.f8053a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onError(Throwable th) {
            this.f8054b = SubscriptionHelper.CANCELLED;
            this.f8053a.onError(th);
        }

        public final void onComplete() {
            this.f8054b = SubscriptionHelper.CANCELLED;
            this.f8053a.onComplete();
        }

        public final void dispose() {
            this.f8054b.cancel();
            this.f8054b = SubscriptionHelper.CANCELLED;
        }

        public final boolean isDisposed() {
            return this.f8054b == SubscriptionHelper.CANCELLED;
        }
    }

    public br(j<T> jVar) {
        this.f8052a = jVar;
    }

    public final void subscribeActual(d dVar) {
        this.f8052a.subscribe(new a(dVar));
    }

    public final j<T> fuseToFlowable() {
        return io.reactivex.g.a.onAssembly(new bq(this.f8052a));
    }
}
