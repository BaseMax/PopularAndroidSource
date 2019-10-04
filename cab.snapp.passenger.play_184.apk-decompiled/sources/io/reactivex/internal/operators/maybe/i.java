package io.reactivex.internal.operators.maybe;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class i<T> extends ai<Long> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8582a;

    static final class a implements c, t<Object> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Long> f8583a;

        /* renamed from: b  reason: collision with root package name */
        c f8584b;

        a(al<? super Long> alVar) {
            this.f8583a = alVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f8584b, cVar)) {
                this.f8584b = cVar;
                this.f8583a.onSubscribe(this);
            }
        }

        public final void onSuccess(Object obj) {
            this.f8584b = DisposableHelper.DISPOSED;
            this.f8583a.onSuccess(1L);
        }

        public final void onError(Throwable th) {
            this.f8584b = DisposableHelper.DISPOSED;
            this.f8583a.onError(th);
        }

        public final void onComplete() {
            this.f8584b = DisposableHelper.DISPOSED;
            this.f8583a.onSuccess(0L);
        }

        public final boolean isDisposed() {
            return this.f8584b.isDisposed();
        }

        public final void dispose() {
            this.f8584b.dispose();
            this.f8584b = DisposableHelper.DISPOSED;
        }
    }

    public i(w<T> wVar) {
        this.f8582a = wVar;
    }

    public final w<T> source() {
        return this.f8582a;
    }

    public final void subscribeActual(al<? super Long> alVar) {
        this.f8582a.subscribe(new a(alVar));
    }
}
