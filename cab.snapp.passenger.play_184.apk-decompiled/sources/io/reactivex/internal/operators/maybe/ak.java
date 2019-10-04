package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;

public final class ak<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final g f8448a;

    static final class a<T> implements c, d {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8449a;

        /* renamed from: b  reason: collision with root package name */
        c f8450b;

        a(t<? super T> tVar) {
            this.f8449a = tVar;
        }

        public final void dispose() {
            this.f8450b.dispose();
            this.f8450b = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.f8450b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f8450b, cVar)) {
                this.f8450b = cVar;
                this.f8449a.onSubscribe(this);
            }
        }

        public final void onComplete() {
            this.f8450b = DisposableHelper.DISPOSED;
            this.f8449a.onComplete();
        }

        public final void onError(Throwable th) {
            this.f8450b = DisposableHelper.DISPOSED;
            this.f8449a.onError(th);
        }
    }

    public ak(g gVar) {
        this.f8448a = gVar;
    }

    public final g source() {
        return this.f8448a;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8448a.subscribe(new a(tVar));
    }
}
