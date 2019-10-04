package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

public final class ax<T, U> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<U> f7792a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super U, ? extends ao<? extends T>> f7793b;
    final g<? super U> c;
    final boolean d;

    static final class a<T, U> extends AtomicReference<Object> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7794a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super U> f7795b;
        final boolean c;
        c d;

        a(al<? super T> alVar, U u, boolean z, g<? super U> gVar) {
            super(u);
            this.f7794a = alVar;
            this.c = z;
            this.f7795b = gVar;
        }

        public final void dispose() {
            this.d.dispose();
            this.d = DisposableHelper.DISPOSED;
            a();
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f7794a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.d = DisposableHelper.DISPOSED;
            if (this.c) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f7795b.accept(andSet);
                    } catch (Throwable th) {
                        b.throwIfFatal(th);
                        this.f7794a.onError(th);
                    }
                }
                return;
            }
            this.f7794a.onSuccess(t);
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
                        this.f7795b.accept(andSet);
                    } catch (Throwable th2) {
                        b.throwIfFatal(th2);
                        th = new io.reactivex.c.a(th, th2);
                    }
                } else {
                    return;
                }
            }
            this.f7794a.onError(th);
            if (!this.c) {
                a();
            }
        }

        private void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f7795b.accept(andSet);
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
            }
        }
    }

    public ax(Callable<U> callable, h<? super U, ? extends ao<? extends T>> hVar, g<? super U> gVar, boolean z) {
        this.f7792a = callable;
        this.f7793b = hVar;
        this.c = gVar;
        this.d = z;
    }

    public final void subscribeActual(al<? super T> alVar) {
        try {
            U call = this.f7792a.call();
            try {
                ((ao) io.reactivex.internal.a.b.requireNonNull(this.f7793b.apply(call), "The singleFunction returned a null SingleSource")).subscribe(new a(alVar, call, this.d, this.c));
                return;
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
            EmptyDisposable.error((Throwable) th, (al<?>) alVar);
            if (!this.d) {
                this.c.accept(call);
            }
        } catch (Throwable th2) {
            b.throwIfFatal(th2);
            EmptyDisposable.error(th2, (al<?>) alVar);
        }
    }
}
