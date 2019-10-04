package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ef<T, D> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends D> f7506a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super D, ? extends ae<? extends T>> f7507b;
    final g<? super D> c;
    final boolean d;

    static final class a<T, D> extends AtomicBoolean implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7508a;

        /* renamed from: b  reason: collision with root package name */
        final D f7509b;
        final g<? super D> c;
        final boolean d;
        c e;

        a(ag<? super T> agVar, D d2, g<? super D> gVar, boolean z) {
            this.f7508a = agVar;
            this.f7509b = d2;
            this.c = gVar;
            this.d = z;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.e, cVar)) {
                this.e = cVar;
                this.f7508a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f7508a.onNext(t);
        }

        public final void onError(Throwable th) {
            if (this.d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.c.accept(this.f7509b);
                    } catch (Throwable th2) {
                        b.throwIfFatal(th2);
                        th = new io.reactivex.c.a(th, th2);
                    }
                }
                this.e.dispose();
                this.f7508a.onError(th);
                return;
            }
            this.f7508a.onError(th);
            this.e.dispose();
            a();
        }

        public final void onComplete() {
            if (this.d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.c.accept(this.f7509b);
                    } catch (Throwable th) {
                        b.throwIfFatal(th);
                        this.f7508a.onError(th);
                        return;
                    }
                }
                this.e.dispose();
                this.f7508a.onComplete();
                return;
            }
            this.f7508a.onComplete();
            this.e.dispose();
            a();
        }

        public final void dispose() {
            a();
            this.e.dispose();
        }

        public final boolean isDisposed() {
            return get();
        }

        private void a() {
            if (compareAndSet(false, true)) {
                try {
                    this.c.accept(this.f7509b);
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
            }
        }
    }

    public ef(Callable<? extends D> callable, h<? super D, ? extends ae<? extends T>> hVar, g<? super D> gVar, boolean z) {
        this.f7506a = callable;
        this.f7507b = hVar;
        this.c = gVar;
        this.d = z;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        try {
            Object call = this.f7506a.call();
            try {
                ((ae) io.reactivex.internal.a.b.requireNonNull(this.f7507b.apply(call), "The sourceSupplier returned a null ObservableSource")).subscribe(new a(agVar, call, this.c, this.d));
            } catch (Throwable th) {
                b.throwIfFatal(th);
                EmptyDisposable.error((Throwable) new io.reactivex.c.a(th, th), (ag<?>) agVar);
            }
        } catch (Throwable th2) {
            b.throwIfFatal(th2);
            EmptyDisposable.error(th2, (ag<?>) agVar);
        }
    }
}
