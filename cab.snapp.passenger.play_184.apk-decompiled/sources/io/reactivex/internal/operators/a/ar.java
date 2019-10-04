package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.d;
import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

public final class ar<R> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<R> f6945a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super R, ? extends g> f6946b;
    final io.reactivex.e.g<? super R> c;
    final boolean d;

    static final class a<R> extends AtomicReference<Object> implements c, d {

        /* renamed from: a  reason: collision with root package name */
        final d f6947a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.g<? super R> f6948b;
        final boolean c;
        c d;

        a(d dVar, R r, io.reactivex.e.g<? super R> gVar, boolean z) {
            super(r);
            this.f6947a = dVar;
            this.f6948b = gVar;
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
                    this.f6948b.accept(andSet);
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
                this.f6947a.onSubscribe(this);
            }
        }

        public final void onError(Throwable th) {
            this.d = DisposableHelper.DISPOSED;
            if (this.c) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f6948b.accept(andSet);
                    } catch (Throwable th2) {
                        b.throwIfFatal(th2);
                        th = new io.reactivex.c.a(th, th2);
                    }
                } else {
                    return;
                }
            }
            this.f6947a.onError(th);
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
                        this.f6948b.accept(andSet);
                    } catch (Throwable th) {
                        b.throwIfFatal(th);
                        this.f6947a.onError(th);
                    }
                }
                return;
            }
            this.f6947a.onComplete();
            if (!this.c) {
                a();
            }
        }
    }

    public ar(Callable<R> callable, h<? super R, ? extends g> hVar, io.reactivex.e.g<? super R> gVar, boolean z) {
        this.f6945a = callable;
        this.f6946b = hVar;
        this.c = gVar;
        this.d = z;
    }

    public final void subscribeActual(d dVar) {
        try {
            R call = this.f6945a.call();
            try {
                ((g) io.reactivex.internal.a.b.requireNonNull(this.f6946b.apply(call), "The completableFunction returned a null CompletableSource")).subscribe(new a(dVar, call, this.c, this.d));
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        } catch (Throwable th2) {
            b.throwIfFatal(th2);
            EmptyDisposable.error(th2, dVar);
        }
    }
}
