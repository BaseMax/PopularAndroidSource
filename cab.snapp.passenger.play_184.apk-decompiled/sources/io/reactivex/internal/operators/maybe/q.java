package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class q<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final g<? super T> f8608b;

    static final class a<T> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8609a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super T> f8610b;
        c c;

        a(t<? super T> tVar, g<? super T> gVar) {
            this.f8609a = tVar;
            this.f8610b = gVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f8609a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8609a.onSuccess(t);
            try {
                this.f8610b.accept(t);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f8609a.onError(th);
        }

        public final void onComplete() {
            this.f8609a.onComplete();
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }
    }

    public q(w<T> wVar, g<? super T> gVar) {
        super(wVar);
        this.f8608b = gVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8608b));
    }
}
