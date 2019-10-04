package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

public final class br<T, D> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends D> f8550a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super D, ? extends w<? extends T>> f8551b;
    final g<? super D> c;
    final boolean d;

    static final class a<T, D> extends AtomicReference<Object> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8552a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super D> f8553b;
        final boolean c;
        c d;

        a(t<? super T> tVar, D d2, g<? super D> gVar, boolean z) {
            super(d2);
            this.f8552a = tVar;
            this.f8553b = gVar;
            this.c = z;
        }

        public final void dispose() {
            this.d.dispose();
            this.d = DisposableHelper.DISPOSED;
            a();
        }

        private void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f8553b.accept(andSet);
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
            }
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f8552a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.d = DisposableHelper.DISPOSED;
            if (this.c) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f8553b.accept(andSet);
                    } catch (Throwable th) {
                        b.throwIfFatal(th);
                        this.f8552a.onError(th);
                    }
                }
                return;
            }
            this.f8552a.onSuccess(t);
            if (!this.c) {
                a();
            }
        }

        public final void onError(Throwable th) {
            this.d = DisposableHelper.DISPOSED;
            if (this.c) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f8553b.accept(andSet);
                    } catch (Throwable th2) {
                        b.throwIfFatal(th2);
                        th = new io.reactivex.c.a(th, th2);
                    }
                } else {
                    return;
                }
            }
            this.f8552a.onError(th);
            if (!this.c) {
                a();
            }
        }

        public final void onComplete() {
            this.d = DisposableHelper.DISPOSED;
            if (this.c) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f8553b.accept(andSet);
                    } catch (Throwable th) {
                        b.throwIfFatal(th);
                        this.f8552a.onError(th);
                    }
                }
                return;
            }
            this.f8552a.onComplete();
            if (!this.c) {
                a();
            }
        }
    }

    public br(Callable<? extends D> callable, h<? super D, ? extends w<? extends T>> hVar, g<? super D> gVar, boolean z) {
        this.f8550a = callable;
        this.f8551b = hVar;
        this.c = gVar;
        this.d = z;
    }

    public final void subscribeActual(t<? super T> tVar) {
        try {
            Object call = this.f8550a.call();
            try {
                ((w) io.reactivex.internal.a.b.requireNonNull(this.f8551b.apply(call), "The sourceSupplier returned a null MaybeSource")).subscribe(new a(tVar, call, this.c, this.d));
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        } catch (Throwable th2) {
            b.throwIfFatal(th2);
            EmptyDisposable.error(th2, (t<?>) tVar);
        }
    }
}
