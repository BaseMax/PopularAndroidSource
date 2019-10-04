package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class o<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8600a;

    /* renamed from: b  reason: collision with root package name */
    final g f8601b;

    static final class a<T> implements t<T> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<c> f8602a;

        /* renamed from: b  reason: collision with root package name */
        final t<? super T> f8603b;

        a(AtomicReference<c> atomicReference, t<? super T> tVar) {
            this.f8602a = atomicReference;
            this.f8603b = tVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.replace(this.f8602a, cVar);
        }

        public final void onSuccess(T t) {
            this.f8603b.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f8603b.onError(th);
        }

        public final void onComplete() {
            this.f8603b.onComplete();
        }
    }

    static final class b<T> extends AtomicReference<c> implements c, d {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8604a;

        /* renamed from: b  reason: collision with root package name */
        final w<T> f8605b;

        b(t<? super T> tVar, w<T> wVar) {
            this.f8604a = tVar;
            this.f8605b = wVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f8604a.onSubscribe(this);
            }
        }

        public final void onError(Throwable th) {
            this.f8604a.onError(th);
        }

        public final void onComplete() {
            this.f8605b.subscribe(new a(this, this.f8604a));
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public o(w<T> wVar, g gVar) {
        this.f8600a = wVar;
        this.f8601b = gVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8601b.subscribe(new b(tVar, this.f8600a));
    }
}
