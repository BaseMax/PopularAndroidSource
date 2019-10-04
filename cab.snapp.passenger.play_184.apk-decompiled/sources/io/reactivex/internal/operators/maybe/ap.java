package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class ap<T> extends a<T, T> {

    static final class a<T> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8459a;

        /* renamed from: b  reason: collision with root package name */
        c f8460b;

        a(t<? super T> tVar) {
            this.f8459a = tVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f8460b, cVar)) {
                this.f8460b = cVar;
                this.f8459a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8460b = DisposableHelper.DISPOSED;
            this.f8459a.onComplete();
        }

        public final void onError(Throwable th) {
            this.f8460b = DisposableHelper.DISPOSED;
            this.f8459a.onError(th);
        }

        public final void onComplete() {
            this.f8460b = DisposableHelper.DISPOSED;
            this.f8459a.onComplete();
        }

        public final boolean isDisposed() {
            return this.f8460b.isDisposed();
        }

        public final void dispose() {
            this.f8460b.dispose();
            this.f8460b = DisposableHelper.DISPOSED;
        }
    }

    public ap(w<T> wVar) {
        super(wVar);
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar));
    }
}
