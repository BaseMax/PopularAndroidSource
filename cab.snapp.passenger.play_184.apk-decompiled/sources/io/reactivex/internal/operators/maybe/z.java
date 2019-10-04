package io.reactivex.internal.operators.maybe;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;

public final class z<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f8632a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e.q<? super T> f8633b;

    static final class a<T> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8634a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.q<? super T> f8635b;
        c c;

        a(t<? super T> tVar, io.reactivex.e.q<? super T> qVar) {
            this.f8634a = tVar;
            this.f8635b = qVar;
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
                this.f8634a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                if (this.f8635b.test(t)) {
                    this.f8634a.onSuccess(t);
                } else {
                    this.f8634a.onComplete();
                }
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.f8634a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f8634a.onError(th);
        }
    }

    public z(ao<T> aoVar, io.reactivex.e.q<? super T> qVar) {
        this.f8632a = aoVar;
        this.f8633b = qVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8632a.subscribe(new a(tVar, this.f8633b));
    }
}
