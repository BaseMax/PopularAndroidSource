package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class p<T> extends a<T, T> {

    static final class a<T> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        t<? super T> f8606a;

        /* renamed from: b  reason: collision with root package name */
        c f8607b;

        a(t<? super T> tVar) {
            this.f8606a = tVar;
        }

        public final void dispose() {
            this.f8606a = null;
            this.f8607b.dispose();
            this.f8607b = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.f8607b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f8607b, cVar)) {
                this.f8607b = cVar;
                this.f8606a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8607b = DisposableHelper.DISPOSED;
            t<? super T> tVar = this.f8606a;
            if (tVar != null) {
                this.f8606a = null;
                tVar.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            this.f8607b = DisposableHelper.DISPOSED;
            t<? super T> tVar = this.f8606a;
            if (tVar != null) {
                this.f8606a = null;
                tVar.onError(th);
            }
        }

        public final void onComplete() {
            this.f8607b = DisposableHelper.DISPOSED;
            t<? super T> tVar = this.f8606a;
            if (tVar != null) {
                this.f8606a = null;
                tVar.onComplete();
            }
        }
    }

    public p(w<T> wVar) {
        super(wVar);
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar));
    }
}
