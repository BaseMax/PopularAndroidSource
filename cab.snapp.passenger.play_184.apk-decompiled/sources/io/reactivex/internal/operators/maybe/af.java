package io.reactivex.internal.operators.maybe;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;

public final class af<T, R> extends ai<R> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8430a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ao<? extends R>> f8431b;

    static final class a<T, R> extends AtomicReference<c> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super R> f8432a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ao<? extends R>> f8433b;

        a(al<? super R> alVar, h<? super T, ? extends ao<? extends R>> hVar) {
            this.f8432a = alVar;
            this.f8433b = hVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f8432a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                ao aoVar = (ao) io.reactivex.internal.a.b.requireNonNull(this.f8433b.apply(t), "The mapper returned a null SingleSource");
                if (!isDisposed()) {
                    aoVar.subscribe(new b(this, this.f8432a));
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f8432a.onError(th);
        }

        public final void onComplete() {
            this.f8432a.onError(new NoSuchElementException());
        }
    }

    static final class b<R> implements al<R> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<c> f8434a;

        /* renamed from: b  reason: collision with root package name */
        final al<? super R> f8435b;

        b(AtomicReference<c> atomicReference, al<? super R> alVar) {
            this.f8434a = atomicReference;
            this.f8435b = alVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.replace(this.f8434a, cVar);
        }

        public final void onSuccess(R r) {
            this.f8435b.onSuccess(r);
        }

        public final void onError(Throwable th) {
            this.f8435b.onError(th);
        }
    }

    public af(w<T> wVar, h<? super T, ? extends ao<? extends R>> hVar) {
        this.f8430a = wVar;
        this.f8431b = hVar;
    }

    public final void subscribeActual(al<? super R> alVar) {
        this.f8430a.subscribe(new a(alVar, this.f8431b));
    }
}
