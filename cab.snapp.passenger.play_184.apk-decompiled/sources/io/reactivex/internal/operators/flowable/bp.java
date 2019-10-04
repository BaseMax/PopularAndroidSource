package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import org.b.c;
import org.b.d;

public final class bp<T> extends a<T, T> {

    static final class a<T> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8048a;

        /* renamed from: b  reason: collision with root package name */
        d f8049b;

        a(c<? super T> cVar) {
            this.f8048a = cVar;
        }

        public final void request(long j) {
            this.f8049b.request(j);
        }

        public final void cancel() {
            this.f8049b.cancel();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f8049b, dVar)) {
                this.f8049b = dVar;
                this.f8048a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f8048a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f8048a.onError(th);
        }

        public final void onComplete() {
            this.f8048a.onComplete();
        }
    }

    public bp(j<T> jVar) {
        super(jVar);
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar));
    }
}
