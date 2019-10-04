package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;

public final class cj<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super z<T>, ? extends ae<R>> f7301b;

    static final class a<T, R> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.j.b<T> f7302a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<c> f7303b;

        a(io.reactivex.j.b<T> bVar, AtomicReference<c> atomicReference) {
            this.f7302a = bVar;
            this.f7303b = atomicReference;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this.f7303b, cVar);
        }

        public final void onNext(T t) {
            this.f7302a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7302a.onError(th);
        }

        public final void onComplete() {
            this.f7302a.onComplete();
        }
    }

    static final class b<T, R> extends AtomicReference<c> implements ag<R>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7304a;

        /* renamed from: b  reason: collision with root package name */
        c f7305b;

        b(ag<? super R> agVar) {
            this.f7304a = agVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7305b, cVar)) {
                this.f7305b = cVar;
                this.f7304a.onSubscribe(this);
            }
        }

        public final void onNext(R r) {
            this.f7304a.onNext(r);
        }

        public final void onError(Throwable th) {
            DisposableHelper.dispose(this);
            this.f7304a.onError(th);
        }

        public final void onComplete() {
            DisposableHelper.dispose(this);
            this.f7304a.onComplete();
        }

        public final void dispose() {
            this.f7305b.dispose();
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return this.f7305b.isDisposed();
        }
    }

    public cj(ae<T> aeVar, h<? super z<T>, ? extends ae<R>> hVar) {
        super(aeVar);
        this.f7301b = hVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        io.reactivex.j.b create = io.reactivex.j.b.create();
        try {
            ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7301b.apply(create), "The selector returned a null ObservableSource");
            b bVar = new b(agVar);
            aeVar.subscribe(bVar);
            this.f7091a.subscribe(new a(create, bVar));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (ag<?>) agVar);
        }
    }
}
