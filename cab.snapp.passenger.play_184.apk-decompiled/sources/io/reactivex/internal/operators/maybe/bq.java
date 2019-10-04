package io.reactivex.internal.operators.maybe;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class bq<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ah f8547b;

    static final class a<T> extends AtomicReference<c> implements c, t<T>, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8548a;

        /* renamed from: b  reason: collision with root package name */
        final ah f8549b;
        c c;

        a(t<? super T> tVar, ah ahVar) {
            this.f8548a = tVar;
            this.f8549b = ahVar;
        }

        public final void dispose() {
            c cVar = (c) getAndSet(DisposableHelper.DISPOSED);
            if (cVar != DisposableHelper.DISPOSED) {
                this.c = cVar;
                this.f8549b.scheduleDirect(this);
            }
        }

        public final void run() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f8548a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8548a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f8548a.onError(th);
        }

        public final void onComplete() {
            this.f8548a.onComplete();
        }
    }

    public bq(w<T> wVar, ah ahVar) {
        super(wVar);
        this.f8547b = ahVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8547b));
    }
}
