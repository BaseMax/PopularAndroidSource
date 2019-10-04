package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class ar<T> extends a<T, Boolean> {

    static final class a<T> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super Boolean> f8464a;

        /* renamed from: b  reason: collision with root package name */
        c f8465b;

        a(t<? super Boolean> tVar) {
            this.f8464a = tVar;
        }

        public final void dispose() {
            this.f8465b.dispose();
        }

        public final boolean isDisposed() {
            return this.f8465b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f8465b, cVar)) {
                this.f8465b = cVar;
                this.f8464a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8464a.onSuccess(Boolean.FALSE);
        }

        public final void onError(Throwable th) {
            this.f8464a.onError(th);
        }

        public final void onComplete() {
            this.f8464a.onSuccess(Boolean.TRUE);
        }
    }

    public ar(w<T> wVar) {
        super(wVar);
    }

    public final void subscribeActual(t<? super Boolean> tVar) {
        this.f8409a.subscribe(new a(tVar));
    }
}
