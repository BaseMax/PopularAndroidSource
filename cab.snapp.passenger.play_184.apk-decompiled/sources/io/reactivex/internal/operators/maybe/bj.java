package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class bj<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w<U> f8527b;
    final w<? extends T> c;

    static final class a<T> extends AtomicReference<io.reactivex.b.c> implements t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8528a;

        a(t<? super T> tVar) {
            this.f8528a = tVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            this.f8528a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f8528a.onError(th);
        }

        public final void onComplete() {
            this.f8528a.onComplete();
        }
    }

    static final class b<T, U> extends AtomicReference<io.reactivex.b.c> implements io.reactivex.b.c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8529a;

        /* renamed from: b  reason: collision with root package name */
        final c<T, U> f8530b = new c<>(this);
        final w<? extends T> c;
        final a<T> d;

        b(t<? super T> tVar, w<? extends T> wVar) {
            this.f8529a = tVar;
            this.c = wVar;
            this.d = wVar != null ? new a<>(tVar) : null;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f8530b);
            a<T> aVar = this.d;
            if (aVar != null) {
                DisposableHelper.dispose(aVar);
            }
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((io.reactivex.b.c) get());
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            DisposableHelper.dispose(this.f8530b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8529a.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            DisposableHelper.dispose(this.f8530b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8529a.onError(th);
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            DisposableHelper.dispose(this.f8530b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8529a.onComplete();
            }
        }

        public final void otherError(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f8529a.onError(th);
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void otherComplete() {
            if (DisposableHelper.dispose(this)) {
                w<? extends T> wVar = this.c;
                if (wVar == null) {
                    this.f8529a.onError(new TimeoutException());
                    return;
                }
                wVar.subscribe(this.d);
            }
        }
    }

    static final class c<T, U> extends AtomicReference<io.reactivex.b.c> implements t<Object> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, U> f8531a;

        c(b<T, U> bVar) {
            this.f8531a = bVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(Object obj) {
            this.f8531a.otherComplete();
        }

        public final void onError(Throwable th) {
            this.f8531a.otherError(th);
        }

        public final void onComplete() {
            this.f8531a.otherComplete();
        }
    }

    public bj(w<T> wVar, w<U> wVar2, w<? extends T> wVar3) {
        super(wVar);
        this.f8527b = wVar2;
        this.c = wVar3;
    }

    public final void subscribeActual(t<? super T> tVar) {
        b bVar = new b(tVar, this.c);
        tVar.onSubscribe(bVar);
        this.f8527b.subscribe(bVar.f8530b);
        this.f8409a.subscribe(bVar);
    }
}
