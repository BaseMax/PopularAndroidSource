package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.e.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class s<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final b<? super T, ? super Throwable> f8614b;

    static final class a<T> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8615a;

        /* renamed from: b  reason: collision with root package name */
        final b<? super T, ? super Throwable> f8616b;
        c c;

        a(t<? super T> tVar, b<? super T, ? super Throwable> bVar) {
            this.f8615a = tVar;
            this.f8616b = bVar;
        }

        public final void dispose() {
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f8615a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.c = DisposableHelper.DISPOSED;
            try {
                this.f8616b.accept(t, null);
                this.f8615a.onSuccess(t);
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f8615a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.c = DisposableHelper.DISPOSED;
            try {
                this.f8616b.accept(null, th);
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                th = new io.reactivex.c.a(th, th2);
            }
            this.f8615a.onError(th);
        }

        public final void onComplete() {
            this.c = DisposableHelper.DISPOSED;
            try {
                this.f8616b.accept(null, null);
                this.f8615a.onComplete();
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f8615a.onError(th);
            }
        }
    }

    public s(w<T> wVar, b<? super T, ? super Throwable> bVar) {
        super(wVar);
        this.f8614b = bVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8614b));
    }
}
