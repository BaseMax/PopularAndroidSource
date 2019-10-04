package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.q;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class ba<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q<? super Throwable> f8489b;

    static final class a<T> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8490a;

        /* renamed from: b  reason: collision with root package name */
        final q<? super Throwable> f8491b;
        c c;

        a(t<? super T> tVar, q<? super Throwable> qVar) {
            this.f8490a = tVar;
            this.f8491b = qVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f8490a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8490a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            try {
                if (this.f8491b.test(th)) {
                    this.f8490a.onComplete();
                } else {
                    this.f8490a.onError(th);
                }
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                this.f8490a.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void onComplete() {
            this.f8490a.onComplete();
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }
    }

    public ba(w<T> wVar, q<? super Throwable> qVar) {
        super(wVar);
        this.f8489b = qVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8489b));
    }
}
