package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EmptyComponent;
import io.reactivex.j;
import io.reactivex.o;
import org.b.c;
import org.b.d;

public final class am<T> extends a<T, T> {

    static final class a<T> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        c<? super T> f7963a;

        /* renamed from: b  reason: collision with root package name */
        d f7964b;

        a(c<? super T> cVar) {
            this.f7963a = cVar;
        }

        public final void request(long j) {
            this.f7964b.request(j);
        }

        public final void cancel() {
            d dVar = this.f7964b;
            this.f7964b = EmptyComponent.INSTANCE;
            this.f7963a = EmptyComponent.asSubscriber();
            dVar.cancel();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f7964b, dVar)) {
                this.f7964b = dVar;
                this.f7963a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f7963a.onNext(t);
        }

        public final void onError(Throwable th) {
            c<? super T> cVar = this.f7963a;
            this.f7964b = EmptyComponent.INSTANCE;
            this.f7963a = EmptyComponent.asSubscriber();
            cVar.onError(th);
        }

        public final void onComplete() {
            c<? super T> cVar = this.f7963a;
            this.f7964b = EmptyComponent.INSTANCE;
            this.f7963a = EmptyComponent.asSubscriber();
            cVar.onComplete();
        }
    }

    public am(j<T> jVar) {
        super(jVar);
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar));
    }
}
