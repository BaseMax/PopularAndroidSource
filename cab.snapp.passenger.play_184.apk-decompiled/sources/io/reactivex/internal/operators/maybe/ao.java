package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class ao<T> extends a<T, T> {

    static final class a<T> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8457a;

        /* renamed from: b  reason: collision with root package name */
        c f8458b;

        a(t<? super T> tVar) {
            this.f8457a = tVar;
        }

        public final void dispose() {
            this.f8458b.dispose();
            this.f8458b = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.f8458b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f8458b, cVar)) {
                this.f8458b = cVar;
                this.f8457a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8457a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f8457a.onError(th);
        }

        public final void onComplete() {
            this.f8457a.onComplete();
        }
    }

    public ao(w<T> wVar) {
        super(wVar);
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar));
    }
}
