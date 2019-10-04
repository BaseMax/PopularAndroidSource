package io.reactivex.internal.operators.maybe;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;

public final class an<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f8454a;

    static final class a<T> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8455a;

        /* renamed from: b  reason: collision with root package name */
        c f8456b;

        a(t<? super T> tVar) {
            this.f8455a = tVar;
        }

        public final void dispose() {
            this.f8456b.dispose();
            this.f8456b = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.f8456b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f8456b, cVar)) {
                this.f8456b = cVar;
                this.f8455a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8456b = DisposableHelper.DISPOSED;
            this.f8455a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f8456b = DisposableHelper.DISPOSED;
            this.f8455a.onError(th);
        }
    }

    public an(ao<T> aoVar) {
        this.f8454a = aoVar;
    }

    public final ao<T> source() {
        return this.f8454a;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8454a.subscribe(new a(tVar));
    }
}
