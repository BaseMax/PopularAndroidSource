package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.q;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class y<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q<? super T> f8629b;

    static final class a<T> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8630a;

        /* renamed from: b  reason: collision with root package name */
        final q<? super T> f8631b;
        c c;

        a(t<? super T> tVar, q<? super T> qVar) {
            this.f8630a = tVar;
            this.f8631b = qVar;
        }

        public final void dispose() {
            c cVar = this.c;
            this.c = DisposableHelper.DISPOSED;
            cVar.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f8630a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                if (this.f8631b.test(t)) {
                    this.f8630a.onSuccess(t);
                } else {
                    this.f8630a.onComplete();
                }
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.f8630a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f8630a.onError(th);
        }

        public final void onComplete() {
            this.f8630a.onComplete();
        }
    }

    public y(w<T> wVar, q<? super T> qVar) {
        super(wVar);
        this.f8629b = qVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8629b));
    }
}
