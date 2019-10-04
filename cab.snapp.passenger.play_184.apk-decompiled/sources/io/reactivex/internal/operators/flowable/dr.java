package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.internal.b.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.t;
import org.b.d;

public final class dr<T> extends q<T> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f8204a;

    static final class a<T> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8205a;

        /* renamed from: b  reason: collision with root package name */
        d f8206b;
        boolean c;
        T d;

        a(t<? super T> tVar) {
            this.f8205a = tVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f8206b, dVar)) {
                this.f8206b = dVar;
                this.f8205a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.c) {
                if (this.d != null) {
                    this.c = true;
                    this.f8206b.cancel();
                    this.f8206b = SubscriptionHelper.CANCELLED;
                    this.f8205a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.d = t;
            }
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.f8206b = SubscriptionHelper.CANCELLED;
            this.f8205a.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                this.f8206b = SubscriptionHelper.CANCELLED;
                T t = this.d;
                this.d = null;
                if (t == null) {
                    this.f8205a.onComplete();
                } else {
                    this.f8205a.onSuccess(t);
                }
            }
        }

        public final void dispose() {
            this.f8206b.cancel();
            this.f8206b = SubscriptionHelper.CANCELLED;
        }

        public final boolean isDisposed() {
            return this.f8206b == SubscriptionHelper.CANCELLED;
        }
    }

    public dr(j<T> jVar) {
        this.f8204a = jVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8204a.subscribe(new a(tVar));
    }

    public final j<T> fuseToFlowable() {
        return io.reactivex.g.a.onAssembly(new dq(this.f8204a, null, false));
    }
}
