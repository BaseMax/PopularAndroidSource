package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import org.b.b;

public final class t<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final b<T> f6998a;

    static final class a<T> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final d f6999a;

        /* renamed from: b  reason: collision with root package name */
        org.b.d f7000b;

        public final void onNext(T t) {
        }

        a(d dVar) {
            this.f6999a = dVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.f7000b, dVar)) {
                this.f7000b = dVar;
                this.f6999a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onError(Throwable th) {
            this.f6999a.onError(th);
        }

        public final void onComplete() {
            this.f6999a.onComplete();
        }

        public final void dispose() {
            this.f7000b.cancel();
            this.f7000b = SubscriptionHelper.CANCELLED;
        }

        public final boolean isDisposed() {
            return this.f7000b == SubscriptionHelper.CANCELLED;
        }
    }

    public t(b<T> bVar) {
        this.f6998a = bVar;
    }

    public final void subscribeActual(d dVar) {
        this.f6998a.subscribe(new a(dVar));
    }
}
