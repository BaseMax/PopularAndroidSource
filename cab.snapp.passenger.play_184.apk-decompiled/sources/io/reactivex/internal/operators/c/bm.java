package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;

public final class bm<T> extends a<T, T> {

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7214a;

        /* renamed from: b  reason: collision with root package name */
        c f7215b;

        public final void onNext(T t) {
        }

        a(ag<? super T> agVar) {
            this.f7214a = agVar;
        }

        public final void onSubscribe(c cVar) {
            this.f7215b = cVar;
            this.f7214a.onSubscribe(this);
        }

        public final void onError(Throwable th) {
            this.f7214a.onError(th);
        }

        public final void onComplete() {
            this.f7214a.onComplete();
        }

        public final void dispose() {
            this.f7215b.dispose();
        }

        public final boolean isDisposed() {
            return this.f7215b.isDisposed();
        }
    }

    public bm(ae<T> aeVar) {
        super(aeVar);
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar));
    }
}
