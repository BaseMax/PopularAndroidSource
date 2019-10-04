package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;

public final class aa<T> extends a<T, Long> {

    static final class a implements ag<Object>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super Long> f7092a;

        /* renamed from: b  reason: collision with root package name */
        c f7093b;
        long c;

        a(ag<? super Long> agVar) {
            this.f7092a = agVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7093b, cVar)) {
                this.f7093b = cVar;
                this.f7092a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.f7093b.dispose();
        }

        public final boolean isDisposed() {
            return this.f7093b.isDisposed();
        }

        public final void onNext(Object obj) {
            this.c++;
        }

        public final void onError(Throwable th) {
            this.f7092a.onError(th);
        }

        public final void onComplete() {
            this.f7092a.onNext(Long.valueOf(this.c));
            this.f7092a.onComplete();
        }
    }

    public aa(ae<T> aeVar) {
        super(aeVar);
    }

    public final void subscribeActual(ag<? super Long> agVar) {
        this.f7091a.subscribe(new a(agVar));
    }
}
