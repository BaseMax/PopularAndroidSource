package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.y;

public final class by<T> extends a<T, y<T>> {

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super y<T>> f7264a;

        /* renamed from: b  reason: collision with root package name */
        c f7265b;

        a(ag<? super y<T>> agVar) {
            this.f7264a = agVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7265b, cVar)) {
                this.f7265b = cVar;
                this.f7264a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.f7265b.dispose();
        }

        public final boolean isDisposed() {
            return this.f7265b.isDisposed();
        }

        public final void onNext(T t) {
            this.f7264a.onNext(y.createOnNext(t));
        }

        public final void onError(Throwable th) {
            this.f7264a.onNext(y.createOnError(th));
            this.f7264a.onComplete();
        }

        public final void onComplete() {
            this.f7264a.onNext(y.createOnComplete());
            this.f7264a.onComplete();
        }
    }

    public by(ae<T> aeVar) {
        super(aeVar);
    }

    public final void subscribeActual(ag<? super y<T>> agVar) {
        this.f7091a.subscribe(new a(agVar));
    }
}
