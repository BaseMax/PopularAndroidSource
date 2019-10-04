package io.reactivex.internal.operators.flowable;

import io.reactivex.c.b;
import io.reactivex.e.q;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.subscriptions.c;
import io.reactivex.j;
import io.reactivex.o;
import org.b.d;

public final class i<T> extends a<T, Boolean> {
    final q<? super T> c;

    static final class a<T> extends c<Boolean> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final q<? super T> f8346a;

        /* renamed from: b  reason: collision with root package name */
        d f8347b;
        boolean c;

        a(org.b.c<? super Boolean> cVar, q<? super T> qVar) {
            super(cVar);
            this.f8346a = qVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f8347b, dVar)) {
                this.f8347b = dVar;
                this.h.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.c) {
                try {
                    if (this.f8346a.test(t)) {
                        this.c = true;
                        this.f8347b.cancel();
                        complete(Boolean.TRUE);
                    }
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    this.f8347b.cancel();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.h.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                complete(Boolean.FALSE);
            }
        }

        public final void cancel() {
            super.cancel();
            this.f8347b.cancel();
        }
    }

    public i(j<T> jVar, q<? super T> qVar) {
        super(jVar);
        this.c = qVar;
    }

    public final void subscribeActual(org.b.c<? super Boolean> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
