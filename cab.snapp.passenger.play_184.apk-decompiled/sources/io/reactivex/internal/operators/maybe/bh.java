package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class bh<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w<U> f8519b;

    static final class a<T, U> extends AtomicReference<c> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8520a;

        /* renamed from: b  reason: collision with root package name */
        final C0202a<U> f8521b = new C0202a<>(this);

        /* renamed from: io.reactivex.internal.operators.maybe.bh$a$a  reason: collision with other inner class name */
        static final class C0202a<U> extends AtomicReference<c> implements t<U> {

            /* renamed from: a  reason: collision with root package name */
            final a<?, U> f8522a;

            C0202a(a<?, U> aVar) {
                this.f8522a = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onSuccess(Object obj) {
                this.f8522a.a();
            }

            public final void onError(Throwable th) {
                a<?, U> aVar = this.f8522a;
                if (DisposableHelper.dispose(aVar)) {
                    aVar.f8520a.onError(th);
                } else {
                    io.reactivex.g.a.onError(th);
                }
            }

            public final void onComplete() {
                this.f8522a.a();
            }
        }

        a(t<? super T> tVar) {
            this.f8520a = tVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f8521b);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            DisposableHelper.dispose(this.f8521b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8520a.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            DisposableHelper.dispose(this.f8521b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8520a.onError(th);
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            DisposableHelper.dispose(this.f8521b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8520a.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (DisposableHelper.dispose(this)) {
                this.f8520a.onComplete();
            }
        }
    }

    public bh(w<T> wVar, w<U> wVar2) {
        super(wVar);
        this.f8519b = wVar2;
    }

    public final void subscribeActual(t<? super T> tVar) {
        a aVar = new a(tVar);
        tVar.onSubscribe(aVar);
        this.f8519b.subscribe(aVar.f8521b);
        this.f8409a.subscribe(aVar);
    }
}
