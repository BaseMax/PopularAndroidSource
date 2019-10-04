package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import org.b.c;
import org.b.d;

public final class dt<T> extends a<T, T> {
    final long c;

    static final class a<T> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8211a;

        /* renamed from: b  reason: collision with root package name */
        long f8212b;
        d c;

        a(c<? super T> cVar, long j) {
            this.f8211a = cVar;
            this.f8212b = j;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                long j = this.f8212b;
                this.c = dVar;
                this.f8211a.onSubscribe(this);
                dVar.request(j);
            }
        }

        public final void onNext(T t) {
            long j = this.f8212b;
            if (j != 0) {
                this.f8212b = j - 1;
            } else {
                this.f8211a.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            this.f8211a.onError(th);
        }

        public final void onComplete() {
            this.f8211a.onComplete();
        }

        public final void request(long j) {
            this.c.request(j);
        }

        public final void cancel() {
            this.c.cancel();
        }
    }

    public dt(j<T> jVar, long j) {
        super(jVar);
        this.c = j;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
