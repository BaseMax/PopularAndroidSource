package io.reactivex.internal.operators.a;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.d;

public final class v<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7002a;

    static final class a<T> implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        final d f7003a;

        a(d dVar) {
            this.f7003a = dVar;
        }

        public final void onError(Throwable th) {
            this.f7003a.onError(th);
        }

        public final void onSubscribe(c cVar) {
            this.f7003a.onSubscribe(cVar);
        }

        public final void onSuccess(T t) {
            this.f7003a.onComplete();
        }
    }

    public v(ao<T> aoVar) {
        this.f7002a = aoVar;
    }

    public final void subscribeActual(d dVar) {
        this.f7002a.subscribe(new a(dVar));
    }
}
