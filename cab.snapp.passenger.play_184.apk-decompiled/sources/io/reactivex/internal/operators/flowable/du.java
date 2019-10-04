package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.ArrayDeque;
import org.b.c;
import org.b.d;

public final class du<T> extends a<T, T> {
    final int c;

    static final class a<T> extends ArrayDeque<T> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8213a;

        /* renamed from: b  reason: collision with root package name */
        final int f8214b;
        d c;

        a(c<? super T> cVar, int i) {
            super(i);
            this.f8213a = cVar;
            this.f8214b = i;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f8213a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (this.f8214b == size()) {
                this.f8213a.onNext(poll());
            } else {
                this.c.request(1);
            }
            offer(t);
        }

        public final void onError(Throwable th) {
            this.f8213a.onError(th);
        }

        public final void onComplete() {
            this.f8213a.onComplete();
        }

        public final void request(long j) {
            this.c.request(j);
        }

        public final void cancel() {
            this.c.cancel();
        }
    }

    public du(j<T> jVar, int i) {
        super(jVar);
        this.c = i;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
