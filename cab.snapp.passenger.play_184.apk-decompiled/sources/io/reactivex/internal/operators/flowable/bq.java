package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.b.g;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import org.b.c;
import org.b.d;

public final class bq<T> extends a<T, T> {

    static final class a<T> implements g<T>, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8050a;

        /* renamed from: b  reason: collision with root package name */
        d f8051b;

        public final void clear() {
        }

        public final boolean isEmpty() {
            return true;
        }

        public final void onNext(T t) {
        }

        public final T poll() {
            return null;
        }

        public final void request(long j) {
        }

        public final int requestFusion(int i) {
            return i & 2;
        }

        a(c<? super T> cVar) {
            this.f8050a = cVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f8051b, dVar)) {
                this.f8051b = dVar;
                this.f8050a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onError(Throwable th) {
            this.f8050a.onError(th);
        }

        public final void onComplete() {
            this.f8050a.onComplete();
        }

        public final boolean offer(T t) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        public final boolean offer(T t, T t2) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        public final void cancel() {
            this.f8051b.cancel();
        }
    }

    public bq(j<T> jVar) {
        super(jVar);
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar));
    }
}
