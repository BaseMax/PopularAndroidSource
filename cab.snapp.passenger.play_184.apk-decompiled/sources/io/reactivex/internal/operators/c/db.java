package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

public final class db<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final c<R, ? super T, R> f7389b;
    final Callable<R> c;

    static final class a<T, R> implements ag<T>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7390a;

        /* renamed from: b  reason: collision with root package name */
        final c<R, ? super T, R> f7391b;
        R c;
        io.reactivex.b.c d;
        boolean e;

        a(ag<? super R> agVar, c<R, ? super T, R> cVar, R r) {
            this.f7390a = agVar;
            this.f7391b = cVar;
            this.c = r;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f7390a.onSubscribe(this);
                this.f7390a.onNext(this.c);
            }
        }

        public final void dispose() {
            this.d.dispose();
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        public final void onNext(T t) {
            if (!this.e) {
                try {
                    R requireNonNull = b.requireNonNull(this.f7391b.apply(this.c, t), "The accumulator returned a null value");
                    this.c = requireNonNull;
                    this.f7390a.onNext(requireNonNull);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.d.dispose();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.f7390a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f7390a.onComplete();
            }
        }
    }

    public db(ae<T> aeVar, Callable<R> callable, c<R, ? super T, R> cVar) {
        super(aeVar);
        this.f7389b = cVar;
        this.c = callable;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        try {
            this.f7091a.subscribe(new a(agVar, this.f7389b, b.requireNonNull(this.c.call(), "The seed supplied is null")));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (ag<?>) agVar);
        }
    }
}
