package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class ah<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends w<? extends R>> f8442b;

    static final class a<T, R> extends AtomicReference<c> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super R> f8443a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends w<? extends R>> f8444b;
        c c;

        /* renamed from: io.reactivex.internal.operators.maybe.ah$a$a  reason: collision with other inner class name */
        final class C0198a implements t<R> {
            C0198a() {
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(a.this, cVar);
            }

            public final void onSuccess(R r) {
                a.this.f8443a.onSuccess(r);
            }

            public final void onError(Throwable th) {
                a.this.f8443a.onError(th);
            }

            public final void onComplete() {
                a.this.f8443a.onComplete();
            }
        }

        a(t<? super R> tVar, h<? super T, ? extends w<? extends R>> hVar) {
            this.f8443a = tVar;
            this.f8444b = hVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f8443a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                w wVar = (w) b.requireNonNull(this.f8444b.apply(t), "The mapper returned a null MaybeSource");
                if (!isDisposed()) {
                    wVar.subscribe(new C0198a());
                }
            } catch (Exception e) {
                io.reactivex.c.b.throwIfFatal(e);
                this.f8443a.onError(e);
            }
        }

        public final void onError(Throwable th) {
            this.f8443a.onError(th);
        }

        public final void onComplete() {
            this.f8443a.onComplete();
        }
    }

    public ah(w<T> wVar, h<? super T, ? extends w<? extends R>> hVar) {
        super(wVar);
        this.f8442b = hVar;
    }

    public final void subscribeActual(t<? super R> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8442b));
    }
}
