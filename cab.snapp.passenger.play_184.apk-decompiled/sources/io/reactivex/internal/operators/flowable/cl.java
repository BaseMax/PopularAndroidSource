package io.reactivex.internal.operators.flowable;

import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import org.b.c;
import org.b.d;

public final class cl<T> extends a<T, T> implements g<T> {
    final g<? super T> c;

    static final class a<T> extends AtomicLong implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8097a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super T> f8098b;
        d c;
        boolean d;

        a(c<? super T> cVar, g<? super T> gVar) {
            this.f8097a = cVar;
            this.f8098b = gVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f8097a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                if (get() != 0) {
                    this.f8097a.onNext(t);
                    io.reactivex.internal.util.c.produced(this, 1);
                    return;
                }
                try {
                    this.f8098b.accept(t);
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    cancel();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.f8097a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f8097a.onComplete();
            }
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this, j);
            }
        }

        public final void cancel() {
            this.c.cancel();
        }
    }

    public final void accept(T t) {
    }

    public cl(j<T> jVar) {
        super(jVar);
        this.c = this;
    }

    public cl(j<T> jVar, g<? super T> gVar) {
        super(jVar);
        this.c = gVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
