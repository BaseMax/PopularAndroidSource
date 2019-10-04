package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class av<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends R> f8471b;

    static final class a<T, R> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super R> f8472a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends R> f8473b;
        c c;

        a(t<? super R> tVar, h<? super T, ? extends R> hVar) {
            this.f8472a = tVar;
            this.f8473b = hVar;
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
                this.f8472a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                this.f8472a.onSuccess(b.requireNonNull(this.f8473b.apply(t), "The mapper returned a null item"));
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f8472a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f8472a.onError(th);
        }

        public final void onComplete() {
            this.f8472a.onComplete();
        }
    }

    public av(w<T> wVar, h<? super T, ? extends R> hVar) {
        super(wVar);
        this.f8471b = hVar;
    }

    public final void subscribeActual(t<? super R> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8471b));
    }
}
