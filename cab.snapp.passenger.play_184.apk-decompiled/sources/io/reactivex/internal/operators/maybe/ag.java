package io.reactivex.internal.operators.maybe;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class ag<T, R> extends q<R> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8436a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ao<? extends R>> f8437b;

    static final class a<T, R> extends AtomicReference<c> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super R> f8438a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ao<? extends R>> f8439b;

        a(t<? super R> tVar, h<? super T, ? extends ao<? extends R>> hVar) {
            this.f8438a = tVar;
            this.f8439b = hVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f8438a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                ((ao) io.reactivex.internal.a.b.requireNonNull(this.f8439b.apply(t), "The mapper returned a null SingleSource")).subscribe(new b(this, this.f8438a));
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f8438a.onError(th);
        }

        public final void onComplete() {
            this.f8438a.onComplete();
        }
    }

    static final class b<R> implements al<R> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<c> f8440a;

        /* renamed from: b  reason: collision with root package name */
        final t<? super R> f8441b;

        b(AtomicReference<c> atomicReference, t<? super R> tVar) {
            this.f8440a = atomicReference;
            this.f8441b = tVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.replace(this.f8440a, cVar);
        }

        public final void onSuccess(R r) {
            this.f8441b.onSuccess(r);
        }

        public final void onError(Throwable th) {
            this.f8441b.onError(th);
        }
    }

    public ag(w<T> wVar, h<? super T, ? extends ao<? extends R>> hVar) {
        this.f8436a = wVar;
        this.f8437b = hVar;
    }

    public final void subscribeActual(t<? super R> tVar) {
        this.f8436a.subscribe(new a(tVar, this.f8437b));
    }
}
