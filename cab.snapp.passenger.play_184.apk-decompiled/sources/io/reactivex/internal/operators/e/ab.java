package io.reactivex.internal.operators.e;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class ab<T, R> extends q<R> {

    /* renamed from: a  reason: collision with root package name */
    final ao<? extends T> f7726a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends w<? extends R>> f7727b;

    static final class a<R> implements t<R> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<c> f7728a;

        /* renamed from: b  reason: collision with root package name */
        final t<? super R> f7729b;

        a(AtomicReference<c> atomicReference, t<? super R> tVar) {
            this.f7728a = atomicReference;
            this.f7729b = tVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.replace(this.f7728a, cVar);
        }

        public final void onSuccess(R r) {
            this.f7729b.onSuccess(r);
        }

        public final void onError(Throwable th) {
            this.f7729b.onError(th);
        }

        public final void onComplete() {
            this.f7729b.onComplete();
        }
    }

    static final class b<T, R> extends AtomicReference<c> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final t<? super R> f7730a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends w<? extends R>> f7731b;

        b(t<? super R> tVar, h<? super T, ? extends w<? extends R>> hVar) {
            this.f7730a = tVar;
            this.f7731b = hVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f7730a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                w wVar = (w) io.reactivex.internal.a.b.requireNonNull(this.f7731b.apply(t), "The mapper returned a null MaybeSource");
                if (!isDisposed()) {
                    wVar.subscribe(new a(this, this.f7730a));
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f7730a.onError(th);
        }
    }

    public ab(ao<? extends T> aoVar, h<? super T, ? extends w<? extends R>> hVar) {
        this.f7727b = hVar;
        this.f7726a = aoVar;
    }

    public final void subscribeActual(t<? super R> tVar) {
        this.f7726a.subscribe(new b(tVar, this.f7727b));
    }
}
