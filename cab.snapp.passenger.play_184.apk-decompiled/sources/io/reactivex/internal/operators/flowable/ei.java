package io.reactivex.internal.operators.flowable;

import io.reactivex.c.b;
import io.reactivex.e.q;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import org.b.c;
import org.b.d;

public final class ei<T> extends a<T, T> {
    final q<? super T> c;

    static final class a<T> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8250a;

        /* renamed from: b  reason: collision with root package name */
        final q<? super T> f8251b;
        d c;
        boolean d;

        a(c<? super T> cVar, q<? super T> qVar) {
            this.f8250a = cVar;
            this.f8251b = qVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f8250a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                try {
                    if (!this.f8251b.test(t)) {
                        this.d = true;
                        this.c.cancel();
                        this.f8250a.onComplete();
                        return;
                    }
                    this.f8250a.onNext(t);
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    this.c.cancel();
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
            this.f8250a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f8250a.onComplete();
            }
        }

        public final void request(long j) {
            this.c.request(j);
        }

        public final void cancel() {
            this.c.cancel();
        }
    }

    public ei(j<T> jVar, q<? super T> qVar) {
        super(jVar);
        this.c = qVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
