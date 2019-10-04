package io.reactivex.internal.operators.a;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.d;

public final class s<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f6996a;

    static final class a<T> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final d f6997a;

        public final void onNext(T t) {
        }

        a(d dVar) {
            this.f6997a = dVar;
        }

        public final void onSubscribe(c cVar) {
            this.f6997a.onSubscribe(cVar);
        }

        public final void onError(Throwable th) {
            this.f6997a.onError(th);
        }

        public final void onComplete() {
            this.f6997a.onComplete();
        }
    }

    public s(ae<T> aeVar) {
        this.f6996a = aeVar;
    }

    public final void subscribeActual(d dVar) {
        this.f6996a.subscribe(new a(dVar));
    }
}
