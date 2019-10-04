package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;

public final class j extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6977a;

    static final class a implements c, d {

        /* renamed from: a  reason: collision with root package name */
        d f6978a;

        /* renamed from: b  reason: collision with root package name */
        c f6979b;

        a(d dVar) {
            this.f6978a = dVar;
        }

        public final void dispose() {
            this.f6978a = null;
            this.f6979b.dispose();
            this.f6979b = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.f6979b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f6979b, cVar)) {
                this.f6979b = cVar;
                this.f6978a.onSubscribe(this);
            }
        }

        public final void onError(Throwable th) {
            this.f6979b = DisposableHelper.DISPOSED;
            d dVar = this.f6978a;
            if (dVar != null) {
                this.f6978a = null;
                dVar.onError(th);
            }
        }

        public final void onComplete() {
            this.f6979b = DisposableHelper.DISPOSED;
            d dVar = this.f6978a;
            if (dVar != null) {
                this.f6978a = null;
                dVar.onComplete();
            }
        }
    }

    public j(g gVar) {
        this.f6977a = gVar;
    }

    public final void subscribeActual(d dVar) {
        this.f6977a.subscribe(new a(dVar));
    }
}
