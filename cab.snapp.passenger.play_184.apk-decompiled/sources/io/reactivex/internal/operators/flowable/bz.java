package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import org.b.c;
import org.b.d;

public final class bz<T> extends a<T, T> {
    final long c;

    static final class a<T> extends AtomicLong implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8071a;

        /* renamed from: b  reason: collision with root package name */
        long f8072b;
        d c;

        a(c<? super T> cVar, long j) {
            this.f8071a = cVar;
            this.f8072b = j;
            lazySet(j);
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                if (this.f8072b == 0) {
                    dVar.cancel();
                    EmptySubscription.complete(this.f8071a);
                    return;
                }
                this.c = dVar;
                this.f8071a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            long j = this.f8072b;
            if (j > 0) {
                long j2 = j - 1;
                this.f8072b = j2;
                this.f8071a.onNext(t);
                if (j2 == 0) {
                    this.c.cancel();
                    this.f8071a.onComplete();
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.f8072b > 0) {
                this.f8072b = 0;
                this.f8071a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (this.f8072b > 0) {
                this.f8072b = 0;
                this.f8071a.onComplete();
            }
        }

        public final void request(long j) {
            long j2;
            long j3;
            if (SubscriptionHelper.validate(j)) {
                do {
                    j2 = get();
                    if (j2 != 0) {
                        j3 = j2 <= j ? j2 : j;
                    } else {
                        return;
                    }
                } while (!compareAndSet(j2, j2 - j3));
                this.c.request(j3);
            }
        }

        public final void cancel() {
            this.c.cancel();
        }
    }

    public bz(j<T> jVar, long j) {
        super(jVar);
        this.c = j;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
