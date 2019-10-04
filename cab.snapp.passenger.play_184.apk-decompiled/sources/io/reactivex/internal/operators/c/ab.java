package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.b.d;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;

public final class ab<T> extends ai<Long> implements d<Long> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7094a;

    static final class a implements ag<Object>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Long> f7095a;

        /* renamed from: b  reason: collision with root package name */
        c f7096b;
        long c;

        a(al<? super Long> alVar) {
            this.f7095a = alVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7096b, cVar)) {
                this.f7096b = cVar;
                this.f7095a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.f7096b.dispose();
            this.f7096b = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.f7096b.isDisposed();
        }

        public final void onNext(Object obj) {
            this.c++;
        }

        public final void onError(Throwable th) {
            this.f7096b = DisposableHelper.DISPOSED;
            this.f7095a.onError(th);
        }

        public final void onComplete() {
            this.f7096b = DisposableHelper.DISPOSED;
            this.f7095a.onSuccess(Long.valueOf(this.c));
        }
    }

    public ab(ae<T> aeVar) {
        this.f7094a = aeVar;
    }

    public final void subscribeActual(al<? super Long> alVar) {
        this.f7094a.subscribe(new a(alVar));
    }

    public final z<Long> fuseToObservable() {
        return io.reactivex.g.a.onAssembly(new aa(this.f7094a));
    }
}
