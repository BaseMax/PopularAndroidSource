package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class bb<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super Throwable, ? extends w<? extends T>> f8492b;
    final boolean c;

    static final class a<T> extends AtomicReference<c> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8493a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Throwable, ? extends w<? extends T>> f8494b;
        final boolean c;

        /* renamed from: io.reactivex.internal.operators.maybe.bb$a$a  reason: collision with other inner class name */
        static final class C0199a<T> implements t<T> {

            /* renamed from: a  reason: collision with root package name */
            final t<? super T> f8495a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<c> f8496b;

            C0199a(t<? super T> tVar, AtomicReference<c> atomicReference) {
                this.f8495a = tVar;
                this.f8496b = atomicReference;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this.f8496b, cVar);
            }

            public final void onSuccess(T t) {
                this.f8495a.onSuccess(t);
            }

            public final void onError(Throwable th) {
                this.f8495a.onError(th);
            }

            public final void onComplete() {
                this.f8495a.onComplete();
            }
        }

        a(t<? super T> tVar, h<? super Throwable, ? extends w<? extends T>> hVar, boolean z) {
            this.f8493a = tVar;
            this.f8494b = hVar;
            this.c = z;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f8493a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8493a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            if (this.c || (th instanceof Exception)) {
                try {
                    w wVar = (w) b.requireNonNull(this.f8494b.apply(th), "The resumeFunction returned a null MaybeSource");
                    DisposableHelper.replace(this, null);
                    wVar.subscribe(new C0199a(this.f8493a, this));
                } catch (Throwable th2) {
                    io.reactivex.c.b.throwIfFatal(th2);
                    this.f8493a.onError(new io.reactivex.c.a(th, th2));
                }
            } else {
                this.f8493a.onError(th);
            }
        }

        public final void onComplete() {
            this.f8493a.onComplete();
        }
    }

    public bb(w<T> wVar, h<? super Throwable, ? extends w<? extends T>> hVar, boolean z) {
        super(wVar);
        this.f8492b = hVar;
        this.c = z;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8492b, this.c));
    }
}
