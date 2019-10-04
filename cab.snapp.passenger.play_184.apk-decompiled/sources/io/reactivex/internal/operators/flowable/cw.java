package io.reactivex.internal.operators.flowable;

import io.reactivex.e.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import org.b.d;

public final class cw<T> extends a<T, T> {
    final c<T, T, T> c;

    static final class a<T> extends io.reactivex.internal.subscriptions.c<T> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<T, T, T> f8129a;

        /* renamed from: b  reason: collision with root package name */
        d f8130b;

        a(org.b.c<? super T> cVar, c<T, T, T> cVar2) {
            super(cVar);
            this.f8129a = cVar2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f8130b, dVar)) {
                this.f8130b = dVar;
                this.h.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (this.f8130b != SubscriptionHelper.CANCELLED) {
                Object obj = this.i;
                if (obj == null) {
                    this.i = t;
                    return;
                }
                try {
                    this.i = b.requireNonNull(this.f8129a.apply(obj, t), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.f8130b.cancel();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.f8130b == SubscriptionHelper.CANCELLED) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.f8130b = SubscriptionHelper.CANCELLED;
            this.h.onError(th);
        }

        public final void onComplete() {
            if (this.f8130b != SubscriptionHelper.CANCELLED) {
                this.f8130b = SubscriptionHelper.CANCELLED;
                Object obj = this.i;
                if (obj != null) {
                    complete(obj);
                } else {
                    this.h.onComplete();
                }
            }
        }

        public final void cancel() {
            super.cancel();
            this.f8130b.cancel();
            this.f8130b = SubscriptionHelper.CANCELLED;
        }
    }

    public cw(j<T> jVar, c<T, T, T> cVar) {
        super(jVar);
        this.c = cVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
