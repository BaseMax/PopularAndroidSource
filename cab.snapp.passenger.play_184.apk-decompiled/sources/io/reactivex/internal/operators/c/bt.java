package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;

public final class bt<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7252a;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f7253a;

        /* renamed from: b  reason: collision with root package name */
        c f7254b;
        T c;

        a(t<? super T> tVar) {
            this.f7253a = tVar;
        }

        public final void dispose() {
            this.f7254b.dispose();
            this.f7254b = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.f7254b == DisposableHelper.DISPOSED;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7254b, cVar)) {
                this.f7254b = cVar;
                this.f7253a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.c = t;
        }

        public final void onError(Throwable th) {
            this.f7254b = DisposableHelper.DISPOSED;
            this.c = null;
            this.f7253a.onError(th);
        }

        public final void onComplete() {
            this.f7254b = DisposableHelper.DISPOSED;
            T t = this.c;
            if (t != null) {
                this.c = null;
                this.f7253a.onSuccess(t);
                return;
            }
            this.f7253a.onComplete();
        }
    }

    public bt(ae<T> aeVar) {
        this.f7252a = aeVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f7252a.subscribe(new a(tVar));
    }
}
