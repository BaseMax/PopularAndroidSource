package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class bf<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w<? extends T> f8508b;

    static final class a<T> extends AtomicReference<c> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8509a;

        /* renamed from: b  reason: collision with root package name */
        final w<? extends T> f8510b;

        /* renamed from: io.reactivex.internal.operators.maybe.bf$a$a  reason: collision with other inner class name */
        static final class C0200a<T> implements t<T> {

            /* renamed from: a  reason: collision with root package name */
            final t<? super T> f8511a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<c> f8512b;

            C0200a(t<? super T> tVar, AtomicReference<c> atomicReference) {
                this.f8511a = tVar;
                this.f8512b = atomicReference;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this.f8512b, cVar);
            }

            public final void onSuccess(T t) {
                this.f8511a.onSuccess(t);
            }

            public final void onError(Throwable th) {
                this.f8511a.onError(th);
            }

            public final void onComplete() {
                this.f8511a.onComplete();
            }
        }

        a(t<? super T> tVar, w<? extends T> wVar) {
            this.f8509a = tVar;
            this.f8510b = wVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f8509a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8509a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f8509a.onError(th);
        }

        public final void onComplete() {
            c cVar = (c) get();
            if (cVar != DisposableHelper.DISPOSED && compareAndSet(cVar, null)) {
                this.f8510b.subscribe(new C0200a(this.f8509a, this));
            }
        }
    }

    public bf(w<T> wVar, w<? extends T> wVar2) {
        super(wVar);
        this.f8508b = wVar2;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8508b));
    }
}
