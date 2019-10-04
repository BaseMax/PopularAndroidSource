package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;

public final class dr<T> extends a<T, T> {

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7447a;

        /* renamed from: b  reason: collision with root package name */
        c f7448b;
        T c;

        a(ag<? super T> agVar) {
            this.f7447a = agVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7448b, cVar)) {
                this.f7448b = cVar;
                this.f7447a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.c = t;
        }

        public final void onError(Throwable th) {
            this.c = null;
            this.f7447a.onError(th);
        }

        public final void dispose() {
            this.c = null;
            this.f7448b.dispose();
        }

        public final boolean isDisposed() {
            return this.f7448b.isDisposed();
        }

        public final void onComplete() {
            T t = this.c;
            if (t != null) {
                this.c = null;
                this.f7447a.onNext(t);
            }
            this.f7447a.onComplete();
        }
    }

    public dr(ae<T> aeVar) {
        super(aeVar);
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar));
    }
}
