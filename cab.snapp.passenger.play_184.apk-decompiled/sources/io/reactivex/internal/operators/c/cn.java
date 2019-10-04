package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.e.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;

public final class cn<T, R> extends ai<R> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7318a;

    /* renamed from: b  reason: collision with root package name */
    final R f7319b;
    final c<R, ? super T, R> c;

    static final class a<T, R> implements ag<T>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super R> f7320a;

        /* renamed from: b  reason: collision with root package name */
        final c<R, ? super T, R> f7321b;
        R c;
        io.reactivex.b.c d;

        a(al<? super R> alVar, c<R, ? super T, R> cVar, R r) {
            this.f7320a = alVar;
            this.c = r;
            this.f7321b = cVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f7320a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            R r = this.c;
            if (r != null) {
                try {
                    this.c = b.requireNonNull(this.f7321b.apply(r, t), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.d.dispose();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.c != null) {
                this.c = null;
                this.f7320a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            R r = this.c;
            if (r != null) {
                this.c = null;
                this.f7320a.onSuccess(r);
            }
        }

        public final void dispose() {
            this.d.dispose();
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }
    }

    public cn(ae<T> aeVar, R r, c<R, ? super T, R> cVar) {
        this.f7318a = aeVar;
        this.f7319b = r;
        this.c = cVar;
    }

    public final void subscribeActual(al<? super R> alVar) {
        this.f7318a.subscribe(new a(alVar, this.c, this.f7319b));
    }
}
