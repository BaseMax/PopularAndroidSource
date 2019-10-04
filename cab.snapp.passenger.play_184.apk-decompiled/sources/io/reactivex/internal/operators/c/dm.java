package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class dm<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ah f7428b;

    static final class a<T> extends AtomicReference<c> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7429a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<c> f7430b = new AtomicReference<>();

        a(ag<? super T> agVar) {
            this.f7429a = agVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this.f7430b, cVar);
        }

        public final void onNext(T t) {
            this.f7429a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7429a.onError(th);
        }

        public final void onComplete() {
            this.f7429a.onComplete();
        }

        public final void dispose() {
            DisposableHelper.dispose(this.f7430b);
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final a<T> f7432b;

        b(a<T> aVar) {
            this.f7432b = aVar;
        }

        public final void run() {
            dm.this.f7091a.subscribe(this.f7432b);
        }
    }

    public dm(ae<T> aeVar, ah ahVar) {
        super(aeVar);
        this.f7428b = ahVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        a aVar = new a(agVar);
        agVar.onSubscribe(aVar);
        DisposableHelper.setOnce(aVar, this.f7428b.scheduleDirect(new b(aVar)));
    }
}
