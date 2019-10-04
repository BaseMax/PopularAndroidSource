package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.i.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.TimeUnit;
import org.b.c;
import org.b.d;

public final class el<T> extends a<T, b<T>> {
    final ah c;
    final TimeUnit d;

    static final class a<T> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super b<T>> f8256a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f8257b;
        final ah c;
        d d;
        long e;

        a(c<? super b<T>> cVar, TimeUnit timeUnit, ah ahVar) {
            this.f8256a = cVar;
            this.c = ahVar;
            this.f8257b = timeUnit;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.e = this.c.now(this.f8257b);
                this.d = dVar;
                this.f8256a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            long now = this.c.now(this.f8257b);
            long j = this.e;
            this.e = now;
            this.f8256a.onNext(new b(t, now - j, this.f8257b));
        }

        public final void onError(Throwable th) {
            this.f8256a.onError(th);
        }

        public final void onComplete() {
            this.f8256a.onComplete();
        }

        public final void request(long j) {
            this.d.request(j);
        }

        public final void cancel() {
            this.d.cancel();
        }
    }

    public el(j<T> jVar, TimeUnit timeUnit, ah ahVar) {
        super(jVar);
        this.c = ahVar;
        this.d = timeUnit;
    }

    public final void subscribeActual(c<? super b<T>> cVar) {
        this.f7923b.subscribe(new a(cVar, this.d, this.c));
    }
}
