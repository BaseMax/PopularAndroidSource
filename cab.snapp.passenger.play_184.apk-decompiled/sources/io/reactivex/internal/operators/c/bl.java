package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;

public final class bl<T> extends a<T, T> {

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7212a;

        /* renamed from: b  reason: collision with root package name */
        c f7213b;

        a(ag<? super T> agVar) {
            this.f7212a = agVar;
        }

        public final void dispose() {
            this.f7213b.dispose();
        }

        public final boolean isDisposed() {
            return this.f7213b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7213b, cVar)) {
                this.f7213b = cVar;
                this.f7212a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f7212a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7212a.onError(th);
        }

        public final void onComplete() {
            this.f7212a.onComplete();
        }
    }

    public bl(ae<T> aeVar) {
        super(aeVar);
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar));
    }
}
