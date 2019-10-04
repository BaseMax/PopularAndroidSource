package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.t;
import org.b.b;
import org.b.d;

public final class bw<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final b<T> f8064a;

    static final class a<T> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8065a;

        /* renamed from: b  reason: collision with root package name */
        d f8066b;
        T c;

        a(t<? super T> tVar) {
            this.f8065a = tVar;
        }

        public final void dispose() {
            this.f8066b.cancel();
            this.f8066b = SubscriptionHelper.CANCELLED;
        }

        public final boolean isDisposed() {
            return this.f8066b == SubscriptionHelper.CANCELLED;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f8066b, dVar)) {
                this.f8066b = dVar;
                this.f8065a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            this.c = t;
        }

        public final void onError(Throwable th) {
            this.f8066b = SubscriptionHelper.CANCELLED;
            this.c = null;
            this.f8065a.onError(th);
        }

        public final void onComplete() {
            this.f8066b = SubscriptionHelper.CANCELLED;
            T t = this.c;
            if (t != null) {
                this.c = null;
                this.f8065a.onSuccess(t);
                return;
            }
            this.f8065a.onComplete();
        }
    }

    public bw(b<T> bVar) {
        this.f8064a = bVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8064a.subscribe(new a(tVar));
    }
}
