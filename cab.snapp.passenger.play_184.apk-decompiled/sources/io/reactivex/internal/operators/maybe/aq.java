package io.reactivex.internal.operators.maybe;

import io.reactivex.d;
import io.reactivex.internal.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.w;

public final class aq<T> extends io.reactivex.a implements c<T> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8461a;

    static final class a<T> implements io.reactivex.b.c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final d f8462a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.b.c f8463b;

        a(d dVar) {
            this.f8462a = dVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.f8463b, cVar)) {
                this.f8463b = cVar;
                this.f8462a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8463b = DisposableHelper.DISPOSED;
            this.f8462a.onComplete();
        }

        public final void onError(Throwable th) {
            this.f8463b = DisposableHelper.DISPOSED;
            this.f8462a.onError(th);
        }

        public final void onComplete() {
            this.f8463b = DisposableHelper.DISPOSED;
            this.f8462a.onComplete();
        }

        public final boolean isDisposed() {
            return this.f8463b.isDisposed();
        }

        public final void dispose() {
            this.f8463b.dispose();
            this.f8463b = DisposableHelper.DISPOSED;
        }
    }

    public aq(w<T> wVar) {
        this.f8461a = wVar;
    }

    public final void subscribeActual(d dVar) {
        this.f8461a.subscribe(new a(dVar));
    }

    public final q<T> fuseToMaybe() {
        return io.reactivex.g.a.onAssembly(new ap(this.f8461a));
    }
}
