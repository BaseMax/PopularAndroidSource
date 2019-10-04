package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

public final class ae<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends w<? extends R>> f8426b;
    final h<? super Throwable, ? extends w<? extends R>> c;
    final Callable<? extends w<? extends R>> d;

    static final class a<T, R> extends AtomicReference<c> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super R> f8427a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends w<? extends R>> f8428b;
        final h<? super Throwable, ? extends w<? extends R>> c;
        final Callable<? extends w<? extends R>> d;
        c e;

        /* renamed from: io.reactivex.internal.operators.maybe.ae$a$a  reason: collision with other inner class name */
        final class C0197a implements t<R> {
            C0197a() {
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(a.this, cVar);
            }

            public final void onSuccess(R r) {
                a.this.f8427a.onSuccess(r);
            }

            public final void onError(Throwable th) {
                a.this.f8427a.onError(th);
            }

            public final void onComplete() {
                a.this.f8427a.onComplete();
            }
        }

        a(t<? super R> tVar, h<? super T, ? extends w<? extends R>> hVar, h<? super Throwable, ? extends w<? extends R>> hVar2, Callable<? extends w<? extends R>> callable) {
            this.f8427a = tVar;
            this.f8428b = hVar;
            this.c = hVar2;
            this.d = callable;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
            this.e.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.e, cVar)) {
                this.e = cVar;
                this.f8427a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                ((w) b.requireNonNull(this.f8428b.apply(t), "The onSuccessMapper returned a null MaybeSource")).subscribe(new C0197a());
            } catch (Exception e2) {
                io.reactivex.c.b.throwIfFatal(e2);
                this.f8427a.onError(e2);
            }
        }

        public final void onError(Throwable th) {
            try {
                ((w) b.requireNonNull(this.c.apply(th), "The onErrorMapper returned a null MaybeSource")).subscribe(new C0197a());
            } catch (Exception e2) {
                io.reactivex.c.b.throwIfFatal(e2);
                this.f8427a.onError(new io.reactivex.c.a(th, e2));
            }
        }

        public final void onComplete() {
            try {
                ((w) b.requireNonNull(this.d.call(), "The onCompleteSupplier returned a null MaybeSource")).subscribe(new C0197a());
            } catch (Exception e2) {
                io.reactivex.c.b.throwIfFatal(e2);
                this.f8427a.onError(e2);
            }
        }
    }

    public ae(w<T> wVar, h<? super T, ? extends w<? extends R>> hVar, h<? super Throwable, ? extends w<? extends R>> hVar2, Callable<? extends w<? extends R>> callable) {
        super(wVar);
        this.f8426b = hVar;
        this.c = hVar2;
        this.d = callable;
    }

    public final void subscribeActual(t<? super R> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8426b, this.c, this.d));
    }
}
