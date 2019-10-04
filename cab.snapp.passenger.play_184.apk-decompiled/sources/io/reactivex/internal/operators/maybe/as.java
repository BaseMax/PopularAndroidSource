package io.reactivex.internal.operators.maybe;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.internal.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.w;

public final class as<T> extends ai<Boolean> implements c<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8466a;

    static final class a<T> implements io.reactivex.b.c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Boolean> f8467a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.b.c f8468b;

        a(al<? super Boolean> alVar) {
            this.f8467a = alVar;
        }

        public final void dispose() {
            this.f8468b.dispose();
            this.f8468b = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.f8468b.isDisposed();
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.f8468b, cVar)) {
                this.f8468b = cVar;
                this.f8467a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8468b = DisposableHelper.DISPOSED;
            this.f8467a.onSuccess(Boolean.FALSE);
        }

        public final void onError(Throwable th) {
            this.f8468b = DisposableHelper.DISPOSED;
            this.f8467a.onError(th);
        }

        public final void onComplete() {
            this.f8468b = DisposableHelper.DISPOSED;
            this.f8467a.onSuccess(Boolean.TRUE);
        }
    }

    public as(w<T> wVar) {
        this.f8466a = wVar;
    }

    public final w<T> source() {
        return this.f8466a;
    }

    public final q<Boolean> fuseToMaybe() {
        return io.reactivex.g.a.onAssembly(new ar(this.f8466a));
    }

    public final void subscribeActual(al<? super Boolean> alVar) {
        this.f8466a.subscribe(new a(alVar));
    }
}
