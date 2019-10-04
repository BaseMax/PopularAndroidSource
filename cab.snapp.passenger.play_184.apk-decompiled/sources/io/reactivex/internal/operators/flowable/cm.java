package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import org.b.c;
import org.b.d;

public final class cm<T> extends a<T, T> {

    static final class a<T> extends AtomicLong implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8099a;

        /* renamed from: b  reason: collision with root package name */
        d f8100b;
        boolean c;

        a(c<? super T> cVar) {
            this.f8099a = cVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f8100b, dVar)) {
                this.f8100b = dVar;
                this.f8099a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.c) {
                if (get() != 0) {
                    this.f8099a.onNext(t);
                    io.reactivex.internal.util.c.produced(this, 1);
                    return;
                }
                onError(new io.reactivex.c.c("could not emit value due to lack of requests"));
            }
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.f8099a.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                this.f8099a.onComplete();
            }
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this, j);
            }
        }

        public final void cancel() {
            this.f8100b.cancel();
        }
    }

    public cm(j<T> jVar) {
        super(jVar);
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar));
    }
}
