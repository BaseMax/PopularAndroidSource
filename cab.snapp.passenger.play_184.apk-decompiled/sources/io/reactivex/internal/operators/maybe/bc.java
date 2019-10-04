package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class bc<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super Throwable, ? extends T> f8497b;

    static final class a<T> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8498a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Throwable, ? extends T> f8499b;
        c c;

        a(t<? super T> tVar, h<? super Throwable, ? extends T> hVar) {
            this.f8498a = tVar;
            this.f8499b = hVar;
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f8498a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8498a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            try {
                this.f8498a.onSuccess(b.requireNonNull(this.f8499b.apply(th), "The valueSupplier returned a null value"));
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                this.f8498a.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void onComplete() {
            this.f8498a.onComplete();
        }
    }

    public bc(w<T> wVar, h<? super Throwable, ? extends T> hVar) {
        super(wVar);
        this.f8497b = hVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8497b));
    }
}
