package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;

public final class dh<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7411b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7412a;

        /* renamed from: b  reason: collision with root package name */
        long f7413b;
        c c;

        a(ag<? super T> agVar, long j) {
            this.f7412a = agVar;
            this.f7413b = j;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7412a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            long j = this.f7413b;
            if (j != 0) {
                this.f7413b = j - 1;
            } else {
                this.f7412a.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            this.f7412a.onError(th);
        }

        public final void onComplete() {
            this.f7412a.onComplete();
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }
    }

    public dh(ae<T> aeVar, long j) {
        super(aeVar);
        this.f7411b = j;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7411b));
    }
}
